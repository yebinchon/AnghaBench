; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_phy_set_txpower_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_phy_set_txpower_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@RF90_PATH_A = common dso_local global i64 0, align 8
@RTXAGC_A_CCK1_MCS32 = common dso_local global i32 0, align 4
@MASKBYTE1 = common dso_local global i32 0, align 4
@RTXAGC_B_CCK11_A_CCK2_11 = common dso_local global i32 0, align 4
@MASKBYTE2 = common dso_local global i32 0, align 4
@MASKBYTE3 = common dso_local global i32 0, align 4
@RTXAGC_A_RATE18_06 = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@RTXAGC_A_RATE54_24 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS03_MCS00 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS07_MCS04 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS11_MCS08 = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid Rate!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid RFPath!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64, i64)* @_rtl8723be_phy_set_txpower_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723be_phy_set_txpower_index(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @RF90_PATH_A, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %167

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  switch i64 %16, label %161 [
    i64 148, label %17
    i64 146, label %23
    i64 142, label %29
    i64 151, label %35
    i64 141, label %41
    i64 140, label %47
    i64 150, label %53
    i64 149, label %59
    i64 147, label %65
    i64 145, label %71
    i64 144, label %77
    i64 143, label %83
    i64 139, label %89
    i64 138, label %95
    i64 135, label %101
    i64 134, label %107
    i64 133, label %113
    i64 132, label %119
    i64 131, label %125
    i64 130, label %131
    i64 129, label %137
    i64 128, label %143
    i64 137, label %149
    i64 136, label %155
  ]

17:                                               ; preds = %15
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %19 = load i32, i32* @RTXAGC_A_CCK1_MCS32, align 4
  %20 = load i32, i32* @MASKBYTE1, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %18, i32 %19, i32 %20, i64 %21)
  br label %166

23:                                               ; preds = %15
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %25 = load i32, i32* @RTXAGC_B_CCK11_A_CCK2_11, align 4
  %26 = load i32, i32* @MASKBYTE1, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %24, i32 %25, i32 %26, i64 %27)
  br label %166

29:                                               ; preds = %15
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %31 = load i32, i32* @RTXAGC_B_CCK11_A_CCK2_11, align 4
  %32 = load i32, i32* @MASKBYTE2, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %30, i32 %31, i32 %32, i64 %33)
  br label %166

35:                                               ; preds = %15
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %37 = load i32, i32* @RTXAGC_B_CCK11_A_CCK2_11, align 4
  %38 = load i32, i32* @MASKBYTE3, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %36, i32 %37, i32 %38, i64 %39)
  br label %166

41:                                               ; preds = %15
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %43 = load i32, i32* @RTXAGC_A_RATE18_06, align 4
  %44 = load i32, i32* @MASKBYTE0, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %42, i32 %43, i32 %44, i64 %45)
  br label %166

47:                                               ; preds = %15
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %49 = load i32, i32* @RTXAGC_A_RATE18_06, align 4
  %50 = load i32, i32* @MASKBYTE1, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %48, i32 %49, i32 %50, i64 %51)
  br label %166

53:                                               ; preds = %15
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %55 = load i32, i32* @RTXAGC_A_RATE18_06, align 4
  %56 = load i32, i32* @MASKBYTE2, align 4
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %54, i32 %55, i32 %56, i64 %57)
  br label %166

59:                                               ; preds = %15
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %61 = load i32, i32* @RTXAGC_A_RATE18_06, align 4
  %62 = load i32, i32* @MASKBYTE3, align 4
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %60, i32 %61, i32 %62, i64 %63)
  br label %166

65:                                               ; preds = %15
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %67 = load i32, i32* @RTXAGC_A_RATE54_24, align 4
  %68 = load i32, i32* @MASKBYTE0, align 4
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %66, i32 %67, i32 %68, i64 %69)
  br label %166

71:                                               ; preds = %15
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %73 = load i32, i32* @RTXAGC_A_RATE54_24, align 4
  %74 = load i32, i32* @MASKBYTE1, align 4
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %72, i32 %73, i32 %74, i64 %75)
  br label %166

77:                                               ; preds = %15
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %79 = load i32, i32* @RTXAGC_A_RATE54_24, align 4
  %80 = load i32, i32* @MASKBYTE2, align 4
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %78, i32 %79, i32 %80, i64 %81)
  br label %166

