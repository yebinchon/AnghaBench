; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_char.c_tapechar_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_char.c_tapechar_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.tape_device* }
%struct.tape_device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"TCHAR:open: %i:%i\0A\00", align 1
@tapechar_major = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@TAPE_MINORS_PER_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"TCHAR:open: tape_find_device() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tapechar_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tapechar_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.tape_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call i32 @file_inode(%struct.file* %9)
  %11 = call i64 @imajor(i32 %10)
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call i32 @file_inode(%struct.file* %12)
  %14 = call i32 @iminor(i32 %13)
  %15 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %14)
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call i32 @file_inode(%struct.file* %16)
  %18 = call i64 @imajor(i32 %17)
  %19 = load i64, i64* @tapechar_major, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %56

24:                                               ; preds = %2
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = call i32 @file_inode(%struct.file* %25)
  %27 = call i32 @iminor(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @TAPE_MINORS_PER_DEV, align 4
  %30 = sdiv i32 %28, %29
  %31 = call %struct.tape_device* @tape_find_device(i32 %30)
  store %struct.tape_device* %31, %struct.tape_device** %6, align 8
  %32 = load %struct.tape_device*, %struct.tape_device** %6, align 8
  %33 = call i64 @IS_ERR(%struct.tape_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.tape_device*, %struct.tape_device** %6, align 8
  %38 = call i32 @PTR_ERR(%struct.tape_device* %37)
  store i32 %38, i32* %3, align 4
  br label %56

39:                                               ; preds = %24
  %40 = load %struct.tape_device*, %struct.tape_device** %6, align 8
  %41 = call i32 @tape_open(%struct.tape_device* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.tape_device*, %struct.tape_device** %6, align 8
  %46 = load %struct.file*, %struct.file** %5, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  store %struct.tape_device* %45, %struct.tape_device** %47, align 8
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = load %struct.file*, %struct.file** %5, align 8
  %50 = call i32 @stream_open(%struct.inode* %48, %struct.file* %49)
  br label %54

51:                                               ; preds = %39
  %52 = load %struct.tape_device*, %struct.tape_device** %6, align 8
  %53 = call i32 @tape_put_device(%struct.tape_device* %52)
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %35, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @DBF_EVENT(i32, i8*, ...) #1

declare dso_local i64 @imajor(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @iminor(i32) #1

declare dso_local %struct.tape_device* @tape_find_device(i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_device*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_device*) #1

declare dso_local i32 @tape_open(%struct.tape_device*) #1

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @tape_put_device(%struct.tape_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
