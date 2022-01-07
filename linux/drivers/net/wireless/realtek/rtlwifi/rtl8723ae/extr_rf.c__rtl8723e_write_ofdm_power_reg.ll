; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_rf.c__rtl8723e_write_ofdm_power_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_rf.c__rtl8723e_write_ofdm_power_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32 }

@RTXAGC_A_RATE18_06 = common dso_local global i32 0, align 4
@RTXAGC_A_RATE54_24 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS03_MCS00 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS07_MCS04 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS11_MCS08 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS15_MCS12 = common dso_local global i32 0, align 4
@RTXAGC_B_RATE18_06 = common dso_local global i32 0, align 4
@RTXAGC_B_RATE54_24 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS03_MCS00 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS07_MCS04 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS11_MCS08 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS15_MCS12 = common dso_local global i32 0, align 4
@RF6052_MAX_TX_PWR = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@FPHY = common dso_local global i32 0, align 4
@PHY_TXPWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Set 0x%x = %08x\0A\00", align 1
@RF_2T2R = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*)* @_rtl8723e_write_ofdm_power_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723e_write_ofdm_power_reg(%struct.ieee80211_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_phy*, align 8
  %9 = alloca [6 x i32], align 16
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %7, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 0
  store %struct.rtl_phy* %19, %struct.rtl_phy** %8, align 8
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %21 = load i32, i32* @RTXAGC_A_RATE18_06, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @RTXAGC_A_RATE54_24, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @RTXAGC_A_MCS03_MCS00, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @RTXAGC_A_MCS11_MCS08, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @RTXAGC_A_MCS15_MCS12, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %33 = load i32, i32* @RTXAGC_B_RATE18_06, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @RTXAGC_B_RATE54_24, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %34, i64 1
  %37 = load i32, i32* @RTXAGC_B_MCS03_MCS00, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %36, i64 1
  %39 = load i32, i32* @RTXAGC_B_MCS07_MCS04, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds i32, i32* %38, i64 1
  %41 = load i32, i32* @RTXAGC_B_MCS11_MCS08, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds i32, i32* %40, i64 1
  %43 = load i32, i32* @RTXAGC_B_MCS15_MCS12, align 4
  store i32 %43, i32* %42, align 4
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %191, %3
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %194

47:                                               ; preds = %44
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %80, %47
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %56, label %83

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %11, align 4
  %59 = mul nsw i32 %58, 8
  %60 = shl i32 127, %59
  %61 = and i32 %57, %60
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 %62, 8
  %64 = ashr i32 %61, %63
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %56
  %75 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %77
  store i32 %75, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %56
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %53

83:                                               ; preds = %53
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 24
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %88, 16
  %90 = or i32 %86, %89
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = or i32 %90, %93
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %96 = load i32, i32* %95, align 16
  %97 = or i32 %94, %96
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %83
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %15, align 4
  br label %110

105:                                              ; preds = %83
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %105, %100
  %111 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @MASKDWORD, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %111, i32 %112, i32 %113, i32 %114)
  %116 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %117 = load i32, i32* @FPHY, align 4
  %118 = load i32, i32* @PHY_TXPWR, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @RTPRINT(%struct.rtl_priv* %116, i32 %117, i32 %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %123 = call i64 @get_rf_type(%struct.rtl_phy* %122)
  %124 = load i64, i64* @RF_2T2R, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %110
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* @RTXAGC_A_MCS15_MCS12, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %147, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @RTXAGC_B_MCS15_MCS12, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %147, label %134

134:                                              ; preds = %130, %110
  %135 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %136 = call i64 @get_rf_type(%struct.rtl_phy* %135)
  %137 = load i64, i64* @RF_2T2R, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %190

139:                                              ; preds = %134
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* @RTXAGC_B_MCS07_MCS04, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %190

147:                                              ; preds = %143, %139, %130, %126
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* @RTXAGC_A_MCS15_MCS12, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %147
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153, %147
  store i32 3216, i32* %15, align 4
  br label %158

158:                                              ; preds = %157, %153
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* @RTXAGC_B_MCS15_MCS12, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* @RTXAGC_B_MCS07_MCS04, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162, %158
  store i32 3224, i32* %15, align 4
  br label %167

167:                                              ; preds = %166, %162
  store i32 0, i32* %11, align 4
  br label %168

168:                                              ; preds = %186, %167
  %169 = load i32, i32* %11, align 4
  %170 = icmp slt i32 %169, 3
  br i1 %170, label %171, label %189

171:                                              ; preds = %168
  %172 = load i32, i32* %14, align 4
  %173 = icmp sgt i32 %172, 6
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* %14, align 4
  %176 = sub nsw i32 %175, 6
  br label %178

177:                                              ; preds = %171
  br label %178

178:                                              ; preds = %177, %174
  %179 = phi i32 [ %176, %174 ], [ 0, %177 ]
  store i32 %179, i32* %14, align 4
  %180 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @rtl_write_byte(%struct.rtl_priv* %180, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %178
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  br label %168

189:                                              ; preds = %168
  br label %190

190:                                              ; preds = %189, %143, %134
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %12, align 4
  br label %44

194:                                              ; preds = %44
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @get_rf_type(%struct.rtl_phy*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
