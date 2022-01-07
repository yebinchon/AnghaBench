; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_rk3328_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_rk3328_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi_phy = type { i32 }

@RK3328_TMDS_DRIVER_ENABLE = common dso_local global i32 0, align 4
@RK3328_BANDGAP_ENABLE = common dso_local global i32 0, align 4
@RK3328_POST_PLL_POWER_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inno_hdmi_phy*)* @inno_hdmi_phy_rk3328_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inno_hdmi_phy_rk3328_power_off(%struct.inno_hdmi_phy* %0) #0 {
  %2 = alloca %struct.inno_hdmi_phy*, align 8
  store %struct.inno_hdmi_phy* %0, %struct.inno_hdmi_phy** %2, align 8
  %3 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %2, align 8
  %4 = load i32, i32* @RK3328_TMDS_DRIVER_ENABLE, align 4
  %5 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %3, i32 178, i32 %4, i32 0)
  %6 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %2, align 8
  %7 = load i32, i32* @RK3328_BANDGAP_ENABLE, align 4
  %8 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %6, i32 176, i32 %7, i32 0)
  %9 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %2, align 8
  %10 = load i32, i32* @RK3328_POST_PLL_POWER_DOWN, align 4
  %11 = load i32, i32* @RK3328_POST_PLL_POWER_DOWN, align 4
  %12 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %9, i32 170, i32 %10, i32 %11)
  %13 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %2, align 8
  %14 = call i32 @inno_write(%struct.inno_hdmi_phy* %13, i32 5, i32 0)
  %15 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %2, align 8
  %16 = call i32 @inno_write(%struct.inno_hdmi_phy* %15, i32 7, i32 0)
  ret void
}

declare dso_local i32 @inno_update_bits(%struct.inno_hdmi_phy*, i32, i32, i32) #1

declare dso_local i32 @inno_write(%struct.inno_hdmi_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
