; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c__rtl8723e_hw_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c__rtl8723e_hw_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_pci = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@BW_OPMODE_20MHZ = common dso_local global i32 0, align 4
@RATE_ALL_CCK = common dso_local global i32 0, align 4
@RATE_ALL_OFDM_AG = common dso_local global i32 0, align 4
@REG_INIRTS_RATE_SEL = common dso_local global i64 0, align 8
@REG_BWOPMODE = common dso_local global i64 0, align 8
@REG_RRSR = common dso_local global i32 0, align 4
@REG_SLOT = common dso_local global i64 0, align 8
@REG_AMPDU_MIN_SPACE = common dso_local global i64 0, align 8
@REG_FWHW_TXQ_CTRL = common dso_local global i32 0, align 4
@REG_RL = common dso_local global i32 0, align 4
@REG_BAR_MODE_CTRL = common dso_local global i32 0, align 4
@REG_HWSEQ_CTRL = common dso_local global i64 0, align 8
@REG_DARFRC = common dso_local global i32 0, align 4
@REG_RARFRC = common dso_local global i32 0, align 4
@BT_CSR_BC4 = common dso_local global i64 0, align 8
@REG_AGGLEN_LMT = common dso_local global i32 0, align 4
@REG_ATIMWND = common dso_local global i64 0, align 8
@REG_BCN_MAX_ERR = common dso_local global i64 0, align 8
@REG_BCN_CTRL = common dso_local global i64 0, align 8
@REG_TBTT_PROHIBIT = common dso_local global i64 0, align 8
@REG_PIFS = common dso_local global i64 0, align 8
@REG_AGGR_BREAK_TIME = common dso_local global i64 0, align 8
@REG_NAV_PROT_LEN = common dso_local global i32 0, align 4
@REG_PROT_MODE_CTRL = common dso_local global i32 0, align 4
@REG_FAST_EDCA_CTRL = common dso_local global i32 0, align 4
@REG_ACKTO = common dso_local global i64 0, align 8
@REG_SPEC_SIFS = common dso_local global i32 0, align 4
@REG_MAC_SPEC_SIFS = common dso_local global i32 0, align 4
@REG_SIFS_CTX = common dso_local global i32 0, align 4
@REG_SIFS_TRX = common dso_local global i32 0, align 4
@REG_MAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8723e_hw_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723e_hw_configure(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_pci*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %7)
  %9 = call %struct.rtl_pci* @rtl_pcidev(i32 %8)
  store %struct.rtl_pci* %9, %struct.rtl_pci** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %4, align 8
  %12 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @RATE_ALL_CCK, align 4
  %14 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %17 = load i64, i64* @REG_INIRTS_RATE_SEL, align 8
  %18 = call i32 @rtl_write_byte(%struct.rtl_priv* %16, i64 %17, i32 8)
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %20 = load i64, i64* @REG_BWOPMODE, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @rtl_write_byte(%struct.rtl_priv* %19, i64 %20, i32 %21)
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %24 = load i32, i32* @REG_RRSR, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @rtl_write_dword(%struct.rtl_priv* %23, i32 %24, i32 %25)
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %28 = load i64, i64* @REG_SLOT, align 8
  %29 = call i32 @rtl_write_byte(%struct.rtl_priv* %27, i64 %28, i32 9)
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %31 = load i64, i64* @REG_AMPDU_MIN_SPACE, align 8
  %32 = call i32 @rtl_write_byte(%struct.rtl_priv* %30, i64 %31, i32 0)
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %34 = load i32, i32* @REG_FWHW_TXQ_CTRL, align 4
  %35 = call i32 @rtl_write_word(%struct.rtl_priv* %33, i32 %34, i32 8064)
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %37 = load i32, i32* @REG_RL, align 4
  %38 = call i32 @rtl_write_word(%struct.rtl_priv* %36, i32 %37, i32 1799)
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %40 = load i32, i32* @REG_BAR_MODE_CTRL, align 4
  %41 = call i32 @rtl_write_dword(%struct.rtl_priv* %39, i32 %40, i32 33630210)
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %43 = load i64, i64* @REG_HWSEQ_CTRL, align 8
  %44 = call i32 @rtl_write_byte(%struct.rtl_priv* %42, i64 %43, i32 255)
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %46 = load i32, i32* @REG_DARFRC, align 4
  %47 = call i32 @rtl_write_dword(%struct.rtl_priv* %45, i32 %46, i32 16777216)
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %49 = load i32, i32* @REG_DARFRC, align 4
  %50 = add nsw i32 %49, 4
  %51 = call i32 @rtl_write_dword(%struct.rtl_priv* %48, i32 %50, i32 117835012)
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %53 = load i32, i32* @REG_RARFRC, align 4
  %54 = call i32 @rtl_write_dword(%struct.rtl_priv* %52, i32 %53, i32 16777216)
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %56 = load i32, i32* @REG_RARFRC, align 4
  %57 = add nsw i32 %56, 4
  %58 = call i32 @rtl_write_dword(%struct.rtl_priv* %55, i32 %57, i32 117835012)
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %1
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %66 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BT_CSR_BC4, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %73 = load i32, i32* @REG_AGGLEN_LMT, align 4
  %74 = call i32 @rtl_write_dword(%struct.rtl_priv* %72, i32 %73, i32 -1757252559)
  br label %79

