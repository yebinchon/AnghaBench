; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ralink/extr_phy-ralink-usb.c_ralink_usb_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ralink/extr_phy-ralink-usb.c_ralink_usb_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.ralink_usb_phy = type { i32, i32, i32, i32 }

@RT_SYSC_REG_CLKCFG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @ralink_usb_phy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ralink_usb_phy_power_off(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.ralink_usb_phy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.ralink_usb_phy* @phy_get_drvdata(%struct.phy* %4)
  store %struct.ralink_usb_phy* %5, %struct.ralink_usb_phy** %3, align 8
  %6 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %7 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RT_SYSC_REG_CLKCFG1, align 4
  %10 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %11 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regmap_update_bits(i32 %8, i32 %9, i32 %12, i32 0)
  %14 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %15 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @reset_control_assert(i32 %16)
  %18 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %19 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @reset_control_assert(i32 %20)
  ret i32 0
}

declare dso_local %struct.ralink_usb_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
