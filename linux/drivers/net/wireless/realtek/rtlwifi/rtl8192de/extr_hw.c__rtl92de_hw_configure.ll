; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c__rtl92de_hw_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c__rtl92de_hw_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_pci = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_hal = type { i64, i32 }

@BW_OPMODE_20MHZ = common dso_local global i32 0, align 4
@RATE_ALL_CCK = common dso_local global i32 0, align 4
@RATE_ALL_OFDM_AG = common dso_local global i32 0, align 4
@REG_INIRTS_RATE_SEL = common dso_local global i64 0, align 8
@REG_BWOPMODE = common dso_local global i64 0, align 8
@REG_RRSR = common dso_local global i64 0, align 8
@REG_SLOT = common dso_local global i64 0, align 8
@REG_AMPDU_MIN_SPACE = common dso_local global i64 0, align 8
@REG_FWHW_TXQ_CTRL = common dso_local global i32 0, align 4
@REG_RL = common dso_local global i32 0, align 4
@REG_BAR_MODE_CTRL = common dso_local global i64 0, align 8
@REG_HWSEQ_CTRL = common dso_local global i64 0, align 8
@REG_DARFRC = common dso_local global i64 0, align 8
@REG_RARFRC = common dso_local global i64 0, align 8
@DUALMAC_DUALPHY = common dso_local global i64 0, align 8
@REG_AGGLEN_LMT = common dso_local global i64 0, align 8
@DUALMAC_SINGLEPHY = common dso_local global i64 0, align 8
@REG_ATIMWND = common dso_local global i64 0, align 8
@REG_BCN_MAX_ERR = common dso_local global i64 0, align 8
@REG_BCN_CTRL = common dso_local global i64 0, align 8
@REG_TBTT_PROHIBIT = common dso_local global i64 0, align 8
@REG_PIFS = common dso_local global i64 0, align 8
@REG_AGGR_BREAK_TIME = common dso_local global i64 0, align 8
@REG_NAV_PROT_LEN = common dso_local global i32 0, align 4
@REG_FAST_EDCA_CTRL = common dso_local global i32 0, align 4
@REG_ACKTO = common dso_local global i64 0, align 8
@REG_SPEC_SIFS = common dso_local global i32 0, align 4
@REG_MAC_SPEC_SIFS = common dso_local global i32 0, align 4
@REG_SIFS_CTX = common dso_local global i32 0, align 4
@REG_SIFS_TRX = common dso_local global i32 0, align 4
@REG_MAR = common dso_local global i64 0, align 8
@MAX_MSS_DENSITY_1T = common dso_local global i32 0, align 4
@MAX_MSS_DENSITY_2T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92de_hw_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92de_hw_configure(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_pci*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_pci* @rtl_pcidev(i32 %9)
  store %struct.rtl_pci* %10, %struct.rtl_pci** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %4, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %14)
  store %struct.rtl_hal* %15, %struct.rtl_hal** %5, align 8
  %16 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @RATE_ALL_CCK, align 4
  %18 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %21 = load i64, i64* @REG_INIRTS_RATE_SEL, align 8
  %22 = call i32 @rtl_write_byte(%struct.rtl_priv* %20, i64 %21, i32 8)
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %24 = load i64, i64* @REG_BWOPMODE, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @rtl_write_byte(%struct.rtl_priv* %23, i64 %24, i32 %25)
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %28 = load i64, i64* @REG_RRSR, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @rtl_write_dword(%struct.rtl_priv* %27, i64 %28, i32 %29)
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %32 = load i64, i64* @REG_SLOT, align 8
  %33 = call i32 @rtl_write_byte(%struct.rtl_priv* %31, i64 %32, i32 9)
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %35 = load i64, i64* @REG_AMPDU_MIN_SPACE, align 8
  %36 = call i32 @rtl_write_byte(%struct.rtl_priv* %34, i64 %35, i32 0)
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %38 = load i32, i32* @REG_FWHW_TXQ_CTRL, align 4
  %39 = call i32 @rtl_write_word(%struct.rtl_priv* %37, i32 %38, i32 8064)
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %41 = load i32, i32* @REG_RL, align 4
  %42 = call i32 @rtl_write_word(%struct.rtl_priv* %40, i32 %41, i32 1799)
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %44 = load i64, i64* @REG_BAR_MODE_CTRL, align 8
  %45 = call i32 @rtl_write_dword(%struct.rtl_priv* %43, i64 %44, i32 33630210)
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %47 = load i64, i64* @REG_HWSEQ_CTRL, align 8
  %48 = call i32 @rtl_write_byte(%struct.rtl_priv* %46, i64 %47, i32 255)
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %50 = load i64, i64* @REG_DARFRC, align 8
  %51 = call i32 @rtl_write_dword(%struct.rtl_priv* %49, i64 %50, i32 16777216)
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %53 = load i64, i64* @REG_DARFRC, align 8
  %54 = add nsw i64 %53, 4
  %55 = call i32 @rtl_write_dword(%struct.rtl_priv* %52, i64 %54, i32 117835012)
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %57 = load i64, i64* @REG_RARFRC, align 8
  %58 = call i32 @rtl_write_dword(%struct.rtl_priv* %56, i64 %57, i32 16777216)
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %60 = load i64, i64* @REG_RARFRC, align 8
  %61 = add nsw i64 %60, 4
  %62 = call i32 @rtl_write_dword(%struct.rtl_priv* %59, i64 %61, i32 117835012)
  %63 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %64 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %1
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %70 = load i64, i64* @REG_AGGLEN_LMT, align 8
  %71 = call i32 @rtl_write_dword(%struct.rtl_priv* %69, i64 %70, i32 -1183685055)
  br label %87

