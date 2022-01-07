; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_mac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_SW_AMPDU_BURST_MODE_CTRL = common dso_local global i64 0, align 8
@BIT_PRE_TX_CMD = common dso_local global i32 0, align 4
@REG_AMPDU_MAX_TIME_V1 = common dso_local global i64 0, align 8
@WLAN_AMPDU_MAX_TIME = common dso_local global i32 0, align 4
@REG_TX_HANG_CTRL = common dso_local global i32 0, align 4
@BIT_EN_EOF_V1 = common dso_local global i32 0, align 4
@WLAN_RTS_LEN_TH = common dso_local global i32 0, align 4
@WLAN_RTS_TX_TIME_TH = common dso_local global i32 0, align 4
@WLAN_MAX_AGG_PKT_LIMIT = common dso_local global i32 0, align 4
@WLAN_RTS_MAX_AGG_PKT_LIMIT = common dso_local global i32 0, align 4
@REG_PROT_MODE_CTRL = common dso_local global i64 0, align 8
@REG_BAR_MODE_CTRL = common dso_local global i64 0, align 8
@WLAN_BAR_RETRY_LIMIT = common dso_local global i32 0, align 4
@WLAN_RA_TRY_RATE_AGG_LIMIT = common dso_local global i32 0, align 4
@REG_FAST_EDCA_VOVI_SETTING = common dso_local global i64 0, align 8
@FAST_EDCA_VO_TH = common dso_local global i32 0, align 4
@FAST_EDCA_VI_TH = common dso_local global i32 0, align 4
@REG_FAST_EDCA_BEBK_SETTING = common dso_local global i64 0, align 8
@FAST_EDCA_BE_TH = common dso_local global i32 0, align 4
@FAST_EDCA_BK_TH = common dso_local global i32 0, align 4
@REG_TIMER0_SRC_SEL = common dso_local global i64 0, align 8
@BIT_TSFT_SEL_TIMER0 = common dso_local global i32 0, align 4
@REG_TXPAUSE = common dso_local global i64 0, align 8
@REG_SLOT = common dso_local global i64 0, align 8
@WLAN_SLOT_TIME = common dso_local global i32 0, align 4
@REG_PIFS = common dso_local global i64 0, align 8
@WLAN_PIFS_TIME = common dso_local global i32 0, align 4
@REG_SIFS = common dso_local global i64 0, align 8
@WLAN_SIFS_CFG = common dso_local global i32 0, align 4
@REG_EDCA_VO_PARAM = common dso_local global i64 0, align 8
@WLAN_VO_TXOP_LIMIT = common dso_local global i32 0, align 4
@REG_EDCA_VI_PARAM = common dso_local global i64 0, align 8
@WLAN_VI_TXOP_LIMIT = common dso_local global i32 0, align 4
@REG_RD_NAV_NXT = common dso_local global i64 0, align 8
@WLAN_NAV_CFG = common dso_local global i32 0, align 4
@REG_RXTSF_OFFSET_CCK = common dso_local global i64 0, align 8
@WLAN_RX_TSF_CFG = common dso_local global i32 0, align 4
@REG_BCN_CTRL = common dso_local global i32 0, align 4
@BIT_EN_BCN_FUNCTION = common dso_local global i32 0, align 4
@REG_TBTT_PROHIBIT = common dso_local global i64 0, align 8
@WLAN_TBTT_TIME = common dso_local global i32 0, align 4
@REG_DRVERLYINT = common dso_local global i64 0, align 8
@WLAN_DRV_EARLY_INT = common dso_local global i32 0, align 4
@REG_BCNDMATIM = common dso_local global i64 0, align 8
@WLAN_BCN_DMA_TIME = common dso_local global i32 0, align 4
@REG_TX_PTCL_CTRL = common dso_local global i64 0, align 8
@BIT_SIFS_BK_EN = common dso_local global i32 0, align 4
@REG_RXFLTMAP0 = common dso_local global i64 0, align 8
@WLAN_RX_FILTER0 = common dso_local global i32 0, align 4
@REG_RXFLTMAP2 = common dso_local global i64 0, align 8
@WLAN_RX_FILTER2 = common dso_local global i32 0, align 4
@REG_RCR = common dso_local global i64 0, align 8
@WLAN_RCR_CFG = common dso_local global i32 0, align 4
@REG_RX_PKT_LIMIT = common dso_local global i64 0, align 8
@WLAN_RXPKT_MAX_SZ_512 = common dso_local global i32 0, align 4
@REG_TCR = common dso_local global i64 0, align 8
@WLAN_TX_FUNC_CFG2 = common dso_local global i32 0, align 4
@WLAN_TX_FUNC_CFG1 = common dso_local global i32 0, align 4
@REG_WMAC_OPTION_FUNCTION = common dso_local global i64 0, align 8
@WLAN_MAC_OPT_FUNC2 = common dso_local global i32 0, align 4
@WLAN_MAC_OPT_NORM_FUNC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @rtw8822b_mac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822b_mac_init(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %4 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %5 = load i64, i64* @REG_SW_AMPDU_BURST_MODE_CTRL, align 8
  %6 = load i32, i32* @BIT_PRE_TX_CMD, align 4
  %7 = call i32 @rtw_write8_clr(%struct.rtw_dev* %4, i64 %5, i32 %6)
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %9 = load i64, i64* @REG_AMPDU_MAX_TIME_V1, align 8
  %10 = load i32, i32* @WLAN_AMPDU_MAX_TIME, align 4
  %11 = call i32 @rtw_write8(%struct.rtw_dev* %8, i64 %9, i32 %10)
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %13 = load i32, i32* @REG_TX_HANG_CTRL, align 4
  %14 = load i32, i32* @BIT_EN_EOF_V1, align 4
  %15 = call i32 @rtw_write8_set(%struct.rtw_dev* %12, i32 %13, i32 %14)
  %16 = load i32, i32* @WLAN_RTS_LEN_TH, align 4
  %17 = load i32, i32* @WLAN_RTS_TX_TIME_TH, align 4
  %18 = shl i32 %17, 8
  %19 = or i32 %16, %18
  %20 = load i32, i32* @WLAN_MAX_AGG_PKT_LIMIT, align 4
  %21 = shl i32 %20, 16
  %22 = or i32 %19, %21
  %23 = load i32, i32* @WLAN_RTS_MAX_AGG_PKT_LIMIT, align 4
  %24 = shl i32 %23, 24
  %25 = or i32 %22, %24
  store i32 %25, i32* %3, align 4
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %27 = load i64, i64* @REG_PROT_MODE_CTRL, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @rtw_write32(%struct.rtw_dev* %26, i64 %27, i32 %28)
  %30 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %31 = load i64, i64* @REG_BAR_MODE_CTRL, align 8
  %32 = add nsw i64 %31, 2
  %33 = load i32, i32* @WLAN_BAR_RETRY_LIMIT, align 4
  %34 = load i32, i32* @WLAN_RA_TRY_RATE_AGG_LIMIT, align 4
  %35 = shl i32 %34, 8
  %36 = or i32 %33, %35
  %37 = call i32 @rtw_write16(%struct.rtw_dev* %30, i64 %32, i32 %36)
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %39 = load i64, i64* @REG_FAST_EDCA_VOVI_SETTING, align 8
  %40 = load i32, i32* @FAST_EDCA_VO_TH, align 4
  %41 = call i32 @rtw_write8(%struct.rtw_dev* %38, i64 %39, i32 %40)
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %43 = load i64, i64* @REG_FAST_EDCA_VOVI_SETTING, align 8
  %44 = add nsw i64 %43, 2
  %45 = load i32, i32* @FAST_EDCA_VI_TH, align 4
  %46 = call i32 @rtw_write8(%struct.rtw_dev* %42, i64 %44, i32 %45)
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %48 = load i64, i64* @REG_FAST_EDCA_BEBK_SETTING, align 8
  %49 = load i32, i32* @FAST_EDCA_BE_TH, align 4
  %50 = call i32 @rtw_write8(%struct.rtw_dev* %47, i64 %48, i32 %49)
  %51 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %52 = load i64, i64* @REG_FAST_EDCA_BEBK_SETTING, align 8
  %53 = add nsw i64 %52, 2
  %54 = load i32, i32* @FAST_EDCA_BK_TH, align 4
  %55 = call i32 @rtw_write8(%struct.rtw_dev* %51, i64 %53, i32 %54)
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %57 = load i64, i64* @REG_TIMER0_SRC_SEL, align 8
  %58 = load i32, i32* @BIT_TSFT_SEL_TIMER0, align 4
  %59 = call i32 @rtw_write8_clr(%struct.rtw_dev* %56, i64 %57, i32 %58)
  %60 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %61 = load i64, i64* @REG_TXPAUSE, align 8
  %62 = call i32 @rtw_write16(%struct.rtw_dev* %60, i64 %61, i32 0)
  %63 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %64 = load i64, i64* @REG_SLOT, align 8
  %65 = load i32, i32* @WLAN_SLOT_TIME, align 4
  %66 = call i32 @rtw_write8(%struct.rtw_dev* %63, i64 %64, i32 %65)
  %67 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %68 = load i64, i64* @REG_PIFS, align 8
  %69 = load i32, i32* @WLAN_PIFS_TIME, align 4
  %70 = call i32 @rtw_write8(%struct.rtw_dev* %67, i64 %68, i32 %69)
  %71 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %72 = load i64, i64* @REG_SIFS, align 8
  %73 = load i32, i32* @WLAN_SIFS_CFG, align 4
  %74 = call i32 @rtw_write32(%struct.rtw_dev* %71, i64 %72, i32 %73)
  %75 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %76 = load i64, i64* @REG_EDCA_VO_PARAM, align 8
  %77 = add nsw i64 %76, 2
  %78 = load i32, i32* @WLAN_VO_TXOP_LIMIT, align 4
  %79 = call i32 @rtw_write16(%struct.rtw_dev* %75, i64 %77, i32 %78)
  %80 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %81 = load i64, i64* @REG_EDCA_VI_PARAM, align 8
  %82 = add nsw i64 %81, 2
  %83 = load i32, i32* @WLAN_VI_TXOP_LIMIT, align 4
  %84 = call i32 @rtw_write16(%struct.rtw_dev* %80, i64 %82, i32 %83)
  %85 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %86 = load i64, i64* @REG_RD_NAV_NXT, align 8
  %87 = load i32, i32* @WLAN_NAV_CFG, align 4
  %88 = call i32 @rtw_write32(%struct.rtw_dev* %85, i64 %86, i32 %87)
  %89 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %90 = load i64, i64* @REG_RXTSF_OFFSET_CCK, align 8
  %91 = load i32, i32* @WLAN_RX_TSF_CFG, align 4
  %92 = call i32 @rtw_write16(%struct.rtw_dev* %89, i64 %90, i32 %91)
  %93 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %94 = load i32, i32* @REG_BCN_CTRL, align 4
  %95 = load i32, i32* @BIT_EN_BCN_FUNCTION, align 4
  %96 = call i32 @rtw_write8_set(%struct.rtw_dev* %93, i32 %94, i32 %95)
  %97 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %98 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %99 = load i32, i32* @WLAN_TBTT_TIME, align 4
  %100 = call i32 @rtw_write32(%struct.rtw_dev* %97, i64 %98, i32 %99)
  %101 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %102 = load i64, i64* @REG_DRVERLYINT, align 8
  %103 = load i32, i32* @WLAN_DRV_EARLY_INT, align 4
  %104 = call i32 @rtw_write8(%struct.rtw_dev* %101, i64 %102, i32 %103)
  %105 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %106 = load i64, i64* @REG_BCNDMATIM, align 8
  %107 = load i32, i32* @WLAN_BCN_DMA_TIME, align 4
  %108 = call i32 @rtw_write8(%struct.rtw_dev* %105, i64 %106, i32 %107)
  %109 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %110 = load i64, i64* @REG_TX_PTCL_CTRL, align 8
  %111 = add nsw i64 %110, 1
  %112 = load i32, i32* @BIT_SIFS_BK_EN, align 4
  %113 = ashr i32 %112, 8
  %114 = call i32 @rtw_write8_clr(%struct.rtw_dev* %109, i64 %111, i32 %113)
  %115 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %116 = load i64, i64* @REG_RXFLTMAP0, align 8
  %117 = load i32, i32* @WLAN_RX_FILTER0, align 4
  %118 = call i32 @rtw_write32(%struct.rtw_dev* %115, i64 %116, i32 %117)
  %119 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %120 = load i64, i64* @REG_RXFLTMAP2, align 8
  %121 = load i32, i32* @WLAN_RX_FILTER2, align 4
  %122 = call i32 @rtw_write16(%struct.rtw_dev* %119, i64 %120, i32 %121)
  %123 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %124 = load i64, i64* @REG_RCR, align 8
  %125 = load i32, i32* @WLAN_RCR_CFG, align 4
  %126 = call i32 @rtw_write32(%struct.rtw_dev* %123, i64 %124, i32 %125)
  %127 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %128 = load i64, i64* @REG_RX_PKT_LIMIT, align 8
  %129 = load i32, i32* @WLAN_RXPKT_MAX_SZ_512, align 4
  %130 = call i32 @rtw_write8(%struct.rtw_dev* %127, i64 %128, i32 %129)
  %131 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %132 = load i64, i64* @REG_TCR, align 8
  %133 = add nsw i64 %132, 2
  %134 = load i32, i32* @WLAN_TX_FUNC_CFG2, align 4
  %135 = call i32 @rtw_write8(%struct.rtw_dev* %131, i64 %133, i32 %134)
  %136 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %137 = load i64, i64* @REG_TCR, align 8
  %138 = add nsw i64 %137, 1
  %139 = load i32, i32* @WLAN_TX_FUNC_CFG1, align 4
  %140 = call i32 @rtw_write8(%struct.rtw_dev* %136, i64 %138, i32 %139)
  %141 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %142 = load i64, i64* @REG_WMAC_OPTION_FUNCTION, align 8
  %143 = add nsw i64 %142, 8
  %144 = load i32, i32* @WLAN_MAC_OPT_FUNC2, align 4
  %145 = call i32 @rtw_write32(%struct.rtw_dev* %141, i64 %143, i32 %144)
  %146 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %147 = load i64, i64* @REG_WMAC_OPTION_FUNCTION, align 8
  %148 = add nsw i64 %147, 4
  %149 = load i32, i32* @WLAN_MAC_OPT_NORM_FUNC1, align 4
  %150 = call i32 @rtw_write8(%struct.rtw_dev* %146, i64 %148, i32 %149)
  ret i32 0
}

declare dso_local i32 @rtw_write8_clr(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @rtw_write8_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @rtw_write16(%struct.rtw_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
