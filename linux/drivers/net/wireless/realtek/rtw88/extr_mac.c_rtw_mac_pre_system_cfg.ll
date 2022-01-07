; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_mac_pre_system_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_mac_pre_system_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_RSV_CTRL = common dso_local global i32 0, align 4
@REG_HCI_OPT_CTRL = common dso_local global i32 0, align 4
@BIT_BT_DIG_CLK_EN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REG_PAD_CTRL1 = common dso_local global i32 0, align 4
@BIT_PAPE_WLBT_SEL = common dso_local global i32 0, align 4
@BIT_LNAON_WLBT_SEL = common dso_local global i32 0, align 4
@REG_LED_CFG = common dso_local global i32 0, align 4
@BIT_PAPE_SEL_EN = common dso_local global i32 0, align 4
@BIT_LNAON_SEL_EN = common dso_local global i32 0, align 4
@REG_GPIO_MUXCFG = common dso_local global i32 0, align 4
@BIT_WLRFE_4_5_EN = common dso_local global i32 0, align 4
@REG_SYS_FUNC_EN = common dso_local global i32 0, align 4
@BIT_FEN_BB_RSTB = common dso_local global i32 0, align 4
@BIT_FEN_BB_GLB_RST = common dso_local global i32 0, align 4
@REG_RF_CTRL = common dso_local global i32 0, align 4
@BIT_RF_SDM_RSTB = common dso_local global i32 0, align 4
@BIT_RF_RSTB = common dso_local global i32 0, align 4
@BIT_RF_EN = common dso_local global i32 0, align 4
@REG_WLRF1 = common dso_local global i32 0, align 4
@BIT_WLRF1_BBRF_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @rtw_mac_pre_system_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_mac_pre_system_cfg(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = load i32, i32* @REG_RSV_CTRL, align 4
  %8 = call i32 @rtw_write8(%struct.rtw_dev* %6, i32 %7, i32 0)
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %10 = call i32 @rtw_hci_type(%struct.rtw_dev* %9)
  switch i32 %10, label %17 [
    i32 129, label %11
    i32 128, label %16
  ]

11:                                               ; preds = %1
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %13 = load i32, i32* @REG_HCI_OPT_CTRL, align 4
  %14 = load i32, i32* @BIT_BT_DIG_CLK_EN, align 4
  %15 = call i32 @rtw_write32_set(%struct.rtw_dev* %12, i32 %13, i32 %14)
  br label %20

16:                                               ; preds = %1
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %95

20:                                               ; preds = %16, %11
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %22 = load i32, i32* @REG_PAD_CTRL1, align 4
  %23 = call i32 @rtw_read32(%struct.rtw_dev* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @BIT_PAPE_WLBT_SEL, align 4
  %25 = load i32, i32* @BIT_LNAON_WLBT_SEL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %30 = load i32, i32* @REG_PAD_CTRL1, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @rtw_write32(%struct.rtw_dev* %29, i32 %30, i32 %31)
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %34 = load i32, i32* @REG_LED_CFG, align 4
  %35 = call i32 @rtw_read32(%struct.rtw_dev* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @BIT_PAPE_SEL_EN, align 4
  %37 = load i32, i32* @BIT_LNAON_SEL_EN, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %43 = load i32, i32* @REG_LED_CFG, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @rtw_write32(%struct.rtw_dev* %42, i32 %43, i32 %44)
  %46 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %47 = load i32, i32* @REG_GPIO_MUXCFG, align 4
  %48 = call i32 @rtw_read32(%struct.rtw_dev* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @BIT_WLRFE_4_5_EN, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %53 = load i32, i32* @REG_GPIO_MUXCFG, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @rtw_write32(%struct.rtw_dev* %52, i32 %53, i32 %54)
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %57 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %58 = call i32 @rtw_read8(%struct.rtw_dev* %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @BIT_FEN_BB_RSTB, align 4
  %60 = load i32, i32* @BIT_FEN_BB_GLB_RST, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %66 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @rtw_write8(%struct.rtw_dev* %65, i32 %66, i32 %67)
  %69 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %70 = load i32, i32* @REG_RF_CTRL, align 4
  %71 = call i32 @rtw_read8(%struct.rtw_dev* %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @BIT_RF_SDM_RSTB, align 4
  %73 = load i32, i32* @BIT_RF_RSTB, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @BIT_RF_EN, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %81 = load i32, i32* @REG_RF_CTRL, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @rtw_write8(%struct.rtw_dev* %80, i32 %81, i32 %82)
  %84 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %85 = load i32, i32* @REG_WLRF1, align 4
  %86 = call i32 @rtw_read32(%struct.rtw_dev* %84, i32 %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* @BIT_WLRF1_BBRF_EN, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %92 = load i32, i32* @REG_WLRF1, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @rtw_write32(%struct.rtw_dev* %91, i32 %92, i32 %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %20, %17
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_hci_type(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_write32_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
