; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_query_rxphystatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_query_rxphystatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_stats = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32*, i32, i64, i32*, i32, i64, i64, i8**, i8** }
%struct.rx_fwinfo_8821ae = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__, %struct.rtl_phy }
%struct.TYPE_6__ = type { i32*, i32, i64* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_8__ = type { i64 }
%struct.rtl_phy = type { i64 }
%struct.phy_status_rpt = type { i32*, i32, i32*, i32*, i32*, i32, i32, i32* }
%struct.rtl_dm = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF6052_MAX_PATH = common dso_local global i32 0, align 4
@DESC_RATEMCS8 = common dso_local global i64 0, align 8
@DESC_RATEMCS15 = common dso_local global i64 0, align 8
@DESC_RATEVHT2SS_MCS0 = common dso_local global i64 0, align 8
@DESC_RATEVHT2SS_MCS9 = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo_8821ae*, i32, i32, i32)* @query_rxphystatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_rxphystatus(%struct.ieee80211_hw* %0, %struct.rtl_stats* %1, i32* %2, %struct.rx_fwinfo_8821ae* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.rtl_stats*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rx_fwinfo_8821ae*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtl_priv*, align 8
  %16 = alloca %struct.phy_status_rpt*, align 8
  %17 = alloca %struct.rtl_dm*, align 8
  %18 = alloca %struct.rtl_phy*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %8, align 8
  store %struct.rtl_stats* %1, %struct.rtl_stats** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.rx_fwinfo_8821ae* %3, %struct.rx_fwinfo_8821ae** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %37 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %36)
  store %struct.rtl_priv* %37, %struct.rtl_priv** %15, align 8
  %38 = load %struct.rx_fwinfo_8821ae*, %struct.rx_fwinfo_8821ae** %11, align 8
  %39 = bitcast %struct.rx_fwinfo_8821ae* %38 to %struct.phy_status_rpt*
  store %struct.phy_status_rpt* %39, %struct.phy_status_rpt** %16, align 8
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %41 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %40)
  %42 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %41)
  store %struct.rtl_dm* %42, %struct.rtl_dm** %17, align 8
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 3
  store %struct.rtl_phy* %44, %struct.rtl_phy** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %28, align 4
  %45 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %46 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %29, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %50 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %53 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %56 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %58 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 -1, i32* %60, align 4
  %61 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %62 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 -1, i32* %64, align 4
  %65 = load i32, i32* %29, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %260

67:                                               ; preds = %7
  %68 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %69 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %33, align 4
  %73 = load %struct.rtl_phy*, %struct.rtl_phy** %18, align 8
  %74 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %32, align 4
  %77 = load i32, i32* %33, align 4
  %78 = and i32 %77, 224
  %79 = ashr i32 %78, 5
  store i32 %79, i32* %30, align 4
  %80 = load i32, i32* %33, align 4
  %81 = and i32 %80, 31
  store i32 %81, i32* %31, align 4
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %83 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %178

88:                                               ; preds = %67
  %89 = load i32, i32* %30, align 4
  switch i32 %89, label %142 [
    i32 7, label %90
    i32 6, label %100
    i32 5, label %105
    i32 4, label %110
    i32 3, label %115
    i32 2, label %120
    i32 1, label %134
    i32 0, label %138
  ]

90:                                               ; preds = %88
  %91 = load i32, i32* %31, align 4
  %92 = icmp sle i32 %91, 27
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* %31, align 4
  %95 = sub nsw i32 27, %94
  %96 = mul nsw i32 2, %95
  %97 = add nsw i32 -100, %96
  store i32 %97, i32* %19, align 4
  br label %99

98:                                               ; preds = %90
  store i32 -100, i32* %19, align 4
  br label %99

99:                                               ; preds = %98, %93
  br label %143

100:                                              ; preds = %88
  %101 = load i32, i32* %31, align 4
  %102 = sub nsw i32 2, %101
  %103 = mul nsw i32 2, %102
  %104 = add nsw i32 -48, %103
  store i32 %104, i32* %19, align 4
  br label %143

105:                                              ; preds = %88
  %106 = load i32, i32* %31, align 4
  %107 = sub nsw i32 7, %106
  %108 = mul nsw i32 2, %107
  %109 = add nsw i32 -42, %108
  store i32 %109, i32* %19, align 4
  br label %143

