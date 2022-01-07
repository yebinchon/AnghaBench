; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_phy_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_phy_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__, %struct.rtw_hal }
%struct.TYPE_2__ = type { i32 }
%struct.rtw_hal = type { i32, i32 }

@REG_SYS_FUNC_EN = common dso_local global i32 0, align 4
@BIT_FEN_BB_RSTB = common dso_local global i32 0, align 4
@BIT_FEN_BB_GLB_RST = common dso_local global i32 0, align 4
@REG_RF_CTRL = common dso_local global i32 0, align 4
@BIT_RF_EN = common dso_local global i32 0, align 4
@BIT_RF_RSTB = common dso_local global i32 0, align 4
@BIT_RF_SDM_RSTB = common dso_local global i32 0, align 4
@REG_WLRF1 = common dso_local global i32 0, align 4
@BIT_WLRF1_BBRF_EN = common dso_local global i32 0, align 4
@REG_RXPSEL = common dso_local global i32 0, align 4
@BIT_RX_PSEL_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822b_phy_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_phy_set_param(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 1
  store %struct.rtw_hal* %7, %struct.rtw_hal** %3, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %9 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %10 = load i32, i32* @BIT_FEN_BB_RSTB, align 4
  %11 = load i32, i32* @BIT_FEN_BB_GLB_RST, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @rtw_write8_set(%struct.rtw_dev* %8, i32 %9, i32 %12)
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %15 = load i32, i32* @REG_RF_CTRL, align 4
  %16 = load i32, i32* @BIT_RF_EN, align 4
  %17 = load i32, i32* @BIT_RF_RSTB, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @BIT_RF_SDM_RSTB, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @rtw_write8_set(%struct.rtw_dev* %14, i32 %15, i32 %20)
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %23 = load i32, i32* @REG_WLRF1, align 4
  %24 = load i32, i32* @BIT_WLRF1_BBRF_EN, align 4
  %25 = call i32 @rtw_write32_set(%struct.rtw_dev* %22, i32 %23, i32 %24)
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %27 = load i32, i32* @REG_RXPSEL, align 4
  %28 = load i32, i32* @BIT_RX_PSEL_RST, align 4
  %29 = call i32 @rtw_write32_clr(%struct.rtw_dev* %26, i32 %27, i32 %28)
  %30 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %31 = call i32 @rtw_phy_load_tables(%struct.rtw_dev* %30)
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %33 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 63
  store i32 %36, i32* %4, align 4
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @rtw_write32_mask(%struct.rtw_dev* %37, i32 36, i32 2113929216, i32 %38)
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @rtw_write32_mask(%struct.rtw_dev* %40, i32 40, i32 126, i32 %41)
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %44 = load i32, i32* @REG_RXPSEL, align 4
  %45 = load i32, i32* @BIT_RX_PSEL_RST, align 4
  %46 = call i32 @rtw_write32_set(%struct.rtw_dev* %43, i32 %44, i32 %45)
  store i32 0, i32* %5, align 4
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %48 = load %struct.rtw_hal*, %struct.rtw_hal** %3, align 8
  %49 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rtw_hal*, %struct.rtw_hal** %3, align 8
  %52 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @rtw8822b_config_trx_mode(%struct.rtw_dev* %47, i32 %50, i32 %53, i32 %54)
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %57 = call i32 @rtw_phy_init(%struct.rtw_dev* %56)
  %58 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %59 = call i32 @rtw8822b_phy_rfe_init(%struct.rtw_dev* %58)
  ret void
}

declare dso_local i32 @rtw_write8_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_clr(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_phy_load_tables(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw8822b_config_trx_mode(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_phy_init(%struct.rtw_dev*) #1

declare dso_local i32 @rtw8822b_phy_rfe_init(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
