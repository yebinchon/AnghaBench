; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c__rtl92ee_query_rxphystatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c__rtl92ee_query_rxphystatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_stats = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32*, i32, i64, i32 }
%struct.rx_fwinfo = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i64* }
%struct.phy_status_rpt = type { i32, i32, i64*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@RFPGA0_XA_HSSIPARAMETER2 = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF6052_MAX_PATH = common dso_local global i32 0, align 4
@DESC_RATEMCS8 = common dso_local global i64 0, align 8
@DESC_RATEMCS15 = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo*, i32, i32, i32)* @_rtl92ee_query_rxphystatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_query_rxphystatus(%struct.ieee80211_hw* %0, %struct.rtl_stats* %1, i32* %2, %struct.rx_fwinfo* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.rtl_stats*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rx_fwinfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtl_priv*, align 8
  %16 = alloca %struct.phy_status_rpt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [4 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
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
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %8, align 8
  store %struct.rtl_stats* %1, %struct.rtl_stats** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.rx_fwinfo* %3, %struct.rx_fwinfo** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %34 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %33)
  store %struct.rtl_priv* %34, %struct.rtl_priv** %15, align 8
  %35 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %11, align 8
  %36 = bitcast %struct.rx_fwinfo* %35 to %struct.phy_status_rpt*
  store %struct.phy_status_rpt* %36, %struct.phy_status_rpt** %16, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %25, align 4
  %37 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %38 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %26, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %42 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %45 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %48 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %50 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 -1, i32* %52, align 4
  %53 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %54 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 -1, i32* %56, align 4
  %57 = load i32, i32* %26, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %211

59:                                               ; preds = %7
  %60 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %61 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %30, align 4
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %64 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %65 = call i32 @BIT(i32 9)
  %66 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %63, i32 %64, i32 %65)
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %29, align 4
  %68 = load i32, i32* %30, align 4
  %69 = and i32 %68, 224
  %70 = ashr i32 %69, 5
  store i32 %70, i32* %27, align 4
  %71 = load i32, i32* %30, align 4
  %72 = and i32 %71, 31
  store i32 %72, i32* %28, align 4
  %73 = load i32, i32* %27, align 4
  switch i32 %73, label %126 [
    i32 7, label %74
    i32 6, label %84
    i32 5, label %89
    i32 4, label %94
    i32 3, label %99
    i32 2, label %104
    i32 1, label %118
    i32 0, label %122
  ]

74:                                               ; preds = %59
  %75 = load i32, i32* %28, align 4
  %76 = icmp sle i32 %75, 27
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* %28, align 4
  %79 = sub nsw i32 27, %78
  %80 = mul nsw i32 2, %79
  %81 = add nsw i32 -100, %80
  store i32 %81, i32* %17, align 4
  br label %83

82:                                               ; preds = %74
  store i32 -100, i32* %17, align 4
  br label %83

83:                                               ; preds = %82, %77
  br label %127

84:                                               ; preds = %59
  %85 = load i32, i32* %28, align 4
  %86 = sub nsw i32 2, %85
  %87 = mul nsw i32 2, %86
  %88 = add nsw i32 -48, %87
  store i32 %88, i32* %17, align 4
  br label %127

89:                                               ; preds = %59
  %90 = load i32, i32* %28, align 4
  %91 = sub nsw i32 7, %90
  %92 = mul nsw i32 2, %91
  %93 = add nsw i32 -42, %92
  store i32 %93, i32* %17, align 4
  br label %127

94:                                               ; preds = %59
  %95 = load i32, i32* %28, align 4
  %96 = sub nsw i32 7, %95
  %97 = mul nsw i32 2, %96
  %98 = add nsw i32 -36, %97
  store i32 %98, i32* %17, align 4
  br label %127

99:                                               ; preds = %59
  %100 = load i32, i32* %28, align 4
  %101 = sub nsw i32 7, %100
  %102 = mul nsw i32 2, %101
  %103 = add nsw i32 -24, %102
  store i32 %103, i32* %17, align 4
  br label %127

104:                                              ; preds = %59
  %105 = load i32, i32* %29, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32, i32* %28, align 4
  %109 = sub nsw i32 5, %108
  %110 = mul nsw i32 2, %109
  %111 = add nsw i32 -12, %110
  store i32 %111, i32* %17, align 4
  br label %117

112:                                              ; preds = %104
  %113 = load i32, i32* %28, align 4
  %114 = sub nsw i32 5, %113
  %115 = mul nsw i32 2, %114
  %116 = add nsw i32 -6, %115
  store i32 %116, i32* %17, align 4
  br label %117

117:                                              ; preds = %112, %107
  br label %127

118:                                              ; preds = %59
  %119 = load i32, i32* %28, align 4
  %120 = mul nsw i32 2, %119
  %121 = sub nsw i32 8, %120
  store i32 %121, i32* %17, align 4
  br label %127

122:                                              ; preds = %59
  %123 = load i32, i32* %28, align 4
  %124 = mul nsw i32 2, %123
  %125 = sub nsw i32 14, %124
  store i32 %125, i32* %17, align 4
  br label %127

