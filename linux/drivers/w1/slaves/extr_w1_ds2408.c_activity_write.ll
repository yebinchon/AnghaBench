; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2408.c_activity_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2408.c_activity_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.w1_slave = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@W1_F29_RETRIES = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@W1_F29_FUNC_RESET_ACTIVITY_LATCHES = common dso_local global i32 0, align 4
@W1_F29_SUCCESS_CONFIRM_BYTE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @activity_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activity_write(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.w1_slave*, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.kobject*, %struct.kobject** %9, align 8
  %17 = call %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject* %16)
  store %struct.w1_slave* %17, %struct.w1_slave** %14, align 8
  %18 = load i32, i32* @W1_F29_RETRIES, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i64, i64* %13, align 8
  %20 = icmp ne i64 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %6
  %25 = load i32, i32* @EFAULT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %77

27:                                               ; preds = %21
  %28 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %29 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %34 = call i64 @w1_reset_select_slave(%struct.w1_slave* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %69

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %67, %37
  %39 = load i32, i32* %15, align 4
  %40 = add i32 %39, -1
  store i32 %40, i32* %15, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %44 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* @W1_F29_FUNC_RESET_ACTIVITY_LATCHES, align 4
  %47 = call i32 @w1_write_8(%struct.TYPE_4__* %45, i32 %46)
  %48 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %49 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call i64 @w1_read_8(%struct.TYPE_4__* %50)
  %52 = load i64, i64* @W1_F29_SUCCESS_CONFIRM_BYTE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %56 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  store i32 1, i32* %7, align 4
  br label %77

60:                                               ; preds = %42
  %61 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %62 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = call i64 @w1_reset_resume_command(%struct.TYPE_4__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %69

67:                                               ; preds = %60
  br label %38

68:                                               ; preds = %38
  br label %69

69:                                               ; preds = %68, %66, %36
  %70 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %71 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %69, %54, %24
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_8(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @w1_read_8(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @w1_reset_resume_command(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