110:                                              ; preds = %88
  %111 = load i32, i32* %31, align 4
  %112 = sub nsw i32 7, %111
  %113 = mul nsw i32 2, %112
  %114 = add nsw i32 -36, %113
  store i32 %114, i32* %19, align 4
  br label %143

115:                                              ; preds = %88
  %116 = load i32, i32* %31, align 4
  %117 = sub nsw i32 7, %116
  %118 = mul nsw i32 2, %117
  %119 = add nsw i32 -24, %118
  store i32 %119, i32* %19, align 4
  br label %143

120:                                              ; preds = %88
  %121 = load i32, i32* %32, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i32, i32* %31, align 4
  %125 = sub nsw i32 5, %124
  %126 = mul nsw i32 2, %125
  %127 = add nsw i32 -12, %126
  store i32 %127, i32* %19, align 4
  br label %133

128:                                              ; preds = %120
  %129 = load i32, i32* %31, align 4
  %130 = sub nsw i32 5, %129
  %131 = mul nsw i32 2, %130
  %132 = add nsw i32 -6, %131
  store i32 %132, i32* %19, align 4
  br label %133

133:                                              ; preds = %128, %123
  br label %143

134:                                              ; preds = %88
  %135 = load i32, i32* %31, align 4
  %136 = mul nsw i32 2, %135
  %137 = sub nsw i32 8, %136
  store i32 %137, i32* %19, align 4
  br label %143

138:                                              ; preds = %88
  %139 = load i32, i32* %31, align 4
  %140 = mul nsw i32 2, %139
  %141 = sub nsw i32 14, %140
  store i32 %141, i32* %19, align 4
  br label %143

142:                                              ; preds = %88
  br label %143

143:                                              ; preds = %142, %138, %134, %133, %115, %110, %105, %100, %99
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 6
  store i32 %145, i32* %19, align 4
  %146 = load i32, i32* %19, align 4
  %147 = call i32 @rtl_query_rxpwrpercentage(i32 %146)
  store i32 %147, i32* %24, align 4
  %148 = load i32, i32* %32, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %177, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* %24, align 4
  %152 = icmp sge i32 %151, 80
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load i32, i32* %24, align 4
  %155 = sub nsw i32 %154, 80
  %156 = shl i32 %155, 1
  %157 = load i32, i32* %24, align 4
  %158 = sub nsw i32 %157, 80
  %159 = ashr i32 %158, 1
  %160 = add nsw i32 %156, %159
  %161 = add nsw i32 %160, 80
  store i32 %161, i32* %24, align 4
  br label %172

162:                                              ; preds = %150
  %163 = load i32, i32* %24, align 4
  %164 = icmp sle i32 %163, 78
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i32, i32* %24, align 4
  %167 = icmp sge i32 %166, 20
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* %24, align 4
  %170 = add nsw i32 %169, 3
  store i32 %170, i32* %24, align 4
  br label %171

171:                                              ; preds = %168, %165, %162
  br label %172

172:                                              ; preds = %171, %153
  %173 = load i32, i32* %24, align 4
  %174 = icmp sgt i32 %173, 100
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 100, i32* %24, align 4
  br label %176

176:                                              ; preds = %175, %172
  br label %177

177:                                              ; preds = %176, %143
  br label %213

178:                                              ; preds = %67
  store i32 -6, i32* %34, align 4
  %179 = load i32, i32* %30, align 4
  switch i32 %179, label %210 [
    i32 5, label %180
    i32 4, label %186
    i32 2, label %192
    i32 1, label %198
    i32 0, label %204
  ]

180:                                              ; preds = %178
  %181 = load i32, i32* %34, align 4
  %182 = sub nsw i32 %181, 32
  %183 = load i32, i32* %31, align 4
  %184 = mul nsw i32 2, %183
  %185 = sub nsw i32 %182, %184
  store i32 %185, i32* %19, align 4
  br label %210

186:                                              ; preds = %178
  %187 = load i32, i32* %34, align 4
  %188 = sub nsw i32 %187, 24
  %189 = load i32, i32* %31, align 4
  %190 = mul nsw i32 2, %189
  %191 = sub nsw i32 %188, %190
  store i32 %191, i32* %19, align 4
  br label %210

