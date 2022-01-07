; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_pwm_unexport_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_pwm_unexport_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pwm_device = type { i32, i32 }

@PWMF_EXPORTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@pwm_unexport_match = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"UNEXPORT=pwm%u\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.pwm_device*)* @pwm_unexport_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_unexport_child(%struct.device* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca [2 x i8*], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %8 = load i32, i32* @PWMF_EXPORTED, align 4
  %9 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %10 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %9, i32 0, i32 1
  %11 = call i32 @test_and_clear_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %19 = load i32, i32* @pwm_unexport_match, align 4
  %20 = call %struct.device* @device_find_child(%struct.device* %17, %struct.pwm_device* %18, i32 %19)
  store %struct.device* %20, %struct.device** %6, align 8
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = icmp ne %struct.device* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %48

26:                                               ; preds = %16
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %29 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @kasprintf(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %31, i8** %32, align 16
  %33 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  store i8* null, i8** %33, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* @KOBJ_CHANGE, align 4
  %37 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %38 = call i32 @kobject_uevent_env(i32* %35, i32 %36, i8** %37)
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %40 = load i8*, i8** %39, align 16
  %41 = call i32 @kfree(i8* %40)
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @put_device(%struct.device* %42)
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @device_unregister(%struct.device* %44)
  %46 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %47 = call i32 @pwm_put(%struct.pwm_device* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %26, %23, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local %struct.device* @device_find_child(%struct.device*, %struct.pwm_device*, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

declare dso_local i32 @pwm_put(%struct.pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
