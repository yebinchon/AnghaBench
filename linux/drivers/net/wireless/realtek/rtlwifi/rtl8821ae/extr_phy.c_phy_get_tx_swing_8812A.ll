; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_phy_get_tx_swing_8812A.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_phy_get_tx_swing_8812A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64 }
%struct.rtl_dm = type { i32, i32 }
%struct.rtl_efuse = type { i64 }

@COMP_SCAN = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"===> PHY_GetTXBBSwing_8812A, bbSwing_2G: %d, bbSwing_5G: %d,autoload_failflag=%d.\0A\00", align 1
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@BAND_ON_5G = common dso_local global i64 0, align 8
@HARDWARE_TYPE_RTL8821AE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"===> PHY_GetTXBBSwing_8812A, swingA: 0x%X, swingB: 0x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"<=== PHY_GetTXBBSwing_8812A, out = 0x%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_get_tx_swing_8812A(%struct.ieee80211_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  %9 = alloca %struct.rtl_dm*, align 8
  %10 = alloca %struct.rtl_efuse*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  store %struct.rtl_priv* %21, %struct.rtl_priv** %7, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %23 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %22)
  %24 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %23)
  store %struct.rtl_hal* %24, %struct.rtl_hal** %8, align 8
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %26 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %25)
  store %struct.rtl_dm* %26, %struct.rtl_dm** %9, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %28 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %27)
  %29 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %28)
  store %struct.rtl_efuse* %29, %struct.rtl_efuse** %10, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 -1, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 -1, %32
  store i32 %33, i32* %14, align 4
  store i32 512, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %35 = load i32, i32* @COMP_SCAN, align 4
  %36 = load i32, i32* @DBG_LOUD, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.rtl_efuse*, %struct.rtl_efuse** %10, align 8
  %40 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %42)
  %44 = load %struct.rtl_efuse*, %struct.rtl_efuse** %10, align 8
  %45 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %125

48:                                               ; preds = %3
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @BAND_ON_2_4G, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %55 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 512, i32* %15, align 4
  br label %77

59:                                               ; preds = %52
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %60, -3
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 362, i32* %15, align 4
  br label %76

63:                                               ; preds = %59
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %64, -6
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 257, i32* %15, align 4
  br label %75

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, -9
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 182, i32* %15, align 4
  br label %74

71:                                               ; preds = %67
  %72 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %73 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  store i32 512, i32* %15, align 4
  br label %74

74:                                               ; preds = %71, %70
  br label %75

75:                                               ; preds = %74, %66
  br label %76

76:                                               ; preds = %75, %62
  br label %77

77:                                               ; preds = %76, %58
  br label %124

78:                                               ; preds = %48
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* @BAND_ON_5G, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %118

82:                                               ; preds = %78
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %85 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 512, i32* %15, align 4
  br label %117

89:                                               ; preds = %82
  %90 = load i32, i32* %14, align 4
  %91 = icmp eq i32 %90, -3
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 362, i32* %15, align 4
  br label %116

93:                                               ; preds = %89
  %94 = load i32, i32* %14, align 4
  %95 = icmp eq i32 %94, -6
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 257, i32* %15, align 4
  br label %115

97:                                               ; preds = %93
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %98, -9
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 182, i32* %15, align 4
  br label %114

101:                                              ; preds = %97
  %102 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %103 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %109 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %108, i32 0, i32 1
  store i32 -3, i32* %109, align 4
  store i32 362, i32* %15, align 4
  br label %113

110:                                              ; preds = %101
  %111 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %112 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %111, i32 0, i32 1
  store i32 0, i32* %112, align 4
  store i32 512, i32* %15, align 4
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %100
  br label %115

115:                                              ; preds = %114, %96
  br label %116

116:                                              ; preds = %115, %92
  br label %117

117:                                              ; preds = %116, %88
  br label %123

118:                                              ; preds = %78
  %119 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %120 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %119, i32 0, i32 0
  store i32 -3, i32* %120, align 4
  %121 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %122 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %121, i32 0, i32 1
  store i32 -3, i32* %122, align 4
  store i32 362, i32* %15, align 4
  br label %123

123:                                              ; preds = %118, %117
  br label %124

124:                                              ; preds = %123, %77
  br label %330

125:                                              ; preds = %3
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %126 = load i64, i64* %5, align 8
  %127 = load i64, i64* @BAND_ON_2_4G, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %164

129:                                              ; preds = %125
  %130 = load i32, i32* %11, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %134 = call i32 @efuse_shadow_read(%struct.ieee80211_hw* %133, i32 1, i32 198, i32* %17)
  %135 = load i32, i32* %17, align 4
  %136 = icmp eq i32 %135, 255
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %140

