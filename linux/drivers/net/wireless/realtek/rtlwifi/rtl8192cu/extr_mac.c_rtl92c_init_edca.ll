; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_mac.c_rtl92c_init_edca.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_mac.c_rtl92c_init_edca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_RD_CTRL = common dso_local global i32 0, align 4
@DIS_EDCA_CNT_DWN = common dso_local global i32 0, align 4
@REG_SIFS_CCK = common dso_local global i32 0, align 4
@REG_SIFS_OFDM = common dso_local global i32 0, align 4
@REG_PROT_MODE_CTRL = common dso_local global i32 0, align 4
@REG_BAR_MODE_CTRL = common dso_local global i32 0, align 4
@REG_EDCA_BE_PARAM = common dso_local global i32 0, align 4
@REG_EDCA_BK_PARAM = common dso_local global i32 0, align 4
@REG_EDCA_VI_PARAM = common dso_local global i32 0, align 4
@REG_EDCA_VO_PARAM = common dso_local global i32 0, align 4
@REG_PIFS = common dso_local global i32 0, align 4
@REG_AGGR_BREAK_TIME = common dso_local global i32 0, align 4
@REG_NAV_PROT_LEN = common dso_local global i32 0, align 4
@REG_BCNDMATIM = common dso_local global i32 0, align 4
@REG_ATIMWND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92c_init_edca(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %4, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %8 = load i32, i32* @REG_RD_CTRL, align 4
  %9 = call i32 @rtl_read_word(%struct.rtl_priv* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @DIS_EDCA_CNT_DWN, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %14 = load i32, i32* @REG_RD_CTRL, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @rtl_write_word(%struct.rtl_priv* %13, i32 %14, i32 %15)
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call i32 @rtl92c_set_cck_sifs(%struct.ieee80211_hw* %17, i32 10, i32 10)
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %20 = call i32 @rtl92c_set_ofdm_sifs(%struct.ieee80211_hw* %19, i32 14, i32 14)
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %22 = load i32, i32* @REG_SIFS_CCK, align 4
  %23 = call i32 @rtl_write_word(%struct.rtl_priv* %21, i32 %22, i32 2570)
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %25 = load i32, i32* @REG_SIFS_OFDM, align 4
  %26 = call i32 @rtl_write_word(%struct.rtl_priv* %24, i32 %25, i32 4112)
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %28 = load i32, i32* @REG_PROT_MODE_CTRL, align 4
  %29 = call i32 @rtl_write_word(%struct.rtl_priv* %27, i32 %28, i32 516)
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %31 = load i32, i32* @REG_BAR_MODE_CTRL, align 4
  %32 = call i32 @rtl_write_dword(%struct.rtl_priv* %30, i32 %31, i32 81924)
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %34 = load i32, i32* @REG_EDCA_BE_PARAM, align 4
  %35 = call i32 @rtl_write_dword(%struct.rtl_priv* %33, i32 %34, i32 6202411)
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %37 = load i32, i32* @REG_EDCA_BK_PARAM, align 4
  %38 = call i32 @rtl_write_dword(%struct.rtl_priv* %36, i32 %37, i32 42063)
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %40 = load i32, i32* @REG_EDCA_VI_PARAM, align 4
  %41 = call i32 @rtl_write_dword(%struct.rtl_priv* %39, i32 %40, i32 6202148)
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %43 = load i32, i32* @REG_EDCA_VO_PARAM, align 4
  %44 = call i32 @rtl_write_dword(%struct.rtl_priv* %42, i32 %43, i32 3121702)
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %46 = load i32, i32* @REG_PIFS, align 4
  %47 = call i32 @rtl_write_byte(%struct.rtl_priv* %45, i32 %46, i32 28)
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %49 = load i32, i32* @REG_AGGR_BREAK_TIME, align 4
  %50 = call i32 @rtl_write_byte(%struct.rtl_priv* %48, i32 %49, i32 22)
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %52 = load i32, i32* @REG_NAV_PROT_LEN, align 4
  %53 = call i32 @rtl_write_word(%struct.rtl_priv* %51, i32 %52, i32 64)
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %55 = load i32, i32* @REG_BCNDMATIM, align 4
  %56 = call i32 @rtl_write_byte(%struct.rtl_priv* %54, i32 %55, i32 2)
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %58 = load i32, i32* @REG_ATIMWND, align 4
  %59 = call i32 @rtl_write_byte(%struct.rtl_priv* %57, i32 %58, i32 2)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_word(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl92c_set_cck_sifs(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl92c_set_ofdm_sifs(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
