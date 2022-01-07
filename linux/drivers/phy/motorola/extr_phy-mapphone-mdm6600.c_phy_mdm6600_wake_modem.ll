; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-mapphone-mdm6600.c_phy_mdm6600_wake_modem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-mapphone-mdm6600.c_phy_mdm6600_wake_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_mdm6600 = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gpio_desc** }
%struct.gpio_desc = type { i32 }

@PHY_MDM6600_MODE0 = common dso_local global i64 0, align 8
@MDM6600_MODEM_WAKE_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_mdm6600*)* @phy_mdm6600_wake_modem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_mdm6600_wake_modem(%struct.phy_mdm6600* %0) #0 {
  %2 = alloca %struct.phy_mdm6600*, align 8
  %3 = alloca %struct.gpio_desc*, align 8
  store %struct.phy_mdm6600* %0, %struct.phy_mdm6600** %2, align 8
  %4 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %2, align 8
  %5 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %9 = load i64, i64* @PHY_MDM6600_MODE0, align 8
  %10 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %8, i64 %9
  %11 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  store %struct.gpio_desc* %11, %struct.gpio_desc** %3, align 8
  %12 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %13 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %12, i32 1)
  %14 = call i32 @usleep_range(i32 5, i32 15)
  %15 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %16 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %15, i32 0)
  %17 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %2, align 8
  %18 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 @usleep_range(i32 5, i32 15)
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @MDM6600_MODEM_WAKE_DELAY_MS, align 4
  %25 = call i32 @msleep(i32 %24)
  br label %26

26:                                               ; preds = %23, %21
  ret void
}

declare dso_local i32 @gpiod_set_value_cansleep(%struct.gpio_desc*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
