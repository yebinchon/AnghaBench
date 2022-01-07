; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_hw_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_hw_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_pci = type { i32 }

@RATE_ALL_CCK = common dso_local global i32 0, align 4
@RATE_ALL_OFDM_AG = common dso_local global i32 0, align 4
@REG_RRSR = common dso_local global i64 0, align 8
@REG_ARFR0 = common dso_local global i64 0, align 8
@REG_ARFR1 = common dso_local global i64 0, align 8
@REG_ARFR2 = common dso_local global i64 0, align 8
@REG_ARFR3 = common dso_local global i64 0, align 8
@REG_FWHW_TXQ_CTRL = common dso_local global i32 0, align 4
@REG_AMPDU_MAX_TIME = common dso_local global i64 0, align 8
@REG_RL = common dso_local global i32 0, align 4
@REG_DARFRC = common dso_local global i64 0, align 8
@REG_RARFRC = common dso_local global i64 0, align 8
@REG_BCN_CTRL = common dso_local global i64 0, align 8
@REG_TBTT_PROHIBIT = common dso_local global i64 0, align 8
@REG_NAV_PROT_LEN = common dso_local global i32 0, align 4
@REG_FAST_EDCA_CTRL = common dso_local global i64 0, align 8
@REG_HT_SINGLE_AMPDU = common dso_local global i64 0, align 8
@REG_RX_PKT_LIMIT = common dso_local global i64 0, align 8
@REG_MAX_AGGR_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8821ae_hw_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_hw_configure(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_pci* @rtl_pcidev(i32 %9)
  store %struct.rtl_pci* %10, %struct.rtl_pci** %4, align 8
  %11 = load i32, i32* @RATE_ALL_CCK, align 4
  %12 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = load i64, i64* @REG_RRSR, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @rtl_write_dword(%struct.rtl_priv* %14, i64 %15, i32 %16)
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %19 = load i64, i64* @REG_ARFR0, align 8
  %20 = add nsw i64 %19, 4
  %21 = call i32 @rtl_write_dword(%struct.rtl_priv* %18, i64 %20, i32 -4096)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %23 = load i64, i64* @REG_ARFR1, align 8
  %24 = add nsw i64 %23, 4
  %25 = call i32 @rtl_write_dword(%struct.rtl_priv* %22, i64 %24, i32 4190208)
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = load i64, i64* @REG_ARFR2, align 8
  %28 = call i32 @rtl_write_dword(%struct.rtl_priv* %26, i64 %27, i32 21)
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = load i64, i64* @REG_ARFR2, align 8
  %31 = add nsw i64 %30, 4
  %32 = call i32 @rtl_write_dword(%struct.rtl_priv* %29, i64 %31, i32 4190208)
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = load i64, i64* @REG_ARFR3, align 8
  %35 = call i32 @rtl_write_dword(%struct.rtl_priv* %33, i64 %34, i32 21)
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = load i64, i64* @REG_ARFR3, align 8
  %38 = add nsw i64 %37, 4
  %39 = call i32 @rtl_write_dword(%struct.rtl_priv* %36, i64 %38, i32 -3149824)
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %41 = load i32, i32* @REG_FWHW_TXQ_CTRL, align 4
  %42 = call i32 @rtl_write_word(%struct.rtl_priv* %40, i32 %41, i32 7936)
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = load i64, i64* @REG_AMPDU_MAX_TIME, align 8
  %45 = call i32 @rtl_write_byte(%struct.rtl_priv* %43, i64 %44, i32 112)
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %47 = load i32, i32* @REG_RL, align 4
  %48 = call i32 @rtl_write_word(%struct.rtl_priv* %46, i32 %47, i32 1799)
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = load i64, i64* @REG_DARFRC, align 8
  %51 = call i32 @rtl_write_dword(%struct.rtl_priv* %49, i64 %50, i32 16777216)
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %53 = load i64, i64* @REG_DARFRC, align 8
  %54 = add nsw i64 %53, 4
  %55 = call i32 @rtl_write_dword(%struct.rtl_priv* %52, i64 %54, i32 117835012)
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %57 = load i64, i64* @REG_RARFRC, align 8
  %58 = call i32 @rtl_write_dword(%struct.rtl_priv* %56, i64 %57, i32 16777216)
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %60 = load i64, i64* @REG_RARFRC, align 8
  %61 = add nsw i64 %60, 4
  %62 = call i32 @rtl_write_dword(%struct.rtl_priv* %59, i64 %61, i32 117835012)
  %63 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %64 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %63, i32 0, i32 0
  store i32 29, i32* %64, align 4
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %66 = load i64, i64* @REG_BCN_CTRL, align 8
  %67 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %68 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rtl_write_byte(%struct.rtl_priv* %65, i64 %66, i32 %69)
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %72 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %73 = add nsw i64 %72, 1
  %74 = call i32 @rtl_write_byte(%struct.rtl_priv* %71, i64 %73, i32 255)
  %75 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %76 = load i32, i32* @REG_NAV_PROT_LEN, align 4
  %77 = call i32 @rtl_write_word(%struct.rtl_priv* %75, i32 %76, i32 64)
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %79 = load i64, i64* @REG_FAST_EDCA_CTRL, align 8
  %80 = call i32 @rtl_write_dword(%struct.rtl_priv* %78, i64 %79, i32 50882150)
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %82 = load i64, i64* @REG_HT_SINGLE_AMPDU, align 8
  %83 = call i32 @rtl_write_byte(%struct.rtl_priv* %81, i64 %82, i32 128)
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %85 = load i64, i64* @REG_RX_PKT_LIMIT, align 8
  %86 = call i32 @rtl_write_byte(%struct.rtl_priv* %84, i64 %85, i32 32)
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %88 = load i32, i32* @REG_MAX_AGGR_NUM, align 4
  %89 = call i32 @rtl_write_word(%struct.rtl_priv* %87, i32 %88, i32 7967)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