126:                                              ; preds = %59
  store i32 0, i32* %17, align 4
  br label %127

127:                                              ; preds = %126, %122, %118, %117, %99, %94, %89, %84, %83
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %128, 16
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @rtl_query_rxpwrpercentage(i32 %130)
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* %29, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %161, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* %21, align 4
  %136 = icmp sge i32 %135, 80
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load i32, i32* %21, align 4
  %139 = sub nsw i32 %138, 80
  %140 = shl i32 %139, 1
  %141 = load i32, i32* %21, align 4
  %142 = sub nsw i32 %141, 80
  %143 = ashr i32 %142, 1
  %144 = add nsw i32 %140, %143
  %145 = add nsw i32 %144, 80
  store i32 %145, i32* %21, align 4
  br label %156

146:                                              ; preds = %134
  %147 = load i32, i32* %21, align 4
  %148 = icmp sle i32 %147, 78
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load i32, i32* %21, align 4
  %151 = icmp sge i32 %150, 20
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %21, align 4
  %154 = add nsw i32 %153, 3
  store i32 %154, i32* %21, align 4
  br label %155

155:                                              ; preds = %152, %149, %146
  br label %156

156:                                              ; preds = %155, %137
  %157 = load i32, i32* %21, align 4
  %158 = icmp sgt i32 %157, 100
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i32 100, i32* %21, align 4
  br label %160

160:                                              ; preds = %159, %156
  br label %161

161:                                              ; preds = %160, %127
  %162 = load i32, i32* %21, align 4
  %163 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %164 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %163, i32 0, i32 5
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* %21, align 4
  %166 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %167 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %166, i32 0, i32 6
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %17, align 4
  %169 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %170 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %210

173:                                              ; preds = %161
  %174 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %175 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = icmp sgt i32 %176, 40
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  store i32 100, i32* %31, align 4
  br label %197

179:                                              ; preds = %173
  %180 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %181 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %32, align 4
  %183 = load i32, i32* %32, align 4
  %184 = icmp sgt i32 %183, 64
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  store i32 0, i32* %31, align 4
  br label %196

186:                                              ; preds = %179
  %187 = load i32, i32* %32, align 4
  %188 = icmp slt i32 %187, 20
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  store i32 100, i32* %31, align 4
  br label %195

190:                                              ; preds = %186
  %191 = load i32, i32* %32, align 4
  %192 = sub nsw i32 64, %191
  %193 = mul nsw i32 %192, 100
  %194 = sdiv i32 %193, 44
  store i32 %194, i32* %31, align 4
  br label %195

195:                                              ; preds = %190, %189
  br label %196

196:                                              ; preds = %195, %185
  br label %197

197:                                              ; preds = %196, %178
  %198 = load i32, i32* %31, align 4
  %199 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %200 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %199, i32 0, i32 8
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* %31, align 4
  %202 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %203 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %202, i32 0, i32 4
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  store i32 %201, i32* %205, align 4
  %206 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %207 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  store i32 -1, i32* %209, align 4
  br label %210

210:                                              ; preds = %197, %161
  br label %394

211:                                              ; preds = %7
  %212 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %212, i32* %22, align 4
  br label %213

213:                                              ; preds = %270, %211
  %214 = load i32, i32* %22, align 4
  %215 = load i32, i32* @RF6052_MAX_PATH, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %273

217:                                              ; preds = %213
  %218 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %219 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 2
  %221 = load i64*, i64** %220, align 8
  %222 = load i32, i32* %22, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %217
  %228 = load i32, i32* %19, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %19, align 4
  br label %230

230:                                              ; preds = %227, %217
  %231 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %232 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %231, i32 0, i32 4
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = load i32, i32* %22, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = and i32 %238, 63
  %240 = mul nsw i32 %239, 2
  %241 = sub nsw i32 %240, 110
  %242 = load i32, i32* %22, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %243
  store i32 %241, i32* %244, align 4
  %245 = load i32, i32* %22, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %250 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %249, i32 0, i32 9
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %22, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32 %248, i32* %254, align 4
  %255 = load i32, i32* %22, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @rtl_query_rxpwrpercentage(i32 %258)
  store i32 %259, i32* %24, align 4
  %260 = load i32, i32* %24, align 4
  %261 = load i32, i32* %25, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, i32* %25, align 4
  %263 = load i32, i32* %24, align 4
  %264 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %265 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %264, i32 0, i32 10
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %22, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 %263, i32* %269, align 4
  br label %270

270:                                              ; preds = %230
  %271 = load i32, i32* %22, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %22, align 4
  br label %213