192:                                              ; preds = %178
  %193 = load i32, i32* %34, align 4
  %194 = sub nsw i32 %193, 11
  %195 = load i32, i32* %31, align 4
  %196 = mul nsw i32 2, %195
  %197 = sub nsw i32 %194, %196
  store i32 %197, i32* %19, align 4
  br label %210

198:                                              ; preds = %178
  %199 = load i32, i32* %34, align 4
  %200 = add nsw i32 %199, 5
  %201 = load i32, i32* %31, align 4
  %202 = mul nsw i32 2, %201
  %203 = sub nsw i32 %200, %202
  store i32 %203, i32* %19, align 4
  br label %210

204:                                              ; preds = %178
  %205 = load i32, i32* %34, align 4
  %206 = add nsw i32 %205, 21
  %207 = load i32, i32* %31, align 4
  %208 = mul nsw i32 2, %207
  %209 = sub nsw i32 %206, %208
  store i32 %209, i32* %19, align 4
  br label %210

210:                                              ; preds = %178, %204, %198, %192, %186, %180
  %211 = load i32, i32* %19, align 4
  %212 = call i32 @rtl_query_rxpwrpercentage(i32 %211)
  store i32 %212, i32* %24, align 4
  br label %213

213:                                              ; preds = %210, %177
  %214 = load i32, i32* %24, align 4
  %215 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %216 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %215, i32 0, i32 5
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* %19, align 4
  %218 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %219 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %218, i32 0, i32 6
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %12, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %259

222:                                              ; preds = %213
  %223 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %224 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = icmp sgt i32 %225, 40
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  store i32 100, i32* %35, align 4
  br label %246

228:                                              ; preds = %222
  %229 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %230 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  store i32 %231, i32* %35, align 4
  %232 = load i32, i32* %35, align 4
  %233 = icmp sgt i32 %232, 64
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  store i32 0, i32* %35, align 4
  br label %245

235:                                              ; preds = %228
  %236 = load i32, i32* %35, align 4
  %237 = icmp slt i32 %236, 20
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  store i32 100, i32* %35, align 4
  br label %244

239:                                              ; preds = %235
  %240 = load i32, i32* %35, align 4
  %241 = sub nsw i32 64, %240
  %242 = mul nsw i32 %241, 100
  %243 = sdiv i32 %242, 44
  store i32 %243, i32* %35, align 4
  br label %244

244:                                              ; preds = %239, %238
  br label %245

245:                                              ; preds = %244, %234
  br label %246

246:                                              ; preds = %245, %227
  %247 = load i32, i32* %35, align 4
  %248 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %249 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %248, i32 0, i32 7
  store i32 %247, i32* %249, align 8
  %250 = load i32, i32* %35, align 4
  %251 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %252 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %251, i32 0, i32 4
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  store i32 %250, i32* %254, align 4
  %255 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %256 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %255, i32 0, i32 4
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  store i32 -1, i32* %258, align 4
  br label %259

259:                                              ; preds = %246, %213
  br label %506

260:                                              ; preds = %7
  %261 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %261, i32* %25, align 4
  br label %262

262:                                              ; preds = %364, %260
  %263 = load i32, i32* %25, align 4
  %264 = load i32, i32* @RF6052_MAX_PATH, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %367

266:                                              ; preds = %262
  %267 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %268 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 2
  %270 = load i64*, i64** %269, align 8
  %271 = load i32, i32* %25, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i64, i64* %270, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %266
  %277 = load i32, i32* %21, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %21, align 4
  br label %279

