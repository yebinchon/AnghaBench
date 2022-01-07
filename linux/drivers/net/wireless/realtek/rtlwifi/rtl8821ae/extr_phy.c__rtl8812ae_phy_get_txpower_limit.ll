; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8812ae_phy_get_txpower_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8812ae_phy_get_txpower_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32*****, i32***** }
%struct.rtl_efuse = type { i32 }

@MAX_POWER_INDEX = common dso_local global i32 0, align 4
@TXPWR_LMT_WW = common dso_local global i16 0, align 2
@BAND_ON_2_4G = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_80 = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Wrong rate 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Wrong rate 0x%x: No CCK in 5G Band\0A\00", align 1
@BAND_ON_BOTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [124 x i8] c"Wrong index value to access power limit table [band %d][regulation %d][bandwidth %d][rf_path %d][rate_section %d][chnl %d]\0A\00", align 1
@MAX_REGULATION_NUM = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"No power limit table of the specified band\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32, i32, i32, i32)* @_rtl8812ae_phy_get_txpower_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8812ae_phy_get_txpower_limit(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rtl_priv*, align 8
  %15 = alloca %struct.rtl_efuse*, align 8
  %16 = alloca %struct.rtl_phy*, align 8
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca [10 x i32], align 16
  %29 = alloca i32, align 4
  %30 = alloca [10 x i32], align 16
  %31 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %33 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %32)
  store %struct.rtl_priv* %33, %struct.rtl_priv** %14, align 8
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %14, align 8
  %35 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %34)
  store %struct.rtl_efuse* %35, %struct.rtl_efuse** %15, align 8
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %14, align 8
  %37 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %36, i32 0, i32 0
  store %struct.rtl_phy* %37, %struct.rtl_phy** %16, align 8
  store i16 -1, i16* %17, align 2
  store i16 -1, i16* %18, align 2
  store i16 -1, i16* %19, align 2
  store i16 -1, i16* %20, align 2
  store i16 -1, i16* %21, align 2
  %38 = load i32, i32* @MAX_POWER_INDEX, align 4
  store i32 %38, i32* %27, align 4
  %39 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %40 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %6
  %44 = load i32, i32* @MAX_POWER_INDEX, align 4
  store i32 %44, i32* %7, align 4
  br label %340

45:                                               ; preds = %6
  %46 = load i16, i16* @TXPWR_LMT_WW, align 2
  store i16 %46, i16* %18, align 2
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @BAND_ON_2_4G, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i16 0, i16* %17, align 2
  br label %57

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @BAND_ON_5G, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i16 1, i16* %17, align 2
  br label %56

56:                                               ; preds = %55, %51
  br label %57

57:                                               ; preds = %56, %50
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @HT_CHANNEL_WIDTH_20, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i16 0, i16* %19, align 2
  br label %74

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i16 1, i16* %19, align 2
  br label %73

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @HT_CHANNEL_WIDTH_80, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i16 2, i16* %19, align 2
  br label %72

72:                                               ; preds = %71, %67
  br label %73

73:                                               ; preds = %72, %66
  br label %74

74:                                               ; preds = %73, %61
  %75 = load i32, i32* %12, align 4
  switch i32 %75, label %82 [
    i32 172, label %76
    i32 170, label %76
    i32 166, label %76
    i32 175, label %76
    i32 165, label %77
    i32 164, label %77
    i32 174, label %77
    i32 173, label %77
    i32 171, label %77
    i32 169, label %77
    i32 168, label %77
    i32 167, label %77
    i32 163, label %78
    i32 162, label %78
    i32 155, label %78
    i32 154, label %78
    i32 153, label %78
    i32 152, label %78
    i32 151, label %78
    i32 150, label %78
    i32 149, label %79
    i32 148, label %79
    i32 161, label %79
    i32 160, label %79
    i32 159, label %79
    i32 158, label %79
    i32 157, label %79
    i32 156, label %79
    i32 147, label %80
    i32 146, label %80
    i32 145, label %80
    i32 144, label %80
    i32 143, label %80
    i32 142, label %80
    i32 141, label %80
    i32 140, label %80
    i32 139, label %80
    i32 138, label %80
    i32 137, label %81
    i32 136, label %81
    i32 135, label %81
    i32 134, label %81
    i32 133, label %81
    i32 132, label %81
    i32 131, label %81
    i32 130, label %81
    i32 129, label %81
    i32 128, label %81
  ]