83:                                               ; preds = %15
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %85 = load i32, i32* @RTXAGC_A_RATE54_24, align 4
  %86 = load i32, i32* @MASKBYTE3, align 4
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %84, i32 %85, i32 %86, i64 %87)
  br label %166

89:                                               ; preds = %15
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %91 = load i32, i32* @RTXAGC_A_MCS03_MCS00, align 4
  %92 = load i32, i32* @MASKBYTE0, align 4
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %90, i32 %91, i32 %92, i64 %93)
  br label %166

95:                                               ; preds = %15
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %97 = load i32, i32* @RTXAGC_A_MCS03_MCS00, align 4
  %98 = load i32, i32* @MASKBYTE1, align 4
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %96, i32 %97, i32 %98, i64 %99)
  br label %166

101:                                              ; preds = %15
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %103 = load i32, i32* @RTXAGC_A_MCS03_MCS00, align 4
  %104 = load i32, i32* @MASKBYTE2, align 4
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %102, i32 %103, i32 %104, i64 %105)
  br label %166

107:                                              ; preds = %15
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %109 = load i32, i32* @RTXAGC_A_MCS03_MCS00, align 4
  %110 = load i32, i32* @MASKBYTE3, align 4
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %108, i32 %109, i32 %110, i64 %111)
  br label %166

113:                                              ; preds = %15
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %115 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  %116 = load i32, i32* @MASKBYTE0, align 4
  %117 = load i64, i64* %6, align 8
  %118 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %114, i32 %115, i32 %116, i64 %117)
  br label %166

119:                                              ; preds = %15
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %121 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  %122 = load i32, i32* @MASKBYTE1, align 4
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %120, i32 %121, i32 %122, i64 %123)
  br label %166

125:                                              ; preds = %15
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %127 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  %128 = load i32, i32* @MASKBYTE2, align 4
  %129 = load i64, i64* %6, align 8
  %130 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %126, i32 %127, i32 %128, i64 %129)
  br label %166

131:                                              ; preds = %15
  %132 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %133 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  %134 = load i32, i32* @MASKBYTE3, align 4
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %132, i32 %133, i32 %134, i64 %135)
  br label %166

137:                                              ; preds = %15
  %138 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %139 = load i32, i32* @RTXAGC_A_MCS11_MCS08, align 4
  %140 = load i32, i32* @MASKBYTE0, align 4
  %141 = load i64, i64* %6, align 8
  %142 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %138, i32 %139, i32 %140, i64 %141)
  br label %166

143:                                              ; preds = %15
  %144 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %145 = load i32, i32* @RTXAGC_A_MCS11_MCS08, align 4
  %146 = load i32, i32* @MASKBYTE1, align 4
  %147 = load i64, i64* %6, align 8
  %148 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %144, i32 %145, i32 %146, i64 %147)
  br label %166

149:                                              ; preds = %15
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %151 = load i32, i32* @RTXAGC_A_MCS11_MCS08, align 4
  %152 = load i32, i32* @MASKBYTE2, align 4
  %153 = load i64, i64* %6, align 8
  %154 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %150, i32 %151, i32 %152, i64 %153)
  br label %166

155:                                              ; preds = %15
  %156 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %157 = load i32, i32* @RTXAGC_A_MCS11_MCS08, align 4
  %158 = load i32, i32* @MASKBYTE3, align 4
  %159 = load i64, i64* %6, align 8
  %160 = call i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw* %156, i32 %157, i32 %158, i64 %159)
  br label %166

161:                                              ; preds = %15
  %162 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %163 = load i32, i32* @COMP_POWER, align 4
  %164 = load i32, i32* @DBG_LOUD, align 4
  %165 = call i32 @RT_TRACE(%struct.rtl_priv* %162, i32 %163, i32 %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %166

166:                                              ; preds = %161, %155, %149, %143, %137, %131, %125, %119, %113, %107, %101, %95, %89, %83, %77, %71, %65, %59, %53, %47, %41, %35, %29, %23, %17
  br label %172

167:                                              ; preds = %4
  %168 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %169 = load i32, i32* @COMP_POWER, align 4
  %170 = load i32, i32* @DBG_LOUD, align 4
  %171 = call i32 @RT_TRACE(%struct.rtl_priv* %168, i32 %169, i32 %170, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %172

172:                                              ; preds = %167, %166
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723_phy_set_bb_reg(%struct.ieee80211_hw*, i32, i32, i64) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
