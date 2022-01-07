; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-mapphone-mdm6600.c_phy_mdm6600_device_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-mapphone-mdm6600.c_phy_mdm6600_device_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_mdm6600 = type { i32, i64, i32, i32, %struct.gpio_desc** }
%struct.gpio_desc = type { i32 }

@PHY_MDM6600_RESET = common dso_local global i64 0, align 8
@PHY_MDM6600_CMD_BP_SHUTDOWN_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Waiting for power down request to complete.. \00", align 1
@PHY_MDM6600_STATUS_PANIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Powered down OK\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Timed out powering down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_mdm6600*)* @phy_mdm6600_device_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_mdm6600_device_power_off(%struct.phy_mdm6600* %0) #0 {
  %2 = alloca %struct.phy_mdm6600*, align 8
  %3 = alloca %struct.gpio_desc*, align 8
  store %struct.phy_mdm6600* %0, %struct.phy_mdm6600** %2, align 8
  %4 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %2, align 8
  %5 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %4, i32 0, i32 4
  %6 = load %struct.gpio_desc**, %struct.gpio_desc*** %5, align 8
  %7 = load i64, i64* @PHY_MDM6600_RESET, align 8
  %8 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %6, i64 %7
  %9 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  store %struct.gpio_desc* %9, %struct.gpio_desc** %3, align 8
  %10 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %2, align 8
  %11 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %2, align 8
  %13 = load i32, i32* @PHY_MDM6600_CMD_BP_SHUTDOWN_REQ, align 4
  %14 = call i32 @phy_mdm6600_cmd(%struct.phy_mdm6600* %12, i32 %13)
  %15 = call i32 @msleep(i32 100)
  %16 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %17 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %16, i32 1)
  %18 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %2, align 8
  %19 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_info(i32 %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %2, align 8
  %23 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %22, i32 0, i32 3
  %24 = call i32 @msecs_to_jiffies(i32 5000)
  %25 = call i64 @wait_for_completion_timeout(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %2, align 8
  %29 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PHY_MDM6600_STATUS_PANIC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %2, align 8
  %35 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_info(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %27
  br label %44

39:                                               ; preds = %1
  %40 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %2, align 8
  %41 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %38
  ret void
}

declare dso_local i32 @phy_mdm6600_cmd(%struct.phy_mdm6600*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(%struct.gpio_desc*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
