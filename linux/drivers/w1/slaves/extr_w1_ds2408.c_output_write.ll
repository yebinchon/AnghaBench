; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2408.c_output_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2408.c_output_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.w1_slave = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@W1_F29_RETRIES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"locking mutex for write_output\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"mutex locked\00", align 1
@W1_F29_FUNC_CHANN_ACCESS_WRITE = common dso_local global i8 0, align 1
@W1_F29_SUCCESS_CONFIRM_BYTE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"%s, mutex unlocked retries:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @output_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_write(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.w1_slave*, align 8
  %15 = alloca [3 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.kobject*, %struct.kobject** %9, align 8
  %19 = call %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject* %18)
  store %struct.w1_slave* %19, %struct.w1_slave** %14, align 8
  %20 = load i32, i32* @W1_F29_RETRIES, align 4
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %17, align 4
  %23 = load i64, i64* %13, align 8
  %24 = icmp ne i64 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %6
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %106

31:                                               ; preds = %25
  %32 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %33 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %32, i32 0, i32 0
  %34 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %36 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %41 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %40, i32 0, i32 0
  %42 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %44 = call i64 @w1_reset_select_slave(%struct.w1_slave* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %91

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %86, %47
  %49 = load i8, i8* @W1_F29_FUNC_CHANN_ACCESS_WRITE, align 1
  %50 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  store i8 %49, i8* %50, align 1
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %51, align 1
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  store i8 %52, i8* %53, align 1
  %54 = load i8*, i8** %11, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = xor i32 %56, -1
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 2
  store i8 %58, i8* %59, align 1
  %60 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %61 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %64 = call i32 @w1_write_block(%struct.TYPE_4__* %62, i8* %63, i32 3)
  %65 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %66 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = call i64 @w1_read_8(%struct.TYPE_4__* %67)
  %69 = load i64, i64* @W1_F29_SUCCESS_CONFIRM_BYTE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %48
  %72 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @optional_read_back_valid(%struct.w1_slave* %72, i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 1, i32* %17, align 4
  br label %91

78:                                               ; preds = %71, %48
  %79 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %80 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = call i64 @w1_reset_resume_command(%struct.TYPE_4__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %91

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %16, align 4
  %88 = add i32 %87, -1
  store i32 %88, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %48, label %90

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90, %84, %77, %46
  %92 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %93 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %98 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %97, i32 0, i32 0
  %99 = load i32, i32* %17, align 4
  %100 = icmp sgt i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %103 = load i32, i32* %16, align 4
  %104 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %102, i32 %103)
  %105 = load i32, i32* %17, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %91, %28
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_block(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i64 @w1_read_8(%struct.TYPE_4__*) #1

declare dso_local i64 @optional_read_back_valid(%struct.w1_slave*, i8 signext) #1

declare dso_local i64 @w1_reset_resume_command(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
