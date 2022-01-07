; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c__rtl92s_phy_set_rfhalt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c__rtl92s_phy_set_rfhalt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64 }
%struct.rtl_ps_ctl = type { i64 }

@LDOV12D_CTRL = common dso_local global i32 0, align 4
@SPS1_CTRL = common dso_local global i32 0, align 4
@TXPAUSE = common dso_local global i32 0, align 4
@CMDR = common dso_local global i32 0, align 4
@PHY_CCA = common dso_local global i32 0, align 4
@REG_SYS_FUNC_EN = common dso_local global i32 0, align 4
@SYS_CLKR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Switch ctrl path fail\0A\00", align 1
@RF_CHANGE_BY_IPS = common dso_local global i64 0, align 8
@AFE_PLL_CTRL = common dso_local global i32 0, align 4
@LDOA15_CTRL = common dso_local global i32 0, align 4
@AFE_XTAL_CTRL = common dso_local global i32 0, align 4
@RT_RF_OFF_LEVL_HALT_NIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92s_phy_set_rfhalt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_phy_set_rfhalt(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_ps_ctl*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %10)
  store %struct.rtl_hal* %11, %struct.rtl_hal** %4, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %13)
  store %struct.rtl_ps_ctl* %14, %struct.rtl_ps_ctl** %5, align 8
  %15 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %16 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = call i32 @rtl_write_byte(%struct.rtl_priv* %20, i32 1376, i32 0)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %24 = load i32, i32* @LDOV12D_CTRL, align 4
  %25 = call i32 @rtl_read_byte(%struct.rtl_priv* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = call i32 @BIT(i32 0)
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = load i32, i32* @LDOV12D_CTRL, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @rtl_write_byte(%struct.rtl_priv* %29, i32 %30, i32 %31)
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = load i32, i32* @SPS1_CTRL, align 4
  %35 = call i32 @rtl_write_byte(%struct.rtl_priv* %33, i32 %34, i32 0)
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = load i32, i32* @TXPAUSE, align 4
  %38 = call i32 @rtl_write_byte(%struct.rtl_priv* %36, i32 %37, i32 255)
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %40 = load i32, i32* @CMDR, align 4
  %41 = call i32 @rtl_write_word(%struct.rtl_priv* %39, i32 %40, i32 22524)
  %42 = call i32 @udelay(i32 100)
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = load i32, i32* @CMDR, align 4
  %45 = call i32 @rtl_write_word(%struct.rtl_priv* %43, i32 %44, i32 30716)
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %47 = load i32, i32* @PHY_CCA, align 4
  %48 = call i32 @rtl_write_byte(%struct.rtl_priv* %46, i32 %47, i32 0)
  %49 = call i32 @udelay(i32 10)
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %51 = load i32, i32* @CMDR, align 4
  %52 = call i32 @rtl_write_word(%struct.rtl_priv* %50, i32 %51, i32 14332)
  %53 = call i32 @udelay(i32 10)
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %55 = load i32, i32* @CMDR, align 4
  %56 = call i32 @rtl_write_word(%struct.rtl_priv* %54, i32 %55, i32 30716)
  %57 = call i32 @udelay(i32 10)
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %59 = load i32, i32* @CMDR, align 4
  %60 = call i32 @rtl_write_word(%struct.rtl_priv* %58, i32 %59, i32 22524)
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %62 = load i32, i32* @CMDR, align 4
  %63 = call i32 @rtl_write_word(%struct.rtl_priv* %61, i32 %62, i32 0)
  %64 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %65 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %22
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %70 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @rtl_read_byte(%struct.rtl_priv* %69, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = call i32 @BIT(i32 0)
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %78 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @rtl_write_byte(%struct.rtl_priv* %77, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %68, %22
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %84 = load i32, i32* @SYS_CLKR, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i32 @rtl_read_byte(%struct.rtl_priv* %83, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @BIT(i32 7)
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %82
  %92 = call i32 @BIT(i32 6)
  %93 = call i32 @BIT(i32 7)
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @_rtl92s_set_sysclk(%struct.ieee80211_hw* %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %91
  %103 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %143

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %82
  %106 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %107 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @RF_CHANGE_BY_IPS, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %113 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %118 = call i32 @rtl_write_byte(%struct.rtl_priv* %117, i32 3, i32 249)
  br label %122

119:                                              ; preds = %111, %105
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %121 = call i32 @rtl_write_byte(%struct.rtl_priv* %120, i32 3, i32 249)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %124 = load i32, i32* @SYS_CLKR, align 4
  %125 = add nsw i32 %124, 1
  %126 = call i32 @rtl_write_byte(%struct.rtl_priv* %123, i32 %125, i32 112)
  %127 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %128 = load i32, i32* @AFE_PLL_CTRL, align 4
  %129 = add nsw i32 %128, 1
  %130 = call i32 @rtl_write_byte(%struct.rtl_priv* %127, i32 %129, i32 104)
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %132 = load i32, i32* @AFE_PLL_CTRL, align 4
  %133 = call i32 @rtl_write_byte(%struct.rtl_priv* %131, i32 %132, i32 0)
  %134 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %135 = load i32, i32* @LDOA15_CTRL, align 4
  %136 = call i32 @rtl_write_byte(%struct.rtl_priv* %134, i32 %135, i32 52)
  %137 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %138 = load i32, i32* @AFE_XTAL_CTRL, align 4
  %139 = call i32 @rtl_write_byte(%struct.rtl_priv* %137, i32 %138, i32 14)
  %140 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %141 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %142 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %140, i32 %141)
  br label %143

143:                                              ; preds = %122, %102
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @_rtl92s_set_sysclk(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