279:                                              ; preds = %276, %266
  %280 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %281 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %280, i32 0, i32 2
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %25, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, 127
  %288 = sub nsw i32 %287, 110
  %289 = load i32, i32* %25, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %290
  store i32 %288, i32* %291, align 4
  %292 = load i32, i32* %25, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @rtl_query_rxpwrpercentage(i32 %295)
  store i32 %296, i32* %27, align 4
  %297 = load i32, i32* %27, align 4
  %298 = load i32, i32* %28, align 4
  %299 = add nsw i32 %298, %297
  store i32 %299, i32* %28, align 4
  %300 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %301 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %300, i32 0, i32 3
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %25, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = sdiv i32 %306, 2
  %308 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %309 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %308, i32 0, i32 8
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %25, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  store i32 %307, i32* %313, align 4
  %314 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %315 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %314, i32 0, i32 3
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %25, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = sdiv i32 %320, 2
  %322 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %323 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %25, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  store i32 %321, i32* %328, align 4
  %329 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %330 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %25, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = call i8* @odm_cfo(i32 %335)
  %337 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %338 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %337, i32 0, i32 17
  %339 = load i8**, i8*** %338, align 8
  %340 = load i32, i32* %25, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8*, i8** %339, i64 %341
  store i8* %336, i8** %342, align 8
  %343 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %344 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %343, i32 0, i32 4
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %25, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = call i8* @odm_cfo(i32 %349)
  %351 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %352 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %351, i32 0, i32 16
  %353 = load i8**, i8*** %352, align 8
  %354 = load i32, i32* %25, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i8*, i8** %353, i64 %355
  store i8* %350, i8** %356, align 8
  %357 = load i32, i32* %27, align 4
  %358 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %359 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %358, i32 0, i32 9
  %360 = load i32*, i32** %359, align 8
  %361 = load i32, i32* %25, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  store i32 %357, i32* %363, align 4
  br label %364

364:                                              ; preds = %279
  %365 = load i32, i32* %25, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %25, align 4
  br label %262

367:                                              ; preds = %262
  %368 = load %struct.rx_fwinfo_8821ae*, %struct.rx_fwinfo_8821ae** %11, align 8
  %369 = getelementptr inbounds %struct.rx_fwinfo_8821ae, %struct.rx_fwinfo_8821ae* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = ashr i32 %370, 1
  %372 = and i32 %371, 127
  %373 = sub nsw i32 %372, 110
  store i32 %373, i32* %19, align 4
  %374 = load i32, i32* %19, align 4
  %375 = call i32 @rtl_query_rxpwrpercentage(i32 %374)
  store i32 %375, i32* %24, align 4
  %376 = load i32, i32* %24, align 4
  %377 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %378 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %377, i32 0, i32 5
  store i32 %376, i32* %378, align 8
  %379 = load i32, i32* %19, align 4
  %380 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %381 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %380, i32 0, i32 10
  store i32 %379, i32* %381, align 8
  %382 = load i32, i32* %19, align 4
  %383 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %384 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %383, i32 0, i32 6
  store i32 %382, i32* %384, align 4
  %385 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %386 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %385, i32 0, i32 15
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %401

389:                                              ; preds = %367
  %390 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %391 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %390, i32 0, i32 11
  %392 = load i64, i64* %391, align 8
  %393 = load i64, i64* @DESC_RATEMCS8, align 8
  %394 = icmp sge i64 %392, %393
  br i1 %394, label %395, label %401

395:                                              ; preds = %389
  %396 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %397 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %396, i32 0, i32 11
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @DESC_RATEMCS15, align 8
  %400 = icmp sle i64 %398, %399
  br i1 %400, label %418, label %401

401:                                              ; preds = %395, %389, %367
  %402 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %403 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %402, i32 0, i32 14
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %419

406:                                              ; preds = %401
  %407 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %408 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %407, i32 0, i32 11
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* @DESC_RATEVHT2SS_MCS0, align 8
  %411 = icmp sge i64 %409, %410
  br i1 %411, label %412, label %419

412:                                              ; preds = %406
  %413 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %414 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %413, i32 0, i32 11
  %415 = load i64, i64* %414, align 8
  %416 = load i64, i64* @DESC_RATEVHT2SS_MCS9, align 8
  %417 = icmp sle i64 %415, %416
  br i1 %417, label %418, label %419

418:                                              ; preds = %412, %395
  store i32 2, i32* %26, align 4
  br label %420

419:                                              ; preds = %412, %406, %401
  store i32 1, i32* %26, align 4
  br label %420

420:                                              ; preds = %419, %418
  store i32 0, i32* %25, align 4
  br label %421

421:                                              ; preds = %467, %420
  %422 = load i32, i32* %25, align 4
  %423 = load i32, i32* %26, align 4
  %424 = icmp slt i32 %422, %423
  br i1 %424, label %425, label %470

