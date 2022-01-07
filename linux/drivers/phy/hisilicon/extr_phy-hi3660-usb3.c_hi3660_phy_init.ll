; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-hi3660-usb3.c_hi3660_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-hi3660-usb3.c_hi3660_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.hi3660_priv = type { i32, i32, i32, i32, i32 }

@PERI_CRG_ISODIS = common dso_local global i32 0, align 4
@USB_REFCLK_ISO_EN = common dso_local global i32 0, align 4
@USB_TCXO_EN = common dso_local global i32 0, align 4
@PCTRL_PERI_CTRL3_MSK_START = common dso_local global i32 0, align 4
@PCTRL_PERI_CTRL3 = common dso_local global i32 0, align 4
@IP_RST_USB3OTGPHY_POR = common dso_local global i32 0, align 4
@IP_RST_USB3OTG = common dso_local global i32 0, align 4
@PERI_CRG_RSTEN4 = common dso_local global i32 0, align 4
@SC_USB3PHY_ABB_GT_EN = common dso_local global i32 0, align 4
@USBOTG3_CTRL0 = common dso_local global i32 0, align 4
@REF_SSP_EN = common dso_local global i32 0, align 4
@USBOTG3_CTRL7 = common dso_local global i32 0, align 4
@USBOTG3CTRL2_POWERDOWN_HSP = common dso_local global i32 0, align 4
@USBOTG3CTRL2_POWERDOWN_SSP = common dso_local global i32 0, align 4
@USBOTG3_CTRL2 = common dso_local global i32 0, align 4
@PERI_CRG_RSTDIS4 = common dso_local global i32 0, align 4
@USBOTG3_CTRL3_VBUSVLDEXT = common dso_local global i32 0, align 4
@USBOTG3_CTRL3_VBUSVLDEXTSEL = common dso_local global i32 0, align 4
@USBOTG3_CTRL3 = common dso_local global i32 0, align 4
@USBOTG3_CTRL4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to init phy ret: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @hi3660_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3660_phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.hi3660_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %8 = load %struct.phy*, %struct.phy** %3, align 8
  %9 = call %struct.hi3660_priv* @phy_get_drvdata(%struct.phy* %8)
  store %struct.hi3660_priv* %9, %struct.hi3660_priv** %4, align 8
  %10 = load %struct.hi3660_priv*, %struct.hi3660_priv** %4, align 8
  %11 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PERI_CRG_ISODIS, align 4
  %14 = load i32, i32* @USB_REFCLK_ISO_EN, align 4
  %15 = call i32 @regmap_write(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %130

19:                                               ; preds = %1
  %20 = load i32, i32* @USB_TCXO_EN, align 4
  %21 = load i32, i32* @USB_TCXO_EN, align 4
  %22 = load i32, i32* @PCTRL_PERI_CTRL3_MSK_START, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.hi3660_priv*, %struct.hi3660_priv** %4, align 8
  %26 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PCTRL_PERI_CTRL3, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @regmap_write(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %130

34:                                               ; preds = %19
  %35 = load i32, i32* @IP_RST_USB3OTGPHY_POR, align 4
  %36 = load i32, i32* @IP_RST_USB3OTG, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load %struct.hi3660_priv*, %struct.hi3660_priv** %4, align 8
  %39 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PERI_CRG_RSTEN4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @regmap_write(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %130

47:                                               ; preds = %34
  %48 = load i32, i32* @SC_USB3PHY_ABB_GT_EN, align 4
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %6, align 4
  %50 = load %struct.hi3660_priv*, %struct.hi3660_priv** %4, align 8
  %51 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @USBOTG3_CTRL0, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %130

60:                                               ; preds = %47
  %61 = load i32, i32* @REF_SSP_EN, align 4
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %6, align 4
  %63 = load %struct.hi3660_priv*, %struct.hi3660_priv** %4, align 8
  %64 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @USBOTG3_CTRL7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @regmap_update_bits(i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %130

73:                                               ; preds = %60
  %74 = load i32, i32* @USBOTG3CTRL2_POWERDOWN_HSP, align 4
  %75 = load i32, i32* @USBOTG3CTRL2_POWERDOWN_SSP, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %6, align 4
  %77 = load %struct.hi3660_priv*, %struct.hi3660_priv** %4, align 8
  %78 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @USBOTG3_CTRL2, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @regmap_update_bits(i32 %79, i32 %80, i32 %81, i32 0)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %130

86:                                               ; preds = %73
  %87 = call i32 @usleep_range(i32 100, i32 120)
  %88 = load i32, i32* @IP_RST_USB3OTGPHY_POR, align 4
  %89 = load i32, i32* @IP_RST_USB3OTG, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %5, align 4
  %91 = load %struct.hi3660_priv*, %struct.hi3660_priv** %4, align 8
  %92 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PERI_CRG_RSTDIS4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @regmap_write(i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  br label %130

100:                                              ; preds = %86
  %101 = call i32 @usleep_range(i32 10000, i32 15000)
  %102 = load i32, i32* @USBOTG3_CTRL3_VBUSVLDEXT, align 4
  %103 = load i32, i32* @USBOTG3_CTRL3_VBUSVLDEXTSEL, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %6, align 4
  %106 = load %struct.hi3660_priv*, %struct.hi3660_priv** %4, align 8
  %107 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @USBOTG3_CTRL3, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @regmap_update_bits(i32 %108, i32 %109, i32 %110, i32 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %100
  br label %130

116:                                              ; preds = %100
  %117 = call i32 @usleep_range(i32 100, i32 120)
  %118 = load %struct.hi3660_priv*, %struct.hi3660_priv** %4, align 8
  %119 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @USBOTG3_CTRL4, align 4
  %122 = load %struct.hi3660_priv*, %struct.hi3660_priv** %4, align 8
  %123 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @regmap_write(i32 %120, i32 %121, i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %130

129:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %137

130:                                              ; preds = %128, %115, %99, %85, %72, %59, %46, %33, %18
  %131 = load %struct.hi3660_priv*, %struct.hi3660_priv** %4, align 8
  %132 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @dev_err(i32 %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %130, %129
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.hi3660_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