138:                                              ; preds = %132
  %139 = load i32, i32* %17, align 4
  br label %140

140:                                              ; preds = %138, %137
  %141 = phi i32 [ 0, %137 ], [ %139, %138 ]
  store i32 %141, i32* %17, align 4
  br label %163

142:                                              ; preds = %129
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 0, i32* %17, align 4
  br label %162

146:                                              ; preds = %142
  %147 = load i32, i32* %13, align 4
  %148 = icmp eq i32 %147, -3
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 5, i32* %17, align 4
  br label %161

150:                                              ; preds = %146
  %151 = load i32, i32* %13, align 4
  %152 = icmp eq i32 %151, -6
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 10, i32* %17, align 4
  br label %160

154:                                              ; preds = %150
  %155 = load i32, i32* %13, align 4
  %156 = icmp eq i32 %155, -9
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 255, i32* %17, align 4
  br label %159

158:                                              ; preds = %154
  store i32 0, i32* %17, align 4
  br label %159

159:                                              ; preds = %158, %157
  br label %160

160:                                              ; preds = %159, %153
  br label %161

161:                                              ; preds = %160, %149
  br label %162

162:                                              ; preds = %161, %145
  br label %163

163:                                              ; preds = %162, %140
  br label %199

164:                                              ; preds = %125
  %165 = load i32, i32* %12, align 4
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  %168 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %169 = call i32 @efuse_shadow_read(%struct.ieee80211_hw* %168, i32 1, i32 199, i32* %17)
  %170 = load i32, i32* %17, align 4
  %171 = icmp eq i32 %170, 255
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %175

173:                                              ; preds = %167
  %174 = load i32, i32* %17, align 4
  br label %175

175:                                              ; preds = %173, %172
  %176 = phi i32 [ 0, %172 ], [ %174, %173 ]
  store i32 %176, i32* %17, align 4
  br label %198

177:                                              ; preds = %164
  %178 = load i32, i32* %14, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 0, i32* %17, align 4
  br label %197

181:                                              ; preds = %177
  %182 = load i32, i32* %14, align 4
  %183 = icmp eq i32 %182, -3
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 5, i32* %17, align 4
  br label %196

185:                                              ; preds = %181
  %186 = load i32, i32* %14, align 4
  %187 = icmp eq i32 %186, -6
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 10, i32* %17, align 4
  br label %195

189:                                              ; preds = %185
  %190 = load i32, i32* %14, align 4
  %191 = icmp eq i32 %190, -9
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 255, i32* %17, align 4
  br label %194

193:                                              ; preds = %189
  store i32 0, i32* %17, align 4
  br label %194

194:                                              ; preds = %193, %192
  br label %195

195:                                              ; preds = %194, %188
  br label %196

196:                                              ; preds = %195, %184
  br label %197

197:                                              ; preds = %196, %180
  br label %198

198:                                              ; preds = %197, %175
  br label %199

199:                                              ; preds = %198, %163
  %200 = load i32, i32* %17, align 4
  %201 = and i32 %200, 3
  %202 = ashr i32 %201, 0
  store i32 %202, i32* %18, align 4
  %203 = load i32, i32* %17, align 4
  %204 = and i32 %203, 12
  %205 = ashr i32 %204, 2
  store i32 %205, i32* %19, align 4
  %206 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %207 = load i32, i32* @COMP_SCAN, align 4
  %208 = load i32, i32* @DBG_LOUD, align 4
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* %19, align 4
  %211 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %206, i32 %207, i32 %208, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %209, i32 %210)
  %212 = load i32, i32* %18, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %225

214:                                              ; preds = %199
  %215 = load i64, i64* %5, align 8
  %216 = load i64, i64* @BAND_ON_2_4G, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %220 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %219, i32 0, i32 0
  store i32 0, i32* %220, align 4
  br label %224

221:                                              ; preds = %214
  %222 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %223 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %222, i32 0, i32 1
  store i32 0, i32* %223, align 4
  br label %224

224:                                              ; preds = %221, %218
  store i32 512, i32* %15, align 4
  br label %270

225:                                              ; preds = %199
  %226 = load i32, i32* %18, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %239

228:                                              ; preds = %225
  %229 = load i64, i64* %5, align 8
  %230 = load i64, i64* @BAND_ON_2_4G, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %234 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %233, i32 0, i32 0
  store i32 -3, i32* %234, align 4
  br label %238

235:                                              ; preds = %228
  %236 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %237 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %236, i32 0, i32 1
  store i32 -3, i32* %237, align 4
  br label %238

238:                                              ; preds = %235, %232
  store i32 362, i32* %15, align 4
  br label %269

