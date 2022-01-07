; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-mapphone-mdm6600.c_phy_mdm6600_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-mapphone-mdm6600.c_phy_mdm6600_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.phy_mdm6600 = type { i32, i32, i32, i32, i32, i32, %struct.gpio_desc** }
%struct.gpio_desc = type { i32 }

@PHY_MDM6600_RESET = common dso_local global i64 0, align 8
@PHY_MDM6600_ENABLED_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @phy_mdm6600_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_mdm6600_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.phy_mdm6600*, align 8
  %4 = alloca %struct.gpio_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.phy_mdm6600* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.phy_mdm6600* %6, %struct.phy_mdm6600** %3, align 8
  %7 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %8 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %7, i32 0, i32 6
  %9 = load %struct.gpio_desc**, %struct.gpio_desc*** %8, align 8
  %10 = load i64, i64* @PHY_MDM6600_RESET, align 8
  %11 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %9, i64 %10
  %12 = load %struct.gpio_desc*, %struct.gpio_desc** %11, align 8
  store %struct.gpio_desc* %12, %struct.gpio_desc** %4, align 8
  %13 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %14 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pm_runtime_dont_use_autosuspend(i32 %15)
  %17 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %18 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pm_runtime_put_sync(i32 %19)
  %21 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %22 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pm_runtime_disable(i32 %23)
  %25 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %26 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %1
  %30 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %31 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %30, i32 0, i32 3
  %32 = load i32, i32* @PHY_MDM6600_ENABLED_DELAY_MS, align 4
  %33 = call i32 @msecs_to_jiffies(i32 %32)
  %34 = call i32 @wait_for_completion_timeout(i32* %31, i32 %33)
  br label %35

35:                                               ; preds = %29, %1
  %36 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %37 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %36, i32 1)
  %38 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %39 = call i32 @phy_mdm6600_device_power_off(%struct.phy_mdm6600* %38)
  %40 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %41 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %40, i32 0, i32 2
  %42 = call i32 @cancel_delayed_work_sync(i32* %41)
  %43 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %44 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %43, i32 0, i32 1
  %45 = call i32 @cancel_delayed_work_sync(i32* %44)
  %46 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %47 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %46, i32 0, i32 0
  %48 = call i32 @cancel_delayed_work_sync(i32* %47)
  ret i32 0
}

declare dso_local %struct.phy_mdm6600* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(%struct.gpio_desc*, i32) #1

declare dso_local i32 @phy_mdm6600_device_power_off(%struct.phy_mdm6600*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