273:                                              ; preds = %213
  %274 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %275 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = ashr i32 %276, 1
  %278 = and i32 %277, 127
  %279 = sub nsw i32 %278, 110
  store i32 %279, i32* %17, align 4
  %280 = load i32, i32* %17, align 4
  %281 = call i32 @rtl_query_rxpwrpercentage(i32 %280)
  store i32 %281, i32* %21, align 4
  %282 = load i32, i32* %21, align 4
  %283 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %284 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %283, i32 0, i32 5
  store i32 %282, i32* %284, align 8
  %285 = load i32, i32* %21, align 4
  %286 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %287 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %286, i32 0, i32 6
  store i32 %285, i32* %287, align 4
  %288 = load i32, i32* %17, align 4
  %289 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %290 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %289, i32 0, i32 11
  store i32 %288, i32* %290, align 8
  %291 = load i32, i32* %17, align 4
  %292 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %293 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %292, i32 0, i32 7
  store i32 %291, i32* %293, align 8
  %294 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %295 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %294, i32 0, i32 12
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @DESC_RATEMCS8, align 8
  %298 = icmp sge i64 %296, %297
  br i1 %298, label %299, label %306

299:                                              ; preds = %273
  %300 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %301 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %300, i32 0, i32 12
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @DESC_RATEMCS15, align 8
  %304 = icmp sle i64 %302, %303
  br i1 %304, label %305, label %306

305:                                              ; preds = %299
  store i32 2, i32* %23, align 4
  br label %307

306:                                              ; preds = %299, %273
  store i32 1, i32* %23, align 4
  br label %307

307:                                              ; preds = %306, %305
  store i32 0, i32* %22, align 4
  br label %308

308:                                              ; preds = %341, %307
  %309 = load i32, i32* %22, align 4
  %310 = load i32, i32* %23, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %344

312:                                              ; preds = %308
  %313 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %314 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %313, i32 0, i32 3
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %22, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @rtl_evm_db_to_percentage(i32 %319)
  store i32 %320, i32* %20, align 4
  %321 = load i32, i32* %12, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %340

323:                                              ; preds = %312
  %324 = load i32, i32* %22, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %331

326:                                              ; preds = %323
  %327 = load i32, i32* %20, align 4
  %328 = and i32 %327, 255
  %329 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %330 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %329, i32 0, i32 8
  store i32 %328, i32* %330, align 4
  br label %331

331:                                              ; preds = %326, %323
  %332 = load i32, i32* %20, align 4
  %333 = and i32 %332, 255
  %334 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %335 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %334, i32 0, i32 4
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %22, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  store i32 %333, i32* %339, align 4
  br label %340

340:                                              ; preds = %331, %312
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %22, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %22, align 4
  br label %308

344:                                              ; preds = %308
  %345 = load i32, i32* %12, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %393

347:                                              ; preds = %344
  %348 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %348, i32* %22, align 4
  br label %349

349:                                              ; preds = %370, %347
  %350 = load i32, i32* %22, align 4
  %351 = load i32, i32* @RF90_PATH_B, align 4
  %352 = icmp sle i32 %350, %351
  br i1 %352, label %353, label %373

353:                                              ; preds = %349
  %354 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %355 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %354, i32 0, i32 2
  %356 = load i64*, i64** %355, align 8
  %357 = load i32, i32* %22, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i64, i64* %356, i64 %358
  %360 = load i64, i64* %359, align 8
  %361 = trunc i64 %360 to i32
  %362 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %363 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %362)
  %364 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %22, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  store i32 %361, i32* %369, align 4
  br label %370

370:                                              ; preds = %353
  %371 = load i32, i32* %22, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %22, align 4
  br label %349

373:                                              ; preds = %349
  %374 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %375 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %374)
  %376 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = icmp eq i32 %378, -1
  br i1 %379, label %380, label %385

380:                                              ; preds = %373
  %381 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %382 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %381)
  %383 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 1
  store i32 0, i32* %384, align 8
  br label %392

385:                                              ; preds = %373
  %386 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %387 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %386)
  %388 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %389, align 8
  br label %392

392:                                              ; preds = %385, %380
  br label %393

393:                                              ; preds = %392, %344
  br label %394

394:                                              ; preds = %393, %210
  %395 = load i32, i32* %26, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %404

397:                                              ; preds = %394
  %398 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %399 = load i32, i32* %21, align 4
  %400 = call i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw* %398, i32 %399)
  %401 = trunc i64 %400 to i32
  %402 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %403 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %402, i32 0, i32 13
  store i32 %401, i32* %403, align 8
  br label %417

404:                                              ; preds = %394
  %405 = load i32, i32* %19, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %416

407:                                              ; preds = %404
  %408 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %409 = load i32, i32* %19, align 4
  %410 = load i32, i32* %25, align 4
  %411 = sdiv i32 %410, %409
  store i32 %411, i32* %25, align 4
  %412 = call i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw* %408, i32 %411)
  %413 = trunc i64 %412 to i32
  %414 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %415 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %414, i32 0, i32 13
  store i32 %413, i32* %415, align 8
  br label %416

416:                                              ; preds = %407, %404
  br label %417

417:                                              ; preds = %416, %397
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_query_rxpwrpercentage(i32) #1

declare dso_local i32 @rtl_evm_db_to_percentage(i32) #1

declare dso_local i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