425:                                              ; preds = %421
  %426 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %427 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %426, i32 0, i32 7
  %428 = load i32*, i32** %427, align 8
  %429 = load i32, i32* %25, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %428, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @rtl_evm_db_to_percentage(i32 %432)
  store i32 %433, i32* %22, align 4
  %434 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %435 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %434, i32 0, i32 7
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %25, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = call i32 @_rtl8821ae_evm_dbm_jaguar(i32 %440)
  store i32 %441, i32* %23, align 4
  %442 = load i32, i32* %12, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %466

444:                                              ; preds = %425
  %445 = load i32, i32* %25, align 4
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %444
  %448 = load i32, i32* %22, align 4
  %449 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %450 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %449, i32 0, i32 7
  store i32 %448, i32* %450, align 8
  br label %451

451:                                              ; preds = %447, %444
  %452 = load i32, i32* %22, align 4
  %453 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %454 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %453, i32 0, i32 4
  %455 = load i32*, i32** %454, align 8
  %456 = load i32, i32* %25, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  store i32 %452, i32* %458, align 4
  %459 = load i32, i32* %23, align 4
  %460 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %461 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %460, i32 0, i32 12
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* %25, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  store i32 %459, i32* %465, align 4
  br label %466

466:                                              ; preds = %451, %425
  br label %467

467:                                              ; preds = %466
  %468 = load i32, i32* %25, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %25, align 4
  br label %421

470:                                              ; preds = %421
  %471 = load i32, i32* %12, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %505

473:                                              ; preds = %470
  %474 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %474, i32* %25, align 4
  br label %475

475:                                              ; preds = %495, %473
  %476 = load i32, i32* %25, align 4
  %477 = load i32, i32* @RF90_PATH_B, align 4
  %478 = icmp sle i32 %476, %477
  br i1 %478, label %479, label %498

479:                                              ; preds = %475
  %480 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %481 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %480, i32 0, i32 4
  %482 = load i32*, i32** %481, align 8
  %483 = load i32, i32* %25, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %482, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %488 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %487)
  %489 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %489, i32 0, i32 0
  %491 = load i32*, i32** %490, align 8
  %492 = load i32, i32* %25, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32, i32* %491, i64 %493
  store i32 %486, i32* %494, align 4
  br label %495

495:                                              ; preds = %479
  %496 = load i32, i32* %25, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %25, align 4
  br label %475

498:                                              ; preds = %475
  %499 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %500 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %499)
  %501 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 8
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %502, align 8
  br label %505

505:                                              ; preds = %498, %470
  br label %506

506:                                              ; preds = %505, %259
  %507 = load i32, i32* %29, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %516

509:                                              ; preds = %506
  %510 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %511 = load i32, i32* %24, align 4
  %512 = call i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw* %510, i32 %511)
  %513 = trunc i64 %512 to i32
  %514 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %515 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %514, i32 0, i32 13
  store i32 %513, i32* %515, align 8
  br label %529

516:                                              ; preds = %506
  %517 = load i32, i32* %21, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %528

519:                                              ; preds = %516
  %520 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %521 = load i32, i32* %21, align 4
  %522 = load i32, i32* %28, align 4
  %523 = sdiv i32 %522, %521
  store i32 %523, i32* %28, align 4
  %524 = call i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw* %520, i32 %523)
  %525 = trunc i64 %524 to i32
  %526 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %527 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %526, i32 0, i32 13
  store i32 %525, i32* %527, align 8
  br label %528

528:                                              ; preds = %519, %516
  br label %529

529:                                              ; preds = %528, %509
  %530 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %531 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %530, i32 0, i32 6
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.rtl_dm*, %struct.rtl_dm** %17, align 8
  %534 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %534, i32 0, i32 1
  store i32 %532, i32* %535, align 4
  %536 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %537 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %536, i32 0, i32 5
  %538 = load i32, i32* %537, align 8
  %539 = load %struct.rtl_dm*, %struct.rtl_dm** %17, align 8
  %540 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %540, i32 0, i32 0
  store i32 %538, i32* %541, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_query_rxpwrpercentage(i32) #1

declare dso_local i8* @odm_cfo(i32) #1

declare dso_local i32 @rtl_evm_db_to_percentage(i32) #1

declare dso_local i32 @_rtl8821ae_evm_dbm_jaguar(i32) #1

declare dso_local i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
