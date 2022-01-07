; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_polarity_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_polarity_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pwm_export = type { i32, %struct.pwm_device* }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@PWM_POLARITY_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"inversed\00", align 1
@PWM_POLARITY_INVERSED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @polarity_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @polarity_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pwm_export*, align 8
  %11 = alloca %struct.pwm_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pwm_state, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.pwm_export* @child_to_pwm_export(%struct.device* %15)
  store %struct.pwm_export* %16, %struct.pwm_export** %10, align 8
  %17 = load %struct.pwm_export*, %struct.pwm_export** %10, align 8
  %18 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %17, i32 0, i32 1
  %19 = load %struct.pwm_device*, %struct.pwm_device** %18, align 8
  store %struct.pwm_device* %19, %struct.pwm_device** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @sysfs_streq(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @PWM_POLARITY_NORMAL, align 4
  store i32 %24, i32* %12, align 4
  br label %35

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @sysfs_streq(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  store i32 %30, i32* %12, align 4
  br label %34

31:                                               ; preds = %25
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %56

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.pwm_export*, %struct.pwm_export** %10, align 8
  %37 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.pwm_device*, %struct.pwm_device** %11, align 8
  %40 = call i32 @pwm_get_state(%struct.pwm_device* %39, %struct.pwm_state* %13)
  %41 = load i32, i32* %12, align 4
  %42 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %13, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.pwm_device*, %struct.pwm_device** %11, align 8
  %44 = call i32 @pwm_apply_state(%struct.pwm_device* %43, %struct.pwm_state* %13)
  store i32 %44, i32* %14, align 4
  %45 = load %struct.pwm_export*, %struct.pwm_export** %10, align 8
  %46 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = sext i32 %48 to i64
  br label %54

52:                                               ; preds = %35
  %53 = load i64, i64* %9, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %54, %31
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local %struct.pwm_export* @child_to_pwm_export(%struct.device*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pwm_get_state(%struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i32 @pwm_apply_state(%struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
