; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_cpi_sys.c_sclp_cpi_set_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_cpi_sys.c_sclp_cpi_set_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"system_name\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"sysplex_name\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"system_type\00", align 1
@sclp_cpi_mutex = common dso_local global i32 0, align 4
@system_name = common dso_local global i32 0, align 4
@sysplex_name = common dso_local global i32 0, align 4
@system_type = common dso_local global i32 0, align 4
@system_level = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_cpi_set_data(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @check_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %5, align 4
  br label %46

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @check_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %46

24:                                               ; preds = %17
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @check_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %46

31:                                               ; preds = %24
  %32 = call i32 @mutex_lock(i32* @sclp_cpi_mutex)
  %33 = load i32, i32* @system_name, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @set_string(i32 %33, i8* %34)
  %36 = load i32, i32* @sysplex_name, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @set_string(i32 %36, i8* %37)
  %39 = load i32, i32* @system_type, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @set_string(i32 %39, i8* %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* @system_level, align 4
  %43 = call i32 (...) @cpi_req()
  store i32 %43, i32* %10, align 4
  %44 = call i32 @mutex_unlock(i32* @sclp_cpi_mutex)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %31, %29, %22, %15
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @check_string(i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_string(i32, i8*) #1

declare dso_local i32 @cpi_req(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
