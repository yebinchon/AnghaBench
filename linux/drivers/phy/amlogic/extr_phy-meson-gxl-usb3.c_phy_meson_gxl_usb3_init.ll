; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-gxl-usb3.c_phy_meson_gxl_usb3_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-gxl-usb3.c_phy_meson_gxl_usb3_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_meson_gxl_usb3_priv = type { i32, i32, i32, i32, i32 }

@USB_R1 = common dso_local global i32 0, align 4
@USB_R1_U3H_FLADJ_30MHZ_REG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @phy_meson_gxl_usb3_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_meson_gxl_usb3_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.phy_meson_gxl_usb3_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %3, align 8
  %7 = call %struct.phy_meson_gxl_usb3_priv* @phy_get_drvdata(%struct.phy* %6)
  store %struct.phy_meson_gxl_usb3_priv* %7, %struct.phy_meson_gxl_usb3_priv** %4, align 8
  %8 = load %struct.phy_meson_gxl_usb3_priv*, %struct.phy_meson_gxl_usb3_priv** %4, align 8
  %9 = getelementptr inbounds %struct.phy_meson_gxl_usb3_priv, %struct.phy_meson_gxl_usb3_priv* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @reset_control_reset(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %59

15:                                               ; preds = %1
  %16 = load %struct.phy_meson_gxl_usb3_priv*, %struct.phy_meson_gxl_usb3_priv** %4, align 8
  %17 = getelementptr inbounds %struct.phy_meson_gxl_usb3_priv, %struct.phy_meson_gxl_usb3_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_prepare_enable(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %59

23:                                               ; preds = %15
  %24 = load %struct.phy_meson_gxl_usb3_priv*, %struct.phy_meson_gxl_usb3_priv** %4, align 8
  %25 = getelementptr inbounds %struct.phy_meson_gxl_usb3_priv, %struct.phy_meson_gxl_usb3_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_prepare_enable(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %54

31:                                               ; preds = %23
  %32 = load %struct.phy*, %struct.phy** %3, align 8
  %33 = load %struct.phy_meson_gxl_usb3_priv*, %struct.phy_meson_gxl_usb3_priv** %4, align 8
  %34 = getelementptr inbounds %struct.phy_meson_gxl_usb3_priv, %struct.phy_meson_gxl_usb3_priv* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @phy_meson_gxl_usb3_set_mode(%struct.phy* %32, i32 %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %49

40:                                               ; preds = %31
  %41 = load %struct.phy_meson_gxl_usb3_priv*, %struct.phy_meson_gxl_usb3_priv** %4, align 8
  %42 = getelementptr inbounds %struct.phy_meson_gxl_usb3_priv, %struct.phy_meson_gxl_usb3_priv* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @USB_R1, align 4
  %45 = load i32, i32* @USB_R1_U3H_FLADJ_30MHZ_REG_MASK, align 4
  %46 = load i32, i32* @USB_R1_U3H_FLADJ_30MHZ_REG_MASK, align 4
  %47 = call i32 @FIELD_PREP(i32 %46, i32 32)
  %48 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %47)
  store i32 0, i32* %2, align 4
  br label %61

49:                                               ; preds = %39
  %50 = load %struct.phy_meson_gxl_usb3_priv*, %struct.phy_meson_gxl_usb3_priv** %4, align 8
  %51 = getelementptr inbounds %struct.phy_meson_gxl_usb3_priv, %struct.phy_meson_gxl_usb3_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clk_disable_unprepare(i32 %52)
  br label %54

54:                                               ; preds = %49, %30
  %55 = load %struct.phy_meson_gxl_usb3_priv*, %struct.phy_meson_gxl_usb3_priv** %4, align 8
  %56 = getelementptr inbounds %struct.phy_meson_gxl_usb3_priv, %struct.phy_meson_gxl_usb3_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @clk_disable_unprepare(i32 %57)
  br label %59

59:                                               ; preds = %54, %22, %14
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %40
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.phy_meson_gxl_usb3_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @reset_control_reset(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @phy_meson_gxl_usb3_set_mode(%struct.phy*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