76:                                               ; preds = %74, %74, %74, %74
  store i16 0, i16* %20, align 2
  br label %88

77:                                               ; preds = %74, %74, %74, %74, %74, %74, %74, %74
  store i16 1, i16* %20, align 2
  br label %88

78:                                               ; preds = %74, %74, %74, %74, %74, %74, %74, %74
  store i16 2, i16* %20, align 2
  br label %88

79:                                               ; preds = %74, %74, %74, %74, %74, %74, %74, %74
  store i16 3, i16* %20, align 2
  br label %88

80:                                               ; preds = %74, %74, %74, %74, %74, %74, %74, %74, %74, %74
  store i16 4, i16* %20, align 2
  br label %88

81:                                               ; preds = %74, %74, %74, %74, %74, %74, %74, %74, %74, %74
  store i16 5, i16* %20, align 2
  br label %88

82:                                               ; preds = %74
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %14, align 8
  %84 = load i32, i32* @COMP_POWER, align 4
  %85 = load i32, i32* @DBG_LOUD, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %82, %81, %80, %79, %78, %77, %76
  %89 = load i16, i16* %17, align 2
  %90 = sext i16 %89 to i32
  %91 = load i32, i32* @BAND_ON_5G, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load i16, i16* %20, align 2
  %95 = sext i16 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %14, align 8
  %99 = load i32, i32* @COMP_POWER, align 4
  %100 = load i32, i32* @DBG_LOUD, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %97, %93, %88
  %104 = load i16, i16* %20, align 2
  %105 = sext i16 %104 to i32
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i16 0, i16* %19, align 2
  br label %108

108:                                              ; preds = %107, %103
  %109 = load i16, i16* %20, align 2
  %110 = sext i16 %109 to i32
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i16, i16* %20, align 2
  %114 = sext i16 %113 to i32
  %115 = icmp eq i32 %114, 3
  br i1 %115, label %116, label %125

116:                                              ; preds = %112, %108
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @BAND_ON_5G, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i16, i16* %19, align 2
  %122 = sext i16 %121 to i32
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i16 1, i16* %19, align 2
  br label %125

125:                                              ; preds = %124, %120, %116, %112
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @BAND_ON_2_4G, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %131 = load i32, i32* @BAND_ON_2_4G, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call signext i16 @_rtl8812ae_phy_get_chnl_idx_of_txpwr_lmt(%struct.ieee80211_hw* %130, i32 %131, i32 %132)
  store i16 %133, i16* %21, align 2
  br label %150

134:                                              ; preds = %125
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @BAND_ON_5G, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %140 = load i32, i32* @BAND_ON_5G, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call signext i16 @_rtl8812ae_phy_get_chnl_idx_of_txpwr_lmt(%struct.ieee80211_hw* %139, i32 %140, i32 %141)
  store i16 %142, i16* %21, align 2
  br label %149

143:                                              ; preds = %134
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @BAND_ON_BOTH, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %148

148:                                              ; preds = %147, %143
  br label %149

149:                                              ; preds = %148, %138
  br label %150

150:                                              ; preds = %149, %129
  %151 = load i16, i16* %17, align 2
  %152 = sext i16 %151 to i32
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %170, label %154

154:                                              ; preds = %150
  %155 = load i16, i16* %18, align 2
  %156 = sext i16 %155 to i32
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %170, label %158

158:                                              ; preds = %154
  %159 = load i16, i16* %19, align 2
  %160 = sext i16 %159 to i32
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %170, label %162

162:                                              ; preds = %158
  %163 = load i16, i16* %20, align 2
  %164 = sext i16 %163 to i32
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load i16, i16* %21, align 2
  %168 = sext i16 %167 to i32
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %187

