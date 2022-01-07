; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-crc.c_crystalcove_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-crc.c_crystalcove_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.crystalcove_pwm = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32*, %struct.TYPE_4__* }
%struct.intel_soc_pmic = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@crc_pwm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @crystalcove_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crystalcove_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.crystalcove_pwm*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.intel_soc_pmic*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.intel_soc_pmic* @dev_get_drvdata(%struct.device* %11)
  store %struct.intel_soc_pmic* %12, %struct.intel_soc_pmic** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.crystalcove_pwm* @devm_kzalloc(%struct.TYPE_4__* %14, i32 32, i32 %15)
  store %struct.crystalcove_pwm* %16, %struct.crystalcove_pwm** %4, align 8
  %17 = load %struct.crystalcove_pwm*, %struct.crystalcove_pwm** %4, align 8
  %18 = icmp ne %struct.crystalcove_pwm* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %48

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.crystalcove_pwm*, %struct.crystalcove_pwm** %4, align 8
  %26 = getelementptr inbounds %struct.crystalcove_pwm, %struct.crystalcove_pwm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %27, align 8
  %28 = load %struct.crystalcove_pwm*, %struct.crystalcove_pwm** %4, align 8
  %29 = getelementptr inbounds %struct.crystalcove_pwm, %struct.crystalcove_pwm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32* @crc_pwm_ops, i32** %30, align 8
  %31 = load %struct.crystalcove_pwm*, %struct.crystalcove_pwm** %4, align 8
  %32 = getelementptr inbounds %struct.crystalcove_pwm, %struct.crystalcove_pwm* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = load %struct.crystalcove_pwm*, %struct.crystalcove_pwm** %4, align 8
  %35 = getelementptr inbounds %struct.crystalcove_pwm, %struct.crystalcove_pwm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %6, align 8
  %38 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.crystalcove_pwm*, %struct.crystalcove_pwm** %4, align 8
  %41 = getelementptr inbounds %struct.crystalcove_pwm, %struct.crystalcove_pwm* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.crystalcove_pwm*, %struct.crystalcove_pwm** %4, align 8
  %44 = call i32 @platform_set_drvdata(%struct.platform_device* %42, %struct.crystalcove_pwm* %43)
  %45 = load %struct.crystalcove_pwm*, %struct.crystalcove_pwm** %4, align 8
  %46 = getelementptr inbounds %struct.crystalcove_pwm, %struct.crystalcove_pwm* %45, i32 0, i32 0
  %47 = call i32 @pwmchip_add(%struct.TYPE_3__* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %22, %19
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.intel_soc_pmic* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.crystalcove_pwm* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.crystalcove_pwm*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