72:                                               ; preds = %1
  %73 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %74 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DUALMAC_SINGLEPHY, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %80 = load i64, i64* @REG_AGGLEN_LMT, align 8
  %81 = call i32 @rtl_write_dword(%struct.rtl_priv* %79, i64 %80, i32 1717724737)
  br label %86

82:                                               ; preds = %72
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %84 = load i64, i64* @REG_AGGLEN_LMT, align 8
  %85 = call i32 @rtl_write_dword(%struct.rtl_priv* %83, i64 %84, i32 -1183668159)
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %68
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %89 = load i64, i64* @REG_ATIMWND, align 8
  %90 = call i32 @rtl_write_byte(%struct.rtl_priv* %88, i64 %89, i32 2)
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %92 = load i64, i64* @REG_BCN_MAX_ERR, align 8
  %93 = call i32 @rtl_write_byte(%struct.rtl_priv* %91, i64 %92, i32 10)
  %94 = load %struct.rtl_pci*, %struct.rtl_pci** %3, align 8
  %95 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %94, i32 0, i32 0
  store i32 31, i32* %95, align 4
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %97 = load i64, i64* @REG_BCN_CTRL, align 8
  %98 = load %struct.rtl_pci*, %struct.rtl_pci** %3, align 8
  %99 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @rtl_write_byte(%struct.rtl_priv* %96, i64 %97, i32 %100)
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %103 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %104 = add nsw i64 %103, 1
  %105 = call i32 @rtl_write_byte(%struct.rtl_priv* %102, i64 %104, i32 255)
  %106 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %107 = load i64, i64* @REG_PIFS, align 8
  %108 = call i32 @rtl_write_byte(%struct.rtl_priv* %106, i64 %107, i32 28)
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %110 = load i64, i64* @REG_AGGR_BREAK_TIME, align 8
  %111 = call i32 @rtl_write_byte(%struct.rtl_priv* %109, i64 %110, i32 22)
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %113 = load i32, i32* @REG_NAV_PROT_LEN, align 4
  %114 = call i32 @rtl_write_word(%struct.rtl_priv* %112, i32 %113, i32 32)
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %116 = load i32, i32* @REG_FAST_EDCA_CTRL, align 4
  %117 = call i32 @rtl_write_word(%struct.rtl_priv* %115, i32 %116, i32 26214)
  %118 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %119 = load i64, i64* @REG_ACKTO, align 8
  %120 = call i32 @rtl_write_byte(%struct.rtl_priv* %118, i64 %119, i32 64)
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %122 = load i32, i32* @REG_SPEC_SIFS, align 4
  %123 = call i32 @rtl_write_word(%struct.rtl_priv* %121, i32 %122, i32 4112)
  %124 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %125 = load i32, i32* @REG_MAC_SPEC_SIFS, align 4
  %126 = call i32 @rtl_write_word(%struct.rtl_priv* %124, i32 %125, i32 4112)
  %127 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %128 = load i32, i32* @REG_SIFS_CTX, align 4
  %129 = call i32 @rtl_write_word(%struct.rtl_priv* %127, i32 %128, i32 4112)
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %131 = load i32, i32* @REG_SIFS_TRX, align 4
  %132 = call i32 @rtl_write_word(%struct.rtl_priv* %130, i32 %131, i32 4112)
  %133 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %134 = load i64, i64* @REG_MAR, align 8
  %135 = call i32 @rtl_write_dword(%struct.rtl_priv* %133, i64 %134, i32 -1)
  %136 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %137 = load i64, i64* @REG_MAR, align 8
  %138 = add nsw i64 %137, 4
  %139 = call i32 @rtl_write_dword(%struct.rtl_priv* %136, i64 %138, i32 -1)
  %140 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %141 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  switch i32 %143, label %154 [
    i32 130, label %144
    i32 131, label %144
    i32 129, label %149
    i32 128, label %149
  ]

144:                                              ; preds = %87, %87
  %145 = load i32, i32* @MAX_MSS_DENSITY_1T, align 4
  %146 = shl i32 %145, 3
  %147 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %148 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  br label %154

149:                                              ; preds = %87, %87
  %150 = load i32, i32* @MAX_MSS_DENSITY_2T, align 4
  %151 = shl i32 %150, 3
  %152 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %153 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %87, %149, %144
  ret void
}

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