75:                                               ; preds = %64, %1
  %76 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %77 = load i32, i32* @REG_AGGLEN_LMT, align 4
  %78 = call i32 @rtl_write_dword(%struct.rtl_priv* %76, i32 %77, i32 -1183668159)
  br label %79

79:                                               ; preds = %75, %71
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %81 = load i64, i64* @REG_ATIMWND, align 8
  %82 = call i32 @rtl_write_byte(%struct.rtl_priv* %80, i64 %81, i32 2)
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %84 = load i64, i64* @REG_BCN_MAX_ERR, align 8
  %85 = call i32 @rtl_write_byte(%struct.rtl_priv* %83, i64 %84, i32 255)
  %86 = load %struct.rtl_pci*, %struct.rtl_pci** %3, align 8
  %87 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %86, i32 0, i32 0
  store i32 31, i32* %87, align 4
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %89 = load i64, i64* @REG_BCN_CTRL, align 8
  %90 = load %struct.rtl_pci*, %struct.rtl_pci** %3, align 8
  %91 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @rtl_write_byte(%struct.rtl_priv* %88, i64 %89, i32 %92)
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %95 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %96 = add nsw i64 %95, 1
  %97 = call i32 @rtl_write_byte(%struct.rtl_priv* %94, i64 %96, i32 255)
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %99 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %100 = add nsw i64 %99, 1
  %101 = call i32 @rtl_write_byte(%struct.rtl_priv* %98, i64 %100, i32 255)
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %103 = load i64, i64* @REG_PIFS, align 8
  %104 = call i32 @rtl_write_byte(%struct.rtl_priv* %102, i64 %103, i32 28)
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %106 = load i64, i64* @REG_AGGR_BREAK_TIME, align 8
  %107 = call i32 @rtl_write_byte(%struct.rtl_priv* %105, i64 %106, i32 22)
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %109 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %79
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %115 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @BT_CSR_BC4, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %122 = load i32, i32* @REG_NAV_PROT_LEN, align 4
  %123 = call i32 @rtl_write_word(%struct.rtl_priv* %121, i32 %122, i32 32)
  %124 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %125 = load i32, i32* @REG_PROT_MODE_CTRL, align 4
  %126 = call i32 @rtl_write_word(%struct.rtl_priv* %124, i32 %125, i32 1026)
  br label %134

127:                                              ; preds = %113, %79
  %128 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %129 = load i32, i32* @REG_NAV_PROT_LEN, align 4
  %130 = call i32 @rtl_write_word(%struct.rtl_priv* %128, i32 %129, i32 32)
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %132 = load i32, i32* @REG_NAV_PROT_LEN, align 4
  %133 = call i32 @rtl_write_word(%struct.rtl_priv* %131, i32 %132, i32 32)
  br label %134

134:                                              ; preds = %127, %120
  %135 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %136 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %142 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @BT_CSR_BC4, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %149 = load i32, i32* @REG_FAST_EDCA_CTRL, align 4
  %150 = call i32 @rtl_write_dword(%struct.rtl_priv* %148, i32 %149, i32 50882150)
  br label %155

151:                                              ; preds = %140, %134
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %153 = load i32, i32* @REG_FAST_EDCA_CTRL, align 4
  %154 = call i32 @rtl_write_dword(%struct.rtl_priv* %152, i32 %153, i32 550502)
  br label %155

155:                                              ; preds = %151, %147
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %157 = load i64, i64* @REG_ACKTO, align 8
  %158 = call i32 @rtl_write_byte(%struct.rtl_priv* %156, i64 %157, i32 64)
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %160 = load i32, i32* @REG_SPEC_SIFS, align 4
  %161 = call i32 @rtl_write_word(%struct.rtl_priv* %159, i32 %160, i32 4112)
  %162 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %163 = load i32, i32* @REG_MAC_SPEC_SIFS, align 4
  %164 = call i32 @rtl_write_word(%struct.rtl_priv* %162, i32 %163, i32 4112)
  %165 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %166 = load i32, i32* @REG_SIFS_CTX, align 4
  %167 = call i32 @rtl_write_word(%struct.rtl_priv* %165, i32 %166, i32 4112)
  %168 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %169 = load i32, i32* @REG_SIFS_TRX, align 4
  %170 = call i32 @rtl_write_word(%struct.rtl_priv* %168, i32 %169, i32 4112)
  %171 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %172 = load i32, i32* @REG_MAR, align 4
  %173 = call i32 @rtl_write_dword(%struct.rtl_priv* %171, i32 %172, i32 -1)
  %174 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %175 = load i32, i32* @REG_MAR, align 4
  %176 = add nsw i32 %175, 4
  %177 = call i32 @rtl_write_dword(%struct.rtl_priv* %174, i32 %176, i32 -1)
  %178 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %179 = call i32 @rtl_write_dword(%struct.rtl_priv* %178, i32 916, i32 1)
  ret void
}

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
