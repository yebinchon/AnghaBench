; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-berlin-usb.c_phy_berlin_usb_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-berlin-usb.c_phy_berlin_usb_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_berlin_usb_priv = type { i32, i64, i32 }

@USB_PHY_PLL = common dso_local global i64 0, align 8
@CLK_STABLE = common dso_local global i32 0, align 4
@PLL_CTRL_REG = common dso_local global i32 0, align 4
@PHASE_OFF_TOL_250 = common dso_local global i32 0, align 4
@KVC0_REG_CTRL = common dso_local global i32 0, align 4
@CLK_BLK_EN = common dso_local global i32 0, align 4
@USB_PHY_PLL_CONTROL = common dso_local global i64 0, align 8
@R_ROTATE_0 = common dso_local global i32 0, align 4
@USB_PHY_ANALOG = common dso_local global i64 0, align 8
@PHASE_FREEZE_DLY_4_CL = common dso_local global i32 0, align 4
@ACK_LENGTH_16_CL = common dso_local global i32 0, align 4
@SQ_LENGTH_12 = common dso_local global i32 0, align 4
@DISCON_THRESHOLD_270 = common dso_local global i32 0, align 4
@INTPL_CUR_30 = common dso_local global i32 0, align 4
@USB_PHY_RX_CTRL = common dso_local global i64 0, align 8
@TX_VDD12_13 = common dso_local global i32 0, align 4
@USB_PHY_TX_CTRL1 = common dso_local global i64 0, align 8
@EXT_HS_RCAL_EN = common dso_local global i32 0, align 4
@USB_PHY_TX_CTRL0 = common dso_local global i64 0, align 8
@IMP_CAL_FS_HS_DLY_3 = common dso_local global i32 0, align 4
@USB_PHY_TX_CTRL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @phy_berlin_usb_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_berlin_usb_power_on(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.phy_berlin_usb_priv*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.phy_berlin_usb_priv* @phy_get_drvdata(%struct.phy* %4)
  store %struct.phy_berlin_usb_priv* %5, %struct.phy_berlin_usb_priv** %3, align 8
  %6 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %3, align 8
  %7 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @reset_control_reset(i32 %8)
  %10 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %3, align 8
  %11 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %3, align 8
  %14 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @USB_PHY_PLL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load i32, i32* @CLK_STABLE, align 4
  %20 = load i32, i32* @PLL_CTRL_REG, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @PHASE_OFF_TOL_250, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @KVC0_REG_CTRL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CLK_BLK_EN, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %3, align 8
  %29 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @USB_PHY_PLL_CONTROL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = call i32 @V2I_VCO_RATIO(i32 5)
  %35 = load i32, i32* @R_ROTATE_0, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @ANA_TEST_DC_CTRL(i32 5)
  %38 = or i32 %36, %37
  %39 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %3, align 8
  %40 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @USB_PHY_ANALOG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load i32, i32* @PHASE_FREEZE_DLY_4_CL, align 4
  %46 = load i32, i32* @ACK_LENGTH_16_CL, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SQ_LENGTH_12, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @DISCON_THRESHOLD_270, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @SQ_THRESHOLD(i32 10)
  %53 = or i32 %51, %52
  %54 = call i32 @LPF_COEF(i32 2)
  %55 = or i32 %53, %54
  %56 = load i32, i32* @INTPL_CUR_30, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %3, align 8
  %59 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @USB_PHY_RX_CTRL, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load i32, i32* @TX_VDD12_13, align 4
  %65 = call i32 @TX_OUT_AMP(i32 3)
  %66 = or i32 %64, %65
  %67 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %3, align 8
  %68 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @USB_PHY_TX_CTRL1, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load i32, i32* @EXT_HS_RCAL_EN, align 4
  %74 = call i32 @IMPCAL_VTH_DIV(i32 3)
  %75 = or i32 %73, %74
  %76 = call i32 @EXT_RS_RCAL_DIV(i32 4)
  %77 = or i32 %75, %76
  %78 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %3, align 8
  %79 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @USB_PHY_TX_CTRL0, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  %84 = load i32, i32* @EXT_HS_RCAL_EN, align 4
  %85 = call i32 @IMPCAL_VTH_DIV(i32 3)
  %86 = or i32 %84, %85
  %87 = call i32 @EXT_RS_RCAL_DIV(i32 4)
  %88 = or i32 %86, %87
  %89 = call i32 @EXT_FS_RCAL_DIV(i32 2)
  %90 = or i32 %88, %89
  %91 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %3, align 8
  %92 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @USB_PHY_TX_CTRL0, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel(i32 %90, i64 %95)
  %97 = load i32, i32* @EXT_HS_RCAL_EN, align 4
  %98 = call i32 @IMPCAL_VTH_DIV(i32 3)
  %99 = or i32 %97, %98
  %100 = call i32 @EXT_RS_RCAL_DIV(i32 4)
  %101 = or i32 %99, %100
  %102 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %3, align 8
  %103 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @USB_PHY_TX_CTRL0, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i32 %101, i64 %106)
  %108 = call i32 @TX_CHAN_CTRL_REG(i32 15)
  %109 = call i32 @DRV_SLEWRATE(i32 3)
  %110 = or i32 %108, %109
  %111 = load i32, i32* @IMP_CAL_FS_HS_DLY_3, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @FS_DRV_EN_MASK(i32 13)
  %114 = or i32 %112, %113
  %115 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %3, align 8
  %116 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @USB_PHY_TX_CTRL2, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i32 %114, i64 %119)
  ret i32 0
}

declare dso_local %struct.phy_berlin_usb_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @reset_control_reset(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @V2I_VCO_RATIO(i32) #1

declare dso_local i32 @ANA_TEST_DC_CTRL(i32) #1

declare dso_local i32 @SQ_THRESHOLD(i32) #1

declare dso_local i32 @LPF_COEF(i32) #1

declare dso_local i32 @TX_OUT_AMP(i32) #1

declare dso_local i32 @IMPCAL_VTH_DIV(i32) #1

declare dso_local i32 @EXT_RS_RCAL_DIV(i32) #1

declare dso_local i32 @EXT_FS_RCAL_DIV(i32) #1

declare dso_local i32 @TX_CHAN_CTRL_REG(i32) #1

declare dso_local i32 @DRV_SLEWRATE(i32) #1

declare dso_local i32 @FS_DRV_EN_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
