; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8812ae_phy_convert_txpower_limit_to_power_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8812ae_phy_convert_txpower_limit_to_power_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32*****, i32***, i32*****, i32*** }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"=====> _rtl8812ae_phy_convert_txpower_limit_to_power_index()\0A\00", align 1
@MAX_REGULATION_NUM = common dso_local global i32 0, align 4
@MAX_2_4G_BANDWIDTH_NUM = common dso_local global i32 0, align 4
@CHANNEL_MAX_NUMBER_2G = common dso_local global i32 0, align 4
@MAX_RATE_SECTION_NUM = common dso_local global i32 0, align 4
@BAND_ON_2_4G = common dso_local global i32 0, align 4
@MGN_11M = common dso_local global i32 0, align 4
@MGN_54M = common dso_local global i32 0, align 4
@MGN_MCS7 = common dso_local global i32 0, align 4
@MGN_MCS15 = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i64 0, align 8
@MAX_RF_PATH_NUM = common dso_local global i32 0, align 4
@RF_2TX = common dso_local global i64 0, align 8
@RF_1TX = common dso_local global i64 0, align 8
@MAX_POWER_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [138 x i8] c"TxPwrLimit_2_4G[regulation %d][bw %d][rateSection %d][channel %d] = %d\0A(TxPwrLimit in dBm %d - BW40PwrLmt2_4G[channel %d][rfpath %d] %d)\0A\00", align 1
@MAX_5G_BANDWIDTH_NUM = common dso_local global i32 0, align 4
@CHANNEL_MAX_NUMBER_5G = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS7 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS7 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [136 x i8] c"TxPwrLimit_5G[regulation %d][bw %d][rateSection %d][channel %d] =%d\0A(TxPwrLimit in dBm %d - BW40PwrLmt5G[chnl group %d][rfpath %d] %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"<===== _rtl8812ae_phy_convert_txpower_limit_to_power_index()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8812ae_phy_convert_txpower_limit_to_power_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8812ae_phy_convert_txpower_limit_to_power_index(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %3, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 0
  store %struct.rtl_phy* %19, %struct.rtl_phy** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = load i32, i32* @COMP_INIT, align 4
  %22 = load i32, i32* @DBG_TRACE, align 4
  %23 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %25 = call i32 @_rtl8812ae_phy_cross_reference_ht_and_vht_txpower_limit(%struct.ieee80211_hw* %24)
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %232, %1
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MAX_REGULATION_NUM, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %235

30:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %228, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MAX_2_4G_BANDWIDTH_NUM, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %231

35:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %224, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @CHANNEL_MAX_NUMBER_2G, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %227

40:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %220, %40
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @MAX_RATE_SECTION_NUM, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %223

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %50 = load i32, i32* @BAND_ON_2_4G, align 4
  %51 = load i32, i32* @MGN_11M, align 4
  %52 = call i32 @_rtl8812ae_phy_get_txpower_by_rate_base_index(%struct.ieee80211_hw* %49, i32 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  br label %80

53:                                               ; preds = %45
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = load i32, i32* @BAND_ON_2_4G, align 4
  %59 = load i32, i32* @MGN_54M, align 4
  %60 = call i32 @_rtl8812ae_phy_get_txpower_by_rate_base_index(%struct.ieee80211_hw* %57, i32 %58, i32 %59)
  store i32 %60, i32* %11, align 4
  br label %79

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %66 = load i32, i32* @BAND_ON_2_4G, align 4
  %67 = load i32, i32* @MGN_MCS7, align 4
  %68 = call i32 @_rtl8812ae_phy_get_txpower_by_rate_base_index(%struct.ieee80211_hw* %65, i32 %66, i32 %67)
  store i32 %68, i32* %11, align 4
  br label %78

69:                                               ; preds = %61
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %74 = load i32, i32* @BAND_ON_2_4G, align 4
  %75 = load i32, i32* @MGN_MCS15, align 4
  %76 = call i32 @_rtl8812ae_phy_get_txpower_by_rate_base_index(%struct.ieee80211_hw* %73, i32 %74, i32 %75)
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %72, %69
  br label %78

78:                                               ; preds = %77, %64
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %48
  %81 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %82 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %81, i32 0, i32 0
  %83 = load i32*****, i32****** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32****, i32***** %83, i64 %85
  %87 = load i32****, i32***** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32***, i32**** %87, i64 %89
  %91 = load i32***, i32**** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32**, i32*** %91, i64 %93
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @RF90_PATH_A, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %14, align 4
  %103 = load i64, i64* @RF90_PATH_A, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %216, %80
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @MAX_RF_PATH_NUM, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %219

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %112, label %127

112:                                              ; preds = %109
  %113 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %114 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %113, i32 0, i32 1
  %115 = load i32***, i32**** %114, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32**, i32*** %115, i64 %117
  %119 = load i32**, i32*** %118, align 8
  %120 = load i64, i64* @RF_2TX, align 8
  %121 = getelementptr inbounds i32*, i32** %119, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %5, align 4
  br label %142

127:                                              ; preds = %109
  %128 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %129 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %128, i32 0, i32 1
  %130 = load i32***, i32**** %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32**, i32*** %130, i64 %132
  %134 = load i32**, i32*** %133, align 8
  %135 = load i64, i64* @RF_1TX, align 8
  %136 = getelementptr inbounds i32*, i32** %134, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %127, %112
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @MAX_POWER_INDEX, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %173

146:                                              ; preds = %142
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %5, align 4
  %149 = sub nsw i32 %147, %148
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %152 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %151, i32 0, i32 0
  %153 = load i32*****, i32****** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32****, i32***** %153, i64 %155
  %157 = load i32****, i32***** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32***, i32**** %157, i64 %159
  %161 = load i32***, i32**** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32**, i32*** %161, i64 %163
  %165 = load i32**, i32*** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32*, i32** %165, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %150, i32* %172, align 4
  br label %173

173:                                              ; preds = %146, %142
  %174 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %175 = load i32, i32* @COMP_INIT, align 4
  %176 = load i32, i32* @DBG_TRACE, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %182 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %181, i32 0, i32 0
  %183 = load i32*****, i32****** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32****, i32***** %183, i64 %185
  %187 = load i32****, i32***** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32***, i32**** %187, i64 %189
  %191 = load i32***, i32**** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32**, i32*** %191, i64 %193
  %195 = load i32**, i32*** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %15, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %14, align 4
  %205 = icmp eq i32 %204, 63
  br i1 %205, label %206, label %207

206:                                              ; preds = %173
  br label %210

207:                                              ; preds = %173
  %208 = load i32, i32* %14, align 4
  %209 = sdiv i32 %208, 2
  br label %210

210:                                              ; preds = %207, %206
  %211 = phi i32 [ 0, %206 ], [ %209, %207 ]
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* %5, align 4
  %215 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %174, i32 %175, i32 %176, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.1, i64 0, i64 0), i32 %177, i32 %178, i32 %179, i32 %180, i32 %203, i32 %211, i32 %212, i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %210
  %217 = load i32, i32* %15, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %15, align 4
  br label %105

219:                                              ; preds = %105
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  br label %41

223:                                              ; preds = %41
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %9, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %9, align 4
  br label %36

227:                                              ; preds = %36
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %31

231:                                              ; preds = %31
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %7, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %7, align 4
  br label %26

235:                                              ; preds = %26
  store i32 0, i32* %7, align 4
  br label %236

236:                                              ; preds = %447, %235
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* @MAX_REGULATION_NUM, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %450

240:                                              ; preds = %236
  store i32 0, i32* %8, align 4
  br label %241

241:                                              ; preds = %443, %240
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* @MAX_5G_BANDWIDTH_NUM, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %446

245:                                              ; preds = %241
  store i32 0, i32* %9, align 4
  br label %246

246:                                              ; preds = %439, %245
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* @CHANNEL_MAX_NUMBER_5G, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %442

250:                                              ; preds = %246
  store i32 0, i32* %10, align 4
  br label %251

251:                                              ; preds = %435, %250
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* @MAX_RATE_SECTION_NUM, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %438

255:                                              ; preds = %251
  %256 = load i32, i32* %10, align 4
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %260 = load i32, i32* @BAND_ON_5G, align 4
  %261 = load i32, i32* @MGN_54M, align 4
  %262 = call i32 @_rtl8812ae_phy_get_txpower_by_rate_base_index(%struct.ieee80211_hw* %259, i32 %260, i32 %261)
  store i32 %262, i32* %12, align 4
  br label %299

263:                                              ; preds = %255
  %264 = load i32, i32* %10, align 4
  %265 = icmp eq i32 %264, 2
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  %267 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %268 = load i32, i32* @BAND_ON_5G, align 4
  %269 = load i32, i32* @MGN_MCS7, align 4
  %270 = call i32 @_rtl8812ae_phy_get_txpower_by_rate_base_index(%struct.ieee80211_hw* %267, i32 %268, i32 %269)
  store i32 %270, i32* %12, align 4
  br label %298

271:                                              ; preds = %263
  %272 = load i32, i32* %10, align 4
  %273 = icmp eq i32 %272, 3
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  %275 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %276 = load i32, i32* @BAND_ON_5G, align 4
  %277 = load i32, i32* @MGN_MCS15, align 4
  %278 = call i32 @_rtl8812ae_phy_get_txpower_by_rate_base_index(%struct.ieee80211_hw* %275, i32 %276, i32 %277)
  store i32 %278, i32* %12, align 4
  br label %297

279:                                              ; preds = %271
  %280 = load i32, i32* %10, align 4
  %281 = icmp eq i32 %280, 4
  br i1 %281, label %282, label %287

282:                                              ; preds = %279
  %283 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %284 = load i32, i32* @BAND_ON_5G, align 4
  %285 = load i32, i32* @MGN_VHT1SS_MCS7, align 4
  %286 = call i32 @_rtl8812ae_phy_get_txpower_by_rate_base_index(%struct.ieee80211_hw* %283, i32 %284, i32 %285)
  store i32 %286, i32* %12, align 4
  br label %296

287:                                              ; preds = %279
  %288 = load i32, i32* %10, align 4
  %289 = icmp eq i32 %288, 5
  br i1 %289, label %290, label %295

290:                                              ; preds = %287
  %291 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %292 = load i32, i32* @BAND_ON_5G, align 4
  %293 = load i32, i32* @MGN_VHT2SS_MCS7, align 4
  %294 = call i32 @_rtl8812ae_phy_get_txpower_by_rate_base_index(%struct.ieee80211_hw* %291, i32 %292, i32 %293)
  store i32 %294, i32* %12, align 4
  br label %295

295:                                              ; preds = %290, %287
  br label %296

296:                                              ; preds = %295, %282
  br label %297

297:                                              ; preds = %296, %274
  br label %298

298:                                              ; preds = %297, %266
  br label %299

299:                                              ; preds = %298, %258
  %300 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %301 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %300, i32 0, i32 2
  %302 = load i32*****, i32****** %301, align 8
  %303 = load i32, i32* %7, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32****, i32***** %302, i64 %304
  %306 = load i32****, i32***** %305, align 8
  %307 = load i32, i32* %8, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32***, i32**** %306, i64 %308
  %310 = load i32***, i32**** %309, align 8
  %311 = load i32, i32* %10, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32**, i32*** %310, i64 %312
  %314 = load i32**, i32*** %313, align 8
  %315 = load i32, i32* %9, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32*, i32** %314, i64 %316
  %318 = load i32*, i32** %317, align 8
  %319 = load i64, i64* @RF90_PATH_A, align 8
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  %321 = load i32, i32* %320, align 4
  store i32 %321, i32* %14, align 4
  %322 = load i64, i64* @RF90_PATH_A, align 8
  %323 = trunc i64 %322 to i32
  store i32 %323, i32* %15, align 4
  br label %324

324:                                              ; preds = %431, %299
  %325 = load i32, i32* %15, align 4
  %326 = load i32, i32* @MAX_RF_PATH_NUM, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %434

328:                                              ; preds = %324
  %329 = load i32, i32* %10, align 4
  %330 = icmp eq i32 %329, 3
  br i1 %330, label %334, label %331

331:                                              ; preds = %328
  %332 = load i32, i32* %10, align 4
  %333 = icmp eq i32 %332, 5
  br i1 %333, label %334, label %349

334:                                              ; preds = %331, %328
  %335 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %336 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %335, i32 0, i32 3
  %337 = load i32***, i32**** %336, align 8
  %338 = load i32, i32* %15, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32**, i32*** %337, i64 %339
  %341 = load i32**, i32*** %340, align 8
  %342 = load i64, i64* @RF_2TX, align 8
  %343 = getelementptr inbounds i32*, i32** %341, i64 %342
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %12, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  store i32 %348, i32* %6, align 4
  br label %364

349:                                              ; preds = %331
  %350 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %351 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %350, i32 0, i32 3
  %352 = load i32***, i32**** %351, align 8
  %353 = load i32, i32* %15, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32**, i32*** %352, i64 %354
  %356 = load i32**, i32*** %355, align 8
  %357 = load i64, i64* @RF_1TX, align 8
  %358 = getelementptr inbounds i32*, i32** %356, i64 %357
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %12, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  store i32 %363, i32* %6, align 4
  br label %364

364:                                              ; preds = %349, %334
  %365 = load i32, i32* %14, align 4
  %366 = load i32, i32* @MAX_POWER_INDEX, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %368, label %395

368:                                              ; preds = %364
  %369 = load i32, i32* %14, align 4
  %370 = load i32, i32* %6, align 4
  %371 = sub nsw i32 %369, %370
  store i32 %371, i32* %13, align 4
  %372 = load i32, i32* %13, align 4
  %373 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %374 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %373, i32 0, i32 2
  %375 = load i32*****, i32****** %374, align 8
  %376 = load i32, i32* %7, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32****, i32***** %375, i64 %377
  %379 = load i32****, i32***** %378, align 8
  %380 = load i32, i32* %8, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32***, i32**** %379, i64 %381
  %383 = load i32***, i32**** %382, align 8
  %384 = load i32, i32* %10, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32**, i32*** %383, i64 %385
  %387 = load i32**, i32*** %386, align 8
  %388 = load i32, i32* %9, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32*, i32** %387, i64 %389
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %15, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  store i32 %372, i32* %394, align 4
  br label %395

395:                                              ; preds = %368, %364
  %396 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %397 = load i32, i32* @COMP_INIT, align 4
  %398 = load i32, i32* @DBG_TRACE, align 4
  %399 = load i32, i32* %7, align 4
  %400 = load i32, i32* %8, align 4
  %401 = load i32, i32* %10, align 4
  %402 = load i32, i32* %9, align 4
  %403 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %404 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %403, i32 0, i32 2
  %405 = load i32*****, i32****** %404, align 8
  %406 = load i32, i32* %7, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32****, i32***** %405, i64 %407
  %409 = load i32****, i32***** %408, align 8
  %410 = load i32, i32* %8, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32***, i32**** %409, i64 %411
  %413 = load i32***, i32**** %412, align 8
  %414 = load i32, i32* %10, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32**, i32*** %413, i64 %415
  %417 = load i32**, i32*** %416, align 8
  %418 = load i32, i32* %9, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32*, i32** %417, i64 %419
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %15, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* %14, align 4
  %427 = load i32, i32* %9, align 4
  %428 = load i32, i32* %15, align 4
  %429 = load i32, i32* %6, align 4
  %430 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %396, i32 %397, i32 %398, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.2, i64 0, i64 0), i32 %399, i32 %400, i32 %401, i32 %402, i32 %425, i32 %426, i32 %427, i32 %428, i32 %429)
  br label %431

431:                                              ; preds = %395
  %432 = load i32, i32* %15, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %15, align 4
  br label %324

434:                                              ; preds = %324
  br label %435

435:                                              ; preds = %434
  %436 = load i32, i32* %10, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %10, align 4
  br label %251

438:                                              ; preds = %251
  br label %439

439:                                              ; preds = %438
  %440 = load i32, i32* %9, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %9, align 4
  br label %246

442:                                              ; preds = %246
  br label %443

443:                                              ; preds = %442
  %444 = load i32, i32* %8, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %8, align 4
  br label %241

446:                                              ; preds = %241
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %7, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %7, align 4
  br label %236

450:                                              ; preds = %236
  %451 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %452 = load i32, i32* @COMP_INIT, align 4
  %453 = load i32, i32* @DBG_TRACE, align 4
  %454 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %451, i32 %452, i32 %453, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @_rtl8812ae_phy_cross_reference_ht_and_vht_txpower_limit(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8812ae_phy_get_txpower_by_rate_base_index(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
