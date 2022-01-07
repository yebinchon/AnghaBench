; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_pwmchip_sysfs_unexport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_pwmchip_sysfs_unexport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32, %struct.pwm_device* }
%struct.pwm_device = type { i32 }
%struct.device = type { i32 }

@pwm_class = common dso_local global i32 0, align 4
@pwmchip_sysfs_match = common dso_local global i32 0, align 4
@PWMF_EXPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwmchip_sysfs_unexport(%struct.pwm_chip* %0) #0 {
  %2 = alloca %struct.pwm_chip*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_device*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %2, align 8
  %6 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %7 = load i32, i32* @pwmchip_sysfs_match, align 4
  %8 = call %struct.device* @class_find_device(i32* @pwm_class, i32* null, %struct.pwm_chip* %6, i32 %7)
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = icmp ne %struct.device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %44

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %36, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %16 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %21 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %20, i32 0, i32 1
  %22 = load %struct.pwm_device*, %struct.pwm_device** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %22, i64 %24
  store %struct.pwm_device* %25, %struct.pwm_device** %5, align 8
  %26 = load i32, i32* @PWMF_EXPORTED, align 4
  %27 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %28 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %34 = call i32 @pwm_unexport_child(%struct.device* %32, %struct.pwm_device* %33)
  br label %35

35:                                               ; preds = %31, %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %13

39:                                               ; preds = %13
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = call i32 @put_device(%struct.device* %40)
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = call i32 @device_unregister(%struct.device* %42)
  br label %44

44:                                               ; preds = %39, %11
  ret void
}

declare dso_local %struct.device* @class_find_device(i32*, i32*, %struct.pwm_chip*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pwm_unexport_child(%struct.device*, %struct.pwm_device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
