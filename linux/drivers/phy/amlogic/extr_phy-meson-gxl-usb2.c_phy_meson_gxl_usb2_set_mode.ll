; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-gxl-usb2.c_phy_meson_gxl_usb2_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-gxl-usb2.c_phy_meson_gxl_usb2_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_meson_gxl_usb2_priv = type { i32, i32 }

@U2P_R0 = common dso_local global i32 0, align 4
@U2P_R0_DM_PULLDOWN = common dso_local global i32 0, align 4
@U2P_R0_DP_PULLDOWN = common dso_local global i32 0, align 4
@U2P_R0_ID_PULLUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, i32, i32)* @phy_meson_gxl_usb2_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_meson_gxl_usb2_set_mode(%struct.phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phy_meson_gxl_usb2_priv*, align 8
  store %struct.phy* %0, %struct.phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.phy*, %struct.phy** %5, align 8
  %10 = call %struct.phy_meson_gxl_usb2_priv* @phy_get_drvdata(%struct.phy* %9)
  store %struct.phy_meson_gxl_usb2_priv* %10, %struct.phy_meson_gxl_usb2_priv** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %53 [
    i32 129, label %12
    i32 128, label %12
    i32 130, label %33
  ]

12:                                               ; preds = %3, %3
  %13 = load %struct.phy_meson_gxl_usb2_priv*, %struct.phy_meson_gxl_usb2_priv** %8, align 8
  %14 = getelementptr inbounds %struct.phy_meson_gxl_usb2_priv, %struct.phy_meson_gxl_usb2_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @U2P_R0, align 4
  %17 = load i32, i32* @U2P_R0_DM_PULLDOWN, align 4
  %18 = load i32, i32* @U2P_R0_DM_PULLDOWN, align 4
  %19 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.phy_meson_gxl_usb2_priv*, %struct.phy_meson_gxl_usb2_priv** %8, align 8
  %21 = getelementptr inbounds %struct.phy_meson_gxl_usb2_priv, %struct.phy_meson_gxl_usb2_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @U2P_R0, align 4
  %24 = load i32, i32* @U2P_R0_DP_PULLDOWN, align 4
  %25 = load i32, i32* @U2P_R0_DP_PULLDOWN, align 4
  %26 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.phy_meson_gxl_usb2_priv*, %struct.phy_meson_gxl_usb2_priv** %8, align 8
  %28 = getelementptr inbounds %struct.phy_meson_gxl_usb2_priv, %struct.phy_meson_gxl_usb2_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @U2P_R0, align 4
  %31 = load i32, i32* @U2P_R0_ID_PULLUP, align 4
  %32 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 0)
  br label %56

33:                                               ; preds = %3
  %34 = load %struct.phy_meson_gxl_usb2_priv*, %struct.phy_meson_gxl_usb2_priv** %8, align 8
  %35 = getelementptr inbounds %struct.phy_meson_gxl_usb2_priv, %struct.phy_meson_gxl_usb2_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @U2P_R0, align 4
  %38 = load i32, i32* @U2P_R0_DM_PULLDOWN, align 4
  %39 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 0)
  %40 = load %struct.phy_meson_gxl_usb2_priv*, %struct.phy_meson_gxl_usb2_priv** %8, align 8
  %41 = getelementptr inbounds %struct.phy_meson_gxl_usb2_priv, %struct.phy_meson_gxl_usb2_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @U2P_R0, align 4
  %44 = load i32, i32* @U2P_R0_DP_PULLDOWN, align 4
  %45 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 0)
  %46 = load %struct.phy_meson_gxl_usb2_priv*, %struct.phy_meson_gxl_usb2_priv** %8, align 8
  %47 = getelementptr inbounds %struct.phy_meson_gxl_usb2_priv, %struct.phy_meson_gxl_usb2_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @U2P_R0, align 4
  %50 = load i32, i32* @U2P_R0_ID_PULLUP, align 4
  %51 = load i32, i32* @U2P_R0_ID_PULLUP, align 4
  %52 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %50, i32 %51)
  br label %56

53:                                               ; preds = %3
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %62

56:                                               ; preds = %33, %12
  %57 = load %struct.phy*, %struct.phy** %5, align 8
  %58 = call i32 @phy_meson_gxl_usb2_reset(%struct.phy* %57)
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.phy_meson_gxl_usb2_priv*, %struct.phy_meson_gxl_usb2_priv** %8, align 8
  %61 = getelementptr inbounds %struct.phy_meson_gxl_usb2_priv, %struct.phy_meson_gxl_usb2_priv* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.phy_meson_gxl_usb2_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @phy_meson_gxl_usb2_reset(%struct.phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
