; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_hw_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_hw_configure.c"
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
@REG_SLOT = common dso_local global i32 0, align 4
@REG_FWHW_TXQ_CTRL = common dso_local global i32 0, align 4
@REG_RETRY_LIMIT = common dso_local global i32 0, align 4
@REG_BAR_MODE_CTRL = common dso_local global i64 0, align 8
@REG_DARFRC = common dso_local global i64 0, align 8
@REG_RARFRC = common dso_local global i64 0, align 8
@REG_ATIMWND = common dso_local global i32 0, align 4
@REG_BCN_MAX_ERR = common dso_local global i32 0, align 4
@REG_BCN_CTRL = common dso_local global i32 0, align 4
@REG_BCN_CTRL_1 = common dso_local global i32 0, align 4
@REG_TBTT_PROHIBIT = common dso_local global i32 0, align 4
@REG_PIFS = common dso_local global i32 0, align 4
@REG_AGGR_BREAK_TIME = common dso_local global i32 0, align 4
@REG_NAV_PROT_LEN = common dso_local global i32 0, align 4
@REG_PROT_MODE_CTRL = common dso_local global i32 0, align 4
@REG_FAST_EDCA_CTRL = common dso_local global i64 0, align 8
@REG_ACKTO = common dso_local global i32 0, align 4
@REG_SPEC_SIFS = common dso_local global i32 0, align 4
@REG_MAC_SPEC_SIFS = common dso_local global i32 0, align 4
@REG_SIFS_CTX = common dso_local global i32 0, align 4
@REG_SIFS_TRX = common dso_local global i32 0, align 4
@REG_RX_PKT_LIMIT = common dso_local global i32 0, align 4
@REG_MAX_AGGR_NUM = common dso_local global i32 0, align 4
@REG_MAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92ee_hw_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_hw_configure(%struct.ieee80211_hw* %0) #0 {
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
  %20 = call i32 @rtl_write_dword(%struct.rtl_priv* %18, i64 %19, i32 16)
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = load i64, i64* @REG_ARFR0, align 8
  %23 = add nsw i64 %22, 4
  %24 = call i32 @rtl_write_dword(%struct.rtl_priv* %21, i64 %23, i32 1041231872)
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %26 = load i64, i64* @REG_ARFR1, align 8
  %27 = call i32 @rtl_write_dword(%struct.rtl_priv* %25, i64 %26, i32 16)
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = load i64, i64* @REG_ARFR1, align 8
  %30 = add nsw i64 %29, 4
  %31 = call i32 @rtl_write_dword(%struct.rtl_priv* %28, i64 %30, i32 1044480)
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %33 = load i32, i32* @REG_SLOT, align 4
  %34 = call i32 @rtl_write_byte(%struct.rtl_priv* %32, i32 %33, i32 9)
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %36 = load i32, i32* @REG_FWHW_TXQ_CTRL, align 4
  %37 = call i32 @rtl_write_word(%struct.rtl_priv* %35, i32 %36, i32 8064)
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %39 = load i32, i32* @REG_RETRY_LIMIT, align 4
  %40 = call i32 @rtl_write_word(%struct.rtl_priv* %38, i32 %39, i32 1799)
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %42 = load i64, i64* @REG_BAR_MODE_CTRL, align 8
  %43 = call i32 @rtl_write_dword(%struct.rtl_priv* %41, i64 %42, i32 33685503)
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = load i64, i64* @REG_DARFRC, align 8
  %46 = call i32 @rtl_write_dword(%struct.rtl_priv* %44, i64 %45, i32 16777216)
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %48 = load i64, i64* @REG_DARFRC, align 8
  %49 = add nsw i64 %48, 4
  %50 = call i32 @rtl_write_dword(%struct.rtl_priv* %47, i64 %49, i32 117835012)
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %52 = load i64, i64* @REG_RARFRC, align 8
  %53 = call i32 @rtl_write_dword(%struct.rtl_priv* %51, i64 %52, i32 16777216)
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %55 = load i64, i64* @REG_RARFRC, align 8
  %56 = add nsw i64 %55, 4
  %57 = call i32 @rtl_write_dword(%struct.rtl_priv* %54, i64 %56, i32 117835012)
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %59 = load i32, i32* @REG_ATIMWND, align 4
  %60 = call i32 @rtl_write_byte(%struct.rtl_priv* %58, i32 %59, i32 2)
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %62 = load i32, i32* @REG_BCN_MAX_ERR, align 4
  %63 = call i32 @rtl_write_byte(%struct.rtl_priv* %61, i32 %62, i32 255)
  %64 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %65 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %64, i32 0, i32 0
  store i32 29, i32* %65, align 4
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %67 = load i32, i32* @REG_BCN_CTRL, align 4
  %68 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %69 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @rtl_write_byte(%struct.rtl_priv* %66, i32 %67, i32 %70)
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %73 = load i32, i32* @REG_BCN_CTRL_1, align 4
  %74 = call i32 @rtl_write_byte(%struct.rtl_priv* %72, i32 %73, i32 0)
  %75 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %76 = load i32, i32* @REG_TBTT_PROHIBIT, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @rtl_write_byte(%struct.rtl_priv* %75, i32 %77, i32 255)
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = load i32, i32* @REG_PIFS, align 4
  %81 = call i32 @rtl_write_byte(%struct.rtl_priv* %79, i32 %80, i32 0)
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %83 = load i32, i32* @REG_AGGR_BREAK_TIME, align 4
  %84 = call i32 @rtl_write_byte(%struct.rtl_priv* %82, i32 %83, i32 22)
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %86 = load i32, i32* @REG_NAV_PROT_LEN, align 4
  %87 = call i32 @rtl_write_word(%struct.rtl_priv* %85, i32 %86, i32 64)
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %89 = load i32, i32* @REG_PROT_MODE_CTRL, align 4
  %90 = call i32 @rtl_write_word(%struct.rtl_priv* %88, i32 %89, i32 2303)
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %92 = load i64, i64* @REG_FAST_EDCA_CTRL, align 8
  %93 = call i32 @rtl_write_dword(%struct.rtl_priv* %91, i64 %92, i32 50882150)
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %95 = load i32, i32* @REG_ACKTO, align 4
  %96 = call i32 @rtl_write_byte(%struct.rtl_priv* %94, i32 %95, i32 64)
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %98 = load i32, i32* @REG_SPEC_SIFS, align 4
  %99 = call i32 @rtl_write_word(%struct.rtl_priv* %97, i32 %98, i32 4106)
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %101 = load i32, i32* @REG_MAC_SPEC_SIFS, align 4
  %102 = call i32 @rtl_write_word(%struct.rtl_priv* %100, i32 %101, i32 4106)
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %104 = load i32, i32* @REG_SIFS_CTX, align 4
  %105 = call i32 @rtl_write_word(%struct.rtl_priv* %103, i32 %104, i32 4106)
  %106 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %107 = load i32, i32* @REG_SIFS_TRX, align 4
  %108 = call i32 @rtl_write_word(%struct.rtl_priv* %106, i32 %107, i32 4106)
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %110 = call i32 @rtl_write_byte(%struct.rtl_priv* %109, i32 1223, i32 128)
  %111 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %112 = load i32, i32* @REG_RX_PKT_LIMIT, align 4
  %113 = call i32 @rtl_write_byte(%struct.rtl_priv* %111, i32 %112, i32 32)
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %115 = load i32, i32* @REG_MAX_AGGR_NUM, align 4
  %116 = call i32 @rtl_write_word(%struct.rtl_priv* %114, i32 %115, i32 5911)
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %118 = load i64, i64* @REG_MAR, align 8
  %119 = call i32 @rtl_write_dword(%struct.rtl_priv* %117, i64 %118, i32 -1)
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %121 = load i64, i64* @REG_MAR, align 8
  %122 = add nsw i64 %121, 4
  %123 = call i32 @rtl_write_dword(%struct.rtl_priv* %120, i64 %122, i32 -1)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