170:                                              ; preds = %166, %162, %158, %154, %150
  %171 = load %struct.rtl_priv*, %struct.rtl_priv** %14, align 8
  %172 = load i32, i32* @COMP_POWER, align 4
  %173 = load i32, i32* @DBG_LOUD, align 4
  %174 = load i16, i16* %17, align 2
  %175 = sext i16 %174 to i32
  %176 = load i16, i16* %18, align 2
  %177 = sext i16 %176 to i32
  %178 = load i16, i16* %19, align 2
  %179 = sext i16 %178 to i32
  %180 = load i32, i32* %11, align 4
  %181 = load i16, i16* %20, align 2
  %182 = sext i16 %181 to i32
  %183 = load i16, i16* %21, align 2
  %184 = sext i16 %183 to i32
  %185 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %171, i32 %172, i32 %173, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.2, i64 0, i64 0), i32 %175, i32 %177, i32 %179, i32 %180, i32 %182, i32 %184)
  %186 = load i32, i32* @MAX_POWER_INDEX, align 4
  store i32 %186, i32* %7, align 4
  br label %340

187:                                              ; preds = %166
  %188 = load i16, i16* %17, align 2
  %189 = sext i16 %188 to i64
  store i64 %189, i64* %22, align 8
  %190 = load i16, i16* %18, align 2
  %191 = sext i16 %190 to i64
  store i64 %191, i64* %23, align 8
  %192 = load i16, i16* %19, align 2
  %193 = sext i16 %192 to i64
  store i64 %193, i64* %24, align 8
  %194 = load i16, i16* %20, align 2
  %195 = sext i16 %194 to i64
  store i64 %195, i64* %25, align 8
  %196 = load i16, i16* %21, align 2
  %197 = sext i16 %196 to i64
  store i64 %197, i64* %26, align 8
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* @BAND_ON_2_4G, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %264

201:                                              ; preds = %187
  %202 = bitcast [10 x i32]* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %202, i8 0, i64 40, i1 false)
  store i32 0, i32* %29, align 4
  br label %203

203:                                              ; preds = %230, %201
  %204 = load i32, i32* %29, align 4
  %205 = icmp slt i32 %204, 4
  br i1 %205, label %206, label %233

206:                                              ; preds = %203
  %207 = load %struct.rtl_phy*, %struct.rtl_phy** %16, align 8
  %208 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %207, i32 0, i32 1
  %209 = load i32*****, i32****** %208, align 8
  %210 = load i32, i32* %29, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32****, i32***** %209, i64 %211
  %213 = load i32****, i32***** %212, align 8
  %214 = load i64, i64* %24, align 8
  %215 = getelementptr inbounds i32***, i32**** %213, i64 %214
  %216 = load i32***, i32**** %215, align 8
  %217 = load i64, i64* %25, align 8
  %218 = getelementptr inbounds i32**, i32*** %216, i64 %217
  %219 = load i32**, i32*** %218, align 8
  %220 = load i64, i64* %26, align 8
  %221 = getelementptr inbounds i32*, i32** %219, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %11, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %29, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [10 x i32], [10 x i32]* %28, i64 0, i64 %228
  store i32 %226, i32* %229, align 4
  br label %230

230:                                              ; preds = %206
  %231 = load i32, i32* %29, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %29, align 4
  br label %203

233:                                              ; preds = %203
  %234 = load i16, i16* %18, align 2
  %235 = sext i16 %234 to i32
  %236 = load i16, i16* @TXPWR_LMT_WW, align 2
  %237 = sext i16 %236 to i32
  %238 = icmp eq i32 %235, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %233
  %240 = getelementptr inbounds [10 x i32], [10 x i32]* %28, i64 0, i64 0
  %241 = call i32 @_rtl8812ae_phy_get_world_wide_limit(i32* %240)
  br label %262

242:                                              ; preds = %233
  %243 = load %struct.rtl_phy*, %struct.rtl_phy** %16, align 8
  %244 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %243, i32 0, i32 1
  %245 = load i32*****, i32****** %244, align 8
  %246 = load i64, i64* %23, align 8
  %247 = getelementptr inbounds i32****, i32***** %245, i64 %246
  %248 = load i32****, i32***** %247, align 8
  %249 = load i64, i64* %24, align 8
  %250 = getelementptr inbounds i32***, i32**** %248, i64 %249
  %251 = load i32***, i32**** %250, align 8
  %252 = load i64, i64* %25, align 8
  %253 = getelementptr inbounds i32**, i32*** %251, i64 %252
  %254 = load i32**, i32*** %253, align 8
  %255 = load i64, i64* %26, align 8
  %256 = getelementptr inbounds i32*, i32** %254, i64 %255
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %11, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  br label %262

