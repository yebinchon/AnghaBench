; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_iq_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_iq_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_hal, %struct.rtl_phy }
%struct.rtl_hal = type { i64, i32 }
%struct.rtl_phy = type { i64, i64, i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64**, i32 }

@FINIT = common dso_local global i32 0, align 4
@INIT_IQK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IQK:Start!!!channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"IQK !!!currentband %d\0A\00", align 1
@BAND_ON_5G = common dso_local global i64 0, align 8
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [94 x i8] c"IQK: rege94=%lx rege9c=%lx regea4=%lx regeac=%lx regeb4=%lx regebc=%lx regec4=%lx regecc=%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"IQK: final_candidate is %x\0A\00", align 1
@IQK_MATRIX_REG_NUM = common dso_local global i32 0, align 4
@COMP_SCAN = common dso_local global i32 0, align 4
@COMP_MLME = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"IQK OK indexforchannel %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_phy_iq_calibrate(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca [4 x [8 x i64]], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %26 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %25)
  store %struct.rtl_priv* %26, %struct.rtl_priv** %3, align 8
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 1
  store %struct.rtl_phy* %28, %struct.rtl_phy** %4, align 8
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  store %struct.rtl_hal* %30, %struct.rtl_hal** %5, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %24, align 8
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = load i32, i32* @FINIT, align 4
  %33 = load i32, i32* @INIT_IQK, align 4
  %34 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %35 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RTPRINT(%struct.rtl_priv* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %59, %1
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 0
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i64], [8 x i64]* %43, i64 0, i64 %45
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 1
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i64], [8 x i64]* %47, i64 0, i64 %49
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 2
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x i64], [8 x i64]* %51, i64 0, i64 %53
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 3
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i64], [8 x i64]* %55, i64 0, i64 %57
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %42
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %39

