-- CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- CREATE TABLE student (
--     student_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL,
--     date_of_birth DATE NOT NULL
-- )

-- CREATE TABLE subject (
--     subject_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
--     subject TEXT NOT NULL,
--     description TEXT NOT NULL
-- )

-- CREATE TABLE teacher (
--     teacher_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL,
--     date_of_birth DATE NOT NULL,
--     email TEXT
-- )

-- ALTER TABLE student
-- ADD COLUMN email TEXT

-- CREATE TABLE course (
--     course_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
--     "name" TEXT NOT NULL,
--     description TEXT NOT NULL,
--     subject_id UUID REFERENCES subject(subject_id),
--     teacher_id UUID REFERENCES teacher(teacher_id)
-- )

-- CREATE TABLE enrollment (
--     course_id UUID REFERENCES course(course_id),
--     student_id UUID REFERENCES student(student_id),
--     enrollment_date DATE NOT NULL,
--     CONSTRAINT pk_enrollment PRIMARY KEY (course_id,student_id)
-- )

-- CREATE TABLE feedback (
--     student_id UUID REFERENCES student(student_id),
--     rating SMALLINT,
--     feedback text
-- )

-- ALTER TABLE course
-- ADD COLUMN feedback feedback[]

-- INSERT INTO student (first_name,last_name,email,date_of_birth) 
-- VALUES('Bass','Zaza','bassza@gmail.com','1999-03-19'::DATE);

-- INSERT INTO teacher (first_name,last_name,email,date_of_birth) 
-- VALUES('Popy','Zaza','popyza@gmail.com','1999-03-18'::DATE);

-- INSERT INTO subject (subject,description) 
-- VALUES('Rarnsart','This subject is appropriate only with whore');

-- DELETE FROM subject WHERE subject = 'Rarnsart';

-- INSERT INTO course ("name",description) 
-- VALUES('Rarnsart Zero to Mastery','If you take this course, you can be the greatest whore.');

-- INSERT INTO course ("name",description) 
-- VALUES('Radsart Zero to Mastery','If you take this course, you can be the greatest bitch.');

-- ALTER TABLE course ALTER COLUMN subject_id SET NOT NULL;
-- ALTER TABLE course ALTER COLUMN teacher_id SET NOT NULL;

-- UPDATE course 
-- SET subject_id = 'bdedcc68-b699-46a9-8566-09d0fdab6931',
--     teacher_id = '667d7f16-b42c-408d-a70a-be2f35cb8f51'
-- WHERE subject_id IS NULL;

-- INSERT INTO enrollment (student_id,course_id,enrollment_date)
-- VALUES ('c48ee43d-dc88-42c0-b9bf-cc18b1099d64','6fdc6483-aeb1-4288-bb98-86a2d558105f',NOW()::DATE);

-- UPDATE course
-- SET feedback = array_append(
--     feedback,
--     ROW('c48ee43d-dc88-42c0-b9bf-cc18b1099d64',9,'Best course ever')::feedback)
-- WHERE course_id = '6fdc6483-aeb1-4288-bb98-86a2d558105f' 

-- CREATE TABLE feedback (
--     student_id UUID NOT NULL REFERENCES student(student_id),
--     course_id UUID NOT NULL REFERENCES course(course_id),
--     feedback TEXT,
--     rating SMALLINT,
--     CONSTRAINT pk_feedback PRIMARY KEY (student_id,course_id)
-- )

-- INSERT INTO feedback (student_id,course_id,feedback,rating)
-- VALUES ('c48ee43d-dc88-42c0-b9bf-cc18b1099d64','6fdc6483-aeb1-4288-bb98-86a2d558105f','Best course ever',10)









