; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2408.c_status_control_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2408.c_status_control_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.w1_slave = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@W1_F29_RETRIES = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@W1_F29_FUNC_WRITE_COND_SEARCH_REG = common dso_local global i8 0, align 1
@W1_F29_REG_CONTROL_AND_STATUS = common dso_local global i8 0, align 1
@W1_F29_FUNC_READ_PIO_REGS = common dso_local global i8 0, align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @status_control_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_control_write(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.w1_slave*, align 8
  %15 = alloca [4 x i8], align 1
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.kobject*, %struct.kobject** %9, align 8
  %18 = call %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject* %17)
  store %struct.w1_slave* %18, %struct.w1_slave** %14, align 8
  %19 = load i32, i32* @W1_F29_RETRIES, align 4
  store i32 %19, i32* %16, align 4
  %20 = load i64, i64* %13, align 8
  %21 = icmp ne i64 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %6
  %26 = load i32, i32* @EFAULT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %99

28:                                               ; preds = %22
  %29 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %30 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %35 = call i64 @w1_reset_select_slave(%struct.w1_slave* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %91

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %89, %38
  %40 = load i32, i32* %16, align 4
  %41 = add i32 %40, -1
  store i32 %41, i32* %16, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %90

43:                                               ; preds = %39
  %44 = load i8, i8* @W1_F29_FUNC_WRITE_COND_SEARCH_REG, align 1
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  store i8 %44, i8* %45, align 1
  %46 = load i8, i8* @W1_F29_REG_CONTROL_AND_STATUS, align 1
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 1
  store i8 %46, i8* %47, align 1
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 2
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %11, align 8
  %50 = load i8, i8* %49, align 1
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 3
  store i8 %50, i8* %51, align 1
  %52 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %53 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %56 = call i32 @w1_write_block(%struct.TYPE_4__* %54, i8* %55, i32 4)
  %57 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %58 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call i64 @w1_reset_resume_command(%struct.TYPE_4__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %43
  br label %91

63:                                               ; preds = %43
  %64 = load i8, i8* @W1_F29_FUNC_READ_PIO_REGS, align 1
  %65 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  store i8 %64, i8* %65, align 1
  %66 = load i8, i8* @W1_F29_REG_CONTROL_AND_STATUS, align 1
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 1
  store i8 %66, i8* %67, align 1
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 2
  store i8 0, i8* %68, align 1
  %69 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %70 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %73 = call i32 @w1_write_block(%struct.TYPE_4__* %71, i8* %72, i32 3)
  %74 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %75 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = call signext i8 @w1_read_8(%struct.TYPE_4__* %76)
  %78 = sext i8 %77 to i32
  %79 = load i8*, i8** %11, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %63
  %84 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %85 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  store i32 1, i32* %7, align 4
  br label %99

89:                                               ; preds = %63
  br label %39

90:                                               ; preds = %39
  br label %91

91:                                               ; preds = %90, %62, %37
  %92 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %93 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %91, %83, %25
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_block(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i64 @w1_reset_resume_command(%struct.TYPE_4__*) #1

declare dso_local signext i8 @w1_read_8(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
