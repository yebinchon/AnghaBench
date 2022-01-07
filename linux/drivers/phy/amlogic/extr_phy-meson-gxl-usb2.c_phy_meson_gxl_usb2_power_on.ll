; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-gxl-usb2.c_phy_meson_gxl_usb2_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-gxl-usb2.c_phy_meson_gxl_usb2_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_meson_gxl_usb2_priv = type { i32, i32, i32 }

@U2P_R0 = common dso_local global i32 0, align 4
@U2P_R0_POWER_ON_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to initialize PHY with mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @phy_meson_gxl_usb2_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_meson_gxl_usb2_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.phy_meson_gxl_usb2_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %3, align 8
  %7 = call %struct.phy_meson_gxl_usb2_priv* @phy_get_drvdata(%struct.phy* %6)
  store %struct.phy_meson_gxl_usb2_priv* %7, %struct.phy_meson_gxl_usb2_priv** %4, align 8
  %8 = load %struct.phy_meson_gxl_usb2_priv*, %struct.phy_meson_gxl_usb2_priv** %4, align 8
  %9 = getelementptr inbounds %struct.phy_meson_gxl_usb2_priv, %struct.phy_meson_gxl_usb2_priv* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.phy_meson_gxl_usb2_priv*, %struct.phy_meson_gxl_usb2_priv** %4, align 8
  %11 = getelementptr inbounds %struct.phy_meson_gxl_usb2_priv, %struct.phy_meson_gxl_usb2_priv* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @U2P_R0, align 4
  %14 = load i32, i32* @U2P_R0_POWER_ON_RESET, align 4
  %15 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 0)
  %16 = load %struct.phy*, %struct.phy** %3, align 8
  %17 = load %struct.phy_meson_gxl_usb2_priv*, %struct.phy_meson_gxl_usb2_priv** %4, align 8
  %18 = getelementptr inbounds %struct.phy_meson_gxl_usb2_priv, %struct.phy_meson_gxl_usb2_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @phy_meson_gxl_usb2_set_mode(%struct.phy* %16, i32 %19, i32 0)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.phy*, %struct.phy** %3, align 8
  %25 = call i32 @phy_meson_gxl_usb2_power_off(%struct.phy* %24)
  %26 = load %struct.phy*, %struct.phy** %3, align 8
  %27 = getelementptr inbounds %struct.phy, %struct.phy* %26, i32 0, i32 0
  %28 = load %struct.phy_meson_gxl_usb2_priv*, %struct.phy_meson_gxl_usb2_priv** %4, align 8
  %29 = getelementptr inbounds %struct.phy_meson_gxl_usb2_priv, %struct.phy_meson_gxl_usb2_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %23
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.phy_meson_gxl_usb2_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @phy_meson_gxl_usb2_set_mode(%struct.phy*, i32, i32) #1

declare dso_local i32 @phy_meson_gxl_usb2_power_off(%struct.phy*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