62:                                               ; preds = %39
  store i32 255, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %64 = load i32, i32* @FINIT, align 4
  %65 = load i32, i32* @INIT_IQK, align 4
  %66 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %67 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RTPRINT(%struct.rtl_priv* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %71 = call i32 @rtl92d_acquire_cckandrw_pagea_ctl(%struct.ieee80211_hw* %70, i64* %24)
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %167, %62
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 3
  br i1 %74, label %75, label %170

75:                                               ; preds = %72
  %76 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %77 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BAND_ON_5G, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %83 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 0
  %84 = bitcast [8 x i64]* %83 to i64**
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @_rtl92d_phy_iq_calibrate_5g_normal(%struct.ieee80211_hw* %82, i64** %84, i32 %85)
  br label %113

87:                                               ; preds = %75
  %88 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %89 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @BAND_ON_2_4G, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %87
  %94 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %95 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @IS_92D_SINGLEPHY(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %101 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 0
  %102 = bitcast [8 x i64]* %101 to i64**
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @_rtl92d_phy_iq_calibrate(%struct.ieee80211_hw* %100, i64** %102, i32 %103, i32 1)
  br label %111

105:                                              ; preds = %93
  %106 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %107 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 0
  %108 = bitcast [8 x i64]* %107 to i64**
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @_rtl92d_phy_iq_calibrate(%struct.ieee80211_hw* %106, i64** %108, i32 %109, i32 0)
  br label %111

111:                                              ; preds = %105, %99
  br label %112

112:                                              ; preds = %111, %87
  br label %113

113:                                              ; preds = %112, %81
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %118 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 0
  %119 = bitcast [8 x i64]* %118 to i64**
  %120 = call i32 @_rtl92d_phy_simularity_compare(%struct.ieee80211_hw* %117, i64** %119, i32 0, i32 1)
  store i32 %120, i32* %21, align 4
  %121 = load i32, i32* %21, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  store i32 0, i32* %8, align 4
  br label %170

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %113
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %128, label %166

128:                                              ; preds = %125
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %130 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 0
  %131 = bitcast [8 x i64]* %130 to i64**
  %132 = call i32 @_rtl92d_phy_simularity_compare(%struct.ieee80211_hw* %129, i64** %131, i32 0, i32 2)
  store i32 %132, i32* %22, align 4
  %133 = load i32, i32* %22, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  store i32 0, i32* %8, align 4
  br label %170

136:                                              ; preds = %128
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %138 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 0
  %139 = bitcast [8 x i64]* %138 to i64**
  %140 = call i32 @_rtl92d_phy_simularity_compare(%struct.ieee80211_hw* %137, i64** %139, i32 1, i32 2)
  store i32 %140, i32* %23, align 4
  %141 = load i32, i32* %23, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i32 1, i32* %8, align 4
  br label %165

144:                                              ; preds = %136
  store i32 0, i32* %7, align 4
  br label %145

145:                                              ; preds = %156, %144
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %146, 8
  br i1 %147, label %148, label %159

148:                                              ; preds = %145
  %149 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 3
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [8 x i64], [8 x i64]* %149, i64 0, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %20, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %20, align 8
  br label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %145

159:                                              ; preds = %145
  %160 = load i64, i64* %20, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  store i32 3, i32* %8, align 4
  br label %164

163:                                              ; preds = %159
  store i32 255, i32* %8, align 4
  br label %164

164:                                              ; preds = %163, %162
  br label %165

165:                                              ; preds = %164, %143
  br label %166

166:                                              ; preds = %165, %125
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %72

170:                                              ; preds = %135, %123, %72
  %171 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %172 = call i32 @rtl92d_release_cckandrw_pagea_ctl(%struct.ieee80211_hw* %171, i64* %24)
  store i32 0, i32* %7, align 4
  br label %173

173:                                              ; preds = %229, %170
  %174 = load i32, i32* %7, align 4
  %175 = icmp slt i32 %174, 4
  br i1 %175, label %176, label %232

176:                                              ; preds = %173
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %178
  %180 = getelementptr inbounds [8 x i64], [8 x i64]* %179, i64 0, i64 0
  %181 = load i64, i64* %180, align 16
  store i64 %181, i64* %12, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %183
  %185 = getelementptr inbounds [8 x i64], [8 x i64]* %184, i64 0, i64 1
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %13, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %188
  %190 = getelementptr inbounds [8 x i64], [8 x i64]* %189, i64 0, i64 2
  %191 = load i64, i64* %190, align 16
  store i64 %191, i64* %14, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %193
  %195 = getelementptr inbounds [8 x i64], [8 x i64]* %194, i64 0, i64 3
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %15, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %198
  %200 = getelementptr inbounds [8 x i64], [8 x i64]* %199, i64 0, i64 4
  %201 = load i64, i64* %200, align 16
  store i64 %201, i64* %16, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %203
  %205 = getelementptr inbounds [8 x i64], [8 x i64]* %204, i64 0, i64 5
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %17, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %208
  %210 = getelementptr inbounds [8 x i64], [8 x i64]* %209, i64 0, i64 6
  %211 = load i64, i64* %210, align 16
  store i64 %211, i64* %18, align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %213
  %215 = getelementptr inbounds [8 x i64], [8 x i64]* %214, i64 0, i64 7
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %19, align 8
  %217 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %218 = load i32, i32* @FINIT, align 4
  %219 = load i32, i32* @INIT_IQK, align 4
  %220 = load i64, i64* %12, align 8
  %221 = load i64, i64* %13, align 8
  %222 = load i64, i64* %14, align 8
  %223 = load i64, i64* %15, align 8
  %224 = load i64, i64* %16, align 8
  %225 = load i64, i64* %17, align 8
  %226 = load i64, i64* %18, align 8
  %227 = load i64, i64* %19, align 8
  %228 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RTPRINT(%struct.rtl_priv* %217, i32 %218, i32 %219, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226, i64 %227)
  br label %229

229:                                              ; preds = %176
  %230 = load i32, i32* %7, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %7, align 4
  br label %173

232:                                              ; preds = %173
  %233 = load i32, i32* %8, align 4
  %234 = icmp ne i32 %233, 255
  br i1 %234, label %235, label %302

235:                                              ; preds = %232
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %237
  %239 = getelementptr inbounds [8 x i64], [8 x i64]* %238, i64 0, i64 0
  %240 = load i64, i64* %239, align 16
  store i64 %240, i64* %12, align 8
  %241 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %242 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %241, i32 0, i32 0
  store i64 %240, i64* %242, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %244
  %246 = getelementptr inbounds [8 x i64], [8 x i64]* %245, i64 0, i64 1
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %13, align 8
  %248 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %249 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %248, i32 0, i32 1
  store i64 %247, i64* %249, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %251
  %253 = getelementptr inbounds [8 x i64], [8 x i64]* %252, i64 0, i64 2
  %254 = load i64, i64* %253, align 16
  store i64 %254, i64* %14, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %256
  %258 = getelementptr inbounds [8 x i64], [8 x i64]* %257, i64 0, i64 3
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %15, align 8
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %261
  %263 = getelementptr inbounds [8 x i64], [8 x i64]* %262, i64 0, i64 4
  %264 = load i64, i64* %263, align 16
  store i64 %264, i64* %16, align 8
  %265 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %266 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %265, i32 0, i32 2
  store i64 %264, i64* %266, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %268
  %270 = getelementptr inbounds [8 x i64], [8 x i64]* %269, i64 0, i64 5
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %17, align 8
  %272 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %273 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %272, i32 0, i32 3
  store i64 %271, i64* %273, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %275
  %277 = getelementptr inbounds [8 x i64], [8 x i64]* %276, i64 0, i64 6
  %278 = load i64, i64* %277, align 16
  store i64 %278, i64* %18, align 8
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %280
  %282 = getelementptr inbounds [8 x i64], [8 x i64]* %281, i64 0, i64 7
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %19, align 8
  %284 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %285 = load i32, i32* @FINIT, align 4
  %286 = load i32, i32* @INIT_IQK, align 4
  %287 = load i32, i32* %8, align 4
  %288 = sext i32 %287 to i64
  %289 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RTPRINT(%struct.rtl_priv* %284, i32 %285, i32 %286, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %288)
  %290 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %291 = load i32, i32* @FINIT, align 4
  %292 = load i32, i32* @INIT_IQK, align 4
  %293 = load i64, i64* %12, align 8
  %294 = load i64, i64* %13, align 8
  %295 = load i64, i64* %14, align 8
  %296 = load i64, i64* %15, align 8
  %297 = load i64, i64* %16, align 8
  %298 = load i64, i64* %17, align 8
  %299 = load i64, i64* %18, align 8
  %300 = load i64, i64* %19, align 8
  %301 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RTPRINT(%struct.rtl_priv* %290, i32 %291, i32 %292, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i64 %293, i64 %294, i64 %295, i64 %296, i64 %297, i64 %298, i64 %299, i64 %300)
  store i32 1, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %311

302:                                              ; preds = %232
  %303 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %304 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %303, i32 0, i32 2
  store i64 256, i64* %304, align 8
  %305 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %306 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %305, i32 0, i32 0
  store i64 256, i64* %306, align 8
  %307 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %308 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %307, i32 0, i32 3
  store i64 0, i64* %308, align 8
  %309 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %310 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %309, i32 0, i32 1
  store i64 0, i64* %310, align 8
  br label %311

311:                                              ; preds = %302, %235
  %312 = load i64, i64* %12, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %324

314:                                              ; preds = %311
  %315 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %316 = load i32, i32* %10, align 4
  %317 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 0
  %318 = bitcast [8 x i64]* %317 to i64**
  %319 = load i32, i32* %8, align 4
  %320 = load i64, i64* %14, align 8
  %321 = icmp eq i64 %320, 0
  %322 = zext i1 %321 to i32
  %323 = call i32 @_rtl92d_phy_patha_fill_iqk_matrix(%struct.ieee80211_hw* %315, i32 %316, i64** %318, i32 %319, i32 %322)
  br label %324

324:                                              ; preds = %314, %311
  %325 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %326 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = call i64 @IS_92D_SINGLEPHY(i32 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %344

330:                                              ; preds = %324
  %331 = load i64, i64* %16, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %343

333:                                              ; preds = %330
  %334 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %335 = load i32, i32* %11, align 4
  %336 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 0
  %337 = bitcast [8 x i64]* %336 to i64**
  %338 = load i32, i32* %8, align 4
  %339 = load i64, i64* %18, align 8
  %340 = icmp eq i64 %339, 0
  %341 = zext i1 %340 to i32
  %342 = call i32 @_rtl92d_phy_pathb_fill_iqk_matrix(%struct.ieee80211_hw* %334, i32 %335, i64** %337, i32 %338, i32 %341)
  br label %343

343:                                              ; preds = %333, %330
  br label %344

344:                                              ; preds = %343, %324
  %345 = load i32, i32* %8, align 4
  %346 = icmp ne i32 %345, 255
  br i1 %346, label %347, label %395

347:                                              ; preds = %344
  %348 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %349 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %348, i32 0, i32 5
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @rtl92d_get_rightchnlplace_for_iqk(i32 %350)
  store i32 %351, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %352

352:                                              ; preds = %377, %347
  %353 = load i32, i32* %7, align 4
  %354 = load i32, i32* @IQK_MATRIX_REG_NUM, align 4
  %355 = icmp slt i32 %353, %354
  br i1 %355, label %356, label %380

356:                                              ; preds = %352
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %6, i64 0, i64 %358
  %360 = load i32, i32* %7, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [8 x i64], [8 x i64]* %359, i64 0, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %365 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %364, i32 0, i32 4
  %366 = load %struct.TYPE_2__*, %struct.TYPE_2__** %365, align 8
  %367 = load i32, i32* %9, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i32 0, i32 0
  %371 = load i64**, i64*** %370, align 8
  %372 = getelementptr inbounds i64*, i64** %371, i64 0
  %373 = load i64*, i64** %372, align 8
  %374 = load i32, i32* %7, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i64, i64* %373, i64 %375
  store i64 %363, i64* %376, align 8
  br label %377

377:                                              ; preds = %356
  %378 = load i32, i32* %7, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %7, align 4
  br label %352

380:                                              ; preds = %352
  %381 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %382 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %381, i32 0, i32 4
  %383 = load %struct.TYPE_2__*, %struct.TYPE_2__** %382, align 8
  %384 = load i32, i32* %9, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %386, i32 0, i32 1
  store i32 1, i32* %387, align 8
  %388 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %389 = load i32, i32* @COMP_SCAN, align 4
  %390 = load i32, i32* @COMP_MLME, align 4
  %391 = or i32 %389, %390
  %392 = load i32, i32* @DBG_LOUD, align 4
  %393 = load i32, i32* %9, align 4
  %394 = call i32 @RT_TRACE(%struct.rtl_priv* %388, i32 %391, i32 %392, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %393)
  br label %395

395:                                              ; preds = %380, %344
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @rtl92d_acquire_cckandrw_pagea_ctl(%struct.ieee80211_hw*, i64*) #1

declare dso_local i32 @_rtl92d_phy_iq_calibrate_5g_normal(%struct.ieee80211_hw*, i64**, i32) #1

declare dso_local i64 @IS_92D_SINGLEPHY(i32) #1

declare dso_local i32 @_rtl92d_phy_iq_calibrate(%struct.ieee80211_hw*, i64**, i32, i32) #1

declare dso_local i32 @_rtl92d_phy_simularity_compare(%struct.ieee80211_hw*, i64**, i32, i32) #1

declare dso_local i32 @rtl92d_release_cckandrw_pagea_ctl(%struct.ieee80211_hw*, i64*) #1

declare dso_local i32 @_rtl92d_phy_patha_fill_iqk_matrix(%struct.ieee80211_hw*, i32, i64**, i32, i32) #1

declare dso_local i32 @_rtl92d_phy_pathb_fill_iqk_matrix(%struct.ieee80211_hw*, i32, i64**, i32, i32) #1

declare dso_local i32 @rtl92d_get_rightchnlplace_for_iqk(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