239:                                              ; preds = %225
  %240 = load i32, i32* %18, align 4
  %241 = icmp eq i32 %240, 2
  br i1 %241, label %242, label %253

242:                                              ; preds = %239
  %243 = load i64, i64* %5, align 8
  %244 = load i64, i64* @BAND_ON_2_4G, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %248 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %247, i32 0, i32 0
  store i32 -6, i32* %248, align 4
  br label %252

249:                                              ; preds = %242
  %250 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %251 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %250, i32 0, i32 1
  store i32 -6, i32* %251, align 4
  br label %252

252:                                              ; preds = %249, %246
  store i32 257, i32* %15, align 4
  br label %268

253:                                              ; preds = %239
  %254 = load i32, i32* %18, align 4
  %255 = icmp eq i32 %254, 3
  br i1 %255, label %256, label %267

256:                                              ; preds = %253
  %257 = load i64, i64* %5, align 8
  %258 = load i64, i64* @BAND_ON_2_4G, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %262 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %261, i32 0, i32 0
  store i32 -9, i32* %262, align 4
  br label %266

263:                                              ; preds = %256
  %264 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %265 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %264, i32 0, i32 1
  store i32 -9, i32* %265, align 4
  br label %266

266:                                              ; preds = %263, %260
  store i32 182, i32* %15, align 4
  br label %267

267:                                              ; preds = %266, %253
  br label %268

268:                                              ; preds = %267, %252
  br label %269

269:                                              ; preds = %268, %238
  br label %270

270:                                              ; preds = %269, %224
  %271 = load i32, i32* %19, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %284

273:                                              ; preds = %270
  %274 = load i64, i64* %5, align 8
  %275 = load i64, i64* @BAND_ON_2_4G, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %279 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %278, i32 0, i32 0
  store i32 0, i32* %279, align 4
  br label %283

280:                                              ; preds = %273
  %281 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %282 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %281, i32 0, i32 1
  store i32 0, i32* %282, align 4
  br label %283

283:                                              ; preds = %280, %277
  store i32 512, i32* %15, align 4
  br label %329

284:                                              ; preds = %270
  %285 = load i32, i32* %19, align 4
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %287, label %298

287:                                              ; preds = %284
  %288 = load i64, i64* %5, align 8
  %289 = load i64, i64* @BAND_ON_2_4G, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %287
  %292 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %293 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %292, i32 0, i32 0
  store i32 -3, i32* %293, align 4
  br label %297

294:                                              ; preds = %287
  %295 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %296 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %295, i32 0, i32 1
  store i32 -3, i32* %296, align 4
  br label %297

297:                                              ; preds = %294, %291
  store i32 362, i32* %15, align 4
  br label %328

298:                                              ; preds = %284
  %299 = load i32, i32* %19, align 4
  %300 = icmp eq i32 %299, 2
  br i1 %300, label %301, label %312

301:                                              ; preds = %298
  %302 = load i64, i64* %5, align 8
  %303 = load i64, i64* @BAND_ON_2_4G, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %307 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %306, i32 0, i32 0
  store i32 -6, i32* %307, align 4
  br label %311

308:                                              ; preds = %301
  %309 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %310 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %309, i32 0, i32 1
  store i32 -6, i32* %310, align 4
  br label %311

311:                                              ; preds = %308, %305
  store i32 257, i32* %15, align 4
  br label %327

312:                                              ; preds = %298
  %313 = load i32, i32* %19, align 4
  %314 = icmp eq i32 %313, 3
  br i1 %314, label %315, label %326

315:                                              ; preds = %312
  %316 = load i64, i64* %5, align 8
  %317 = load i64, i64* @BAND_ON_2_4G, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %315
  %320 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %321 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %320, i32 0, i32 0
  store i32 -9, i32* %321, align 4
  br label %325

322:                                              ; preds = %315
  %323 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %324 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %323, i32 0, i32 1
  store i32 -9, i32* %324, align 4
  br label %325

325:                                              ; preds = %322, %319
  store i32 182, i32* %15, align 4
  br label %326

326:                                              ; preds = %325, %312
  br label %327

327:                                              ; preds = %326, %311
  br label %328

328:                                              ; preds = %327, %297
  br label %329

329:                                              ; preds = %328, %283
  br label %330

330:                                              ; preds = %329, %124
  %331 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %332 = load i32, i32* @COMP_SCAN, align 4
  %333 = load i32, i32* @DBG_LOUD, align 4
  %334 = load i32, i32* %15, align 4
  %335 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %331, i32 %332, i32 %333, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %334)
  %336 = load i32, i32* %15, align 4
  ret i32 %336
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @efuse_shadow_read(%struct.ieee80211_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
