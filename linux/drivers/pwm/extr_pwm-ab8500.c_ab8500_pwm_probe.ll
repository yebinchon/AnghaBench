; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-ab8500.c_ab8500_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-ab8500.c_ab8500_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.ab8500_pwm_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ab8500_pwm_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pwm probe successful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ab8500_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ab8500_pwm_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ab8500_pwm_chip* @devm_kzalloc(i32* %7, i32 24, i32 %8)
  store %struct.ab8500_pwm_chip* %9, %struct.ab8500_pwm_chip** %4, align 8
  %10 = load %struct.ab8500_pwm_chip*, %struct.ab8500_pwm_chip** %4, align 8
  %11 = icmp eq %struct.ab8500_pwm_chip* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.ab8500_pwm_chip*, %struct.ab8500_pwm_chip** %4, align 8
  %19 = getelementptr inbounds %struct.ab8500_pwm_chip, %struct.ab8500_pwm_chip* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i32* %17, i32** %20, align 8
  %21 = load %struct.ab8500_pwm_chip*, %struct.ab8500_pwm_chip** %4, align 8
  %22 = getelementptr inbounds %struct.ab8500_pwm_chip, %struct.ab8500_pwm_chip* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32* @ab8500_pwm_ops, i32** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ab8500_pwm_chip*, %struct.ab8500_pwm_chip** %4, align 8
  %28 = getelementptr inbounds %struct.ab8500_pwm_chip, %struct.ab8500_pwm_chip* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.ab8500_pwm_chip*, %struct.ab8500_pwm_chip** %4, align 8
  %31 = getelementptr inbounds %struct.ab8500_pwm_chip, %struct.ab8500_pwm_chip* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.ab8500_pwm_chip*, %struct.ab8500_pwm_chip** %4, align 8
  %34 = getelementptr inbounds %struct.ab8500_pwm_chip, %struct.ab8500_pwm_chip* %33, i32 0, i32 0
  %35 = call i32 @pwmchip_add(%struct.TYPE_2__* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %15
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %47

40:                                               ; preds = %15
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @dev_dbg(i32* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.ab8500_pwm_chip*, %struct.ab8500_pwm_chip** %4, align 8
  %46 = call i32 @platform_set_drvdata(%struct.platform_device* %44, %struct.ab8500_pwm_chip* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %40, %38, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.ab8500_pwm_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ab8500_pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