262:                                              ; preds = %242, %239
  %263 = phi i32 [ %241, %239 ], [ %261, %242 ]
  store i32 %263, i32* %27, align 4
  br label %338

264:                                              ; preds = %187
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* @BAND_ON_5G, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %332

268:                                              ; preds = %264
  %269 = bitcast [10 x i32]* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %269, i8 0, i64 40, i1 false)
  store i32 0, i32* %31, align 4
  br label %270

270:                                              ; preds = %298, %268
  %271 = load i32, i32* %31, align 4
  %272 = load i32, i32* @MAX_REGULATION_NUM, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %301

274:                                              ; preds = %270
  %275 = load %struct.rtl_phy*, %struct.rtl_phy** %16, align 8
  %276 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %275, i32 0, i32 0
  %277 = load i32*****, i32****** %276, align 8
  %278 = load i32, i32* %31, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32****, i32***** %277, i64 %279
  %281 = load i32****, i32***** %280, align 8
  %282 = load i64, i64* %24, align 8
  %283 = getelementptr inbounds i32***, i32**** %281, i64 %282
  %284 = load i32***, i32**** %283, align 8
  %285 = load i64, i64* %25, align 8
  %286 = getelementptr inbounds i32**, i32*** %284, i64 %285
  %287 = load i32**, i32*** %286, align 8
  %288 = load i64, i64* %26, align 8
  %289 = getelementptr inbounds i32*, i32** %287, i64 %288
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %11, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %31, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [10 x i32], [10 x i32]* %30, i64 0, i64 %296
  store i32 %294, i32* %297, align 4
  br label %298

298:                                              ; preds = %274
  %299 = load i32, i32* %31, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %31, align 4
  br label %270

301:                                              ; preds = %270
  %302 = load i16, i16* %18, align 2
  %303 = sext i16 %302 to i32
  %304 = load i16, i16* @TXPWR_LMT_WW, align 2
  %305 = sext i16 %304 to i32
  %306 = icmp eq i32 %303, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %301
  %308 = getelementptr inbounds [10 x i32], [10 x i32]* %30, i64 0, i64 0
  %309 = call i32 @_rtl8812ae_phy_get_world_wide_limit(i32* %308)
  br label %330

310:                                              ; preds = %301
  %311 = load %struct.rtl_phy*, %struct.rtl_phy** %16, align 8
  %312 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %311, i32 0, i32 0
  %313 = load i32*****, i32****** %312, align 8
  %314 = load i64, i64* %23, align 8
  %315 = getelementptr inbounds i32****, i32***** %313, i64 %314
  %316 = load i32****, i32***** %315, align 8
  %317 = load i64, i64* %26, align 8
  %318 = getelementptr inbounds i32***, i32**** %316, i64 %317
  %319 = load i32***, i32**** %318, align 8
  %320 = load i64, i64* %25, align 8
  %321 = getelementptr inbounds i32**, i32*** %319, i64 %320
  %322 = load i32**, i32*** %321, align 8
  %323 = load i64, i64* %26, align 8
  %324 = getelementptr inbounds i32*, i32** %322, i64 %323
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %11, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  br label %330

330:                                              ; preds = %310, %307
  %331 = phi i32 [ %309, %307 ], [ %329, %310 ]
  store i32 %331, i32* %27, align 4
  br label %337

332:                                              ; preds = %264
  %333 = load %struct.rtl_priv*, %struct.rtl_priv** %14, align 8
  %334 = load i32, i32* @COMP_INIT, align 4
  %335 = load i32, i32* @DBG_LOUD, align 4
  %336 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %333, i32 %334, i32 %335, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %337

337:                                              ; preds = %332, %330
  br label %338

338:                                              ; preds = %337, %262
  %339 = load i32, i32* %27, align 4
  store i32 %339, i32* %7, align 4
  br label %340

340:                                              ; preds = %338, %170, %43
  %341 = load i32, i32* %7, align 4
  ret i32 %341
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local signext i16 @_rtl8812ae_phy_get_chnl_idx_of_txpwr_lmt(%struct.ieee80211_hw*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @_rtl8812ae_phy_get_world_wide_limit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
