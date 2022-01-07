; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-gxl-usb3.c_phy_meson_gxl_usb3_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-gxl-usb3.c_phy_meson_gxl_usb3_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_meson_gxl_usb3_priv = type { i32, i32 }

@USB_R0 = common dso_local global i32 0, align 4
@USB_R0_U2D_ACT = common dso_local global i32 0, align 4
@USB_R4 = common dso_local global i32 0, align 4
@USB_R4_P21_SLEEP_M0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unsupported PHY mode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, i32, i32)* @phy_meson_gxl_usb3_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_meson_gxl_usb3_set_mode(%struct.phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phy_meson_gxl_usb3_priv*, align 8
  store %struct.phy* %0, %struct.phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.phy*, %struct.phy** %5, align 8
  %10 = call %struct.phy_meson_gxl_usb3_priv* @phy_get_drvdata(%struct.phy* %9)
  store %struct.phy_meson_gxl_usb3_priv* %10, %struct.phy_meson_gxl_usb3_priv** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %40 [
    i32 128, label %12
    i32 129, label %25
  ]

12:                                               ; preds = %3
  %13 = load %struct.phy_meson_gxl_usb3_priv*, %struct.phy_meson_gxl_usb3_priv** %8, align 8
  %14 = getelementptr inbounds %struct.phy_meson_gxl_usb3_priv, %struct.phy_meson_gxl_usb3_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @USB_R0, align 4
  %17 = load i32, i32* @USB_R0_U2D_ACT, align 4
  %18 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %17, i32 0)
  %19 = load %struct.phy_meson_gxl_usb3_priv*, %struct.phy_meson_gxl_usb3_priv** %8, align 8
  %20 = getelementptr inbounds %struct.phy_meson_gxl_usb3_priv, %struct.phy_meson_gxl_usb3_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @USB_R4, align 4
  %23 = load i32, i32* @USB_R4_P21_SLEEP_M0, align 4
  %24 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 0)
  br label %47

25:                                               ; preds = %3
  %26 = load %struct.phy_meson_gxl_usb3_priv*, %struct.phy_meson_gxl_usb3_priv** %8, align 8
  %27 = getelementptr inbounds %struct.phy_meson_gxl_usb3_priv, %struct.phy_meson_gxl_usb3_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @USB_R0, align 4
  %30 = load i32, i32* @USB_R0_U2D_ACT, align 4
  %31 = load i32, i32* @USB_R0_U2D_ACT, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.phy_meson_gxl_usb3_priv*, %struct.phy_meson_gxl_usb3_priv** %8, align 8
  %34 = getelementptr inbounds %struct.phy_meson_gxl_usb3_priv, %struct.phy_meson_gxl_usb3_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @USB_R4, align 4
  %37 = load i32, i32* @USB_R4_P21_SLEEP_M0, align 4
  %38 = load i32, i32* @USB_R4_P21_SLEEP_M0, align 4
  %39 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 %38)
  br label %47

40:                                               ; preds = %3
  %41 = load %struct.phy*, %struct.phy** %5, align 8
  %42 = getelementptr inbounds %struct.phy, %struct.phy* %41, i32 0, i32 0
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %51

47:                                               ; preds = %25, %12
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.phy_meson_gxl_usb3_priv*, %struct.phy_meson_gxl_usb3_priv** %8, align 8
  %50 = getelementptr inbounds %struct.phy_meson_gxl_usb3_priv, %struct.phy_meson_gxl_usb3_priv* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %40
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.phy_meson_gxl_usb3_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
