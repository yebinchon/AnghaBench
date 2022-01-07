; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_trx.c__rtl92se_query_rxphystatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_trx.c__rtl92se_query_rxphystatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_stats = type { i32, i32, i32, i32, i32*, i32, i32, i32*, i64, i32, i64, i8*, i8* }
%struct.rx_fwinfo = type { i32*, i32*, i32*, i32, i32* }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i32* }
%struct.phy_sts_cck_8192s_t = type { i32, i32 }
%struct.rtl_ps_ctl = type { i64 }

@ERFON = common dso_local global i64 0, align 8
@RFPGA0_XA_HSSIPARAMETER2 = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF6052_MAX_PATH = common dso_local global i32 0, align 4
@DESC_RATEMCS8 = common dso_local global i64 0, align 8
@DESC_RATEMCS15 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo*, i32, i32, i32)* @_rtl92se_query_rxphystatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92se_query_rxphystatus(%struct.ieee80211_hw* %0, %struct.rtl_stats* %1, i32* %2, %struct.rx_fwinfo* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.rtl_stats*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rx_fwinfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtl_priv*, align 8
  %16 = alloca %struct.phy_sts_cck_8192s_t*, align 8
  %17 = alloca %struct.rtl_ps_ctl*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [4 x i8*], align 16
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
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %36 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %35)
  store %struct.rtl_ps_ctl* %36, %struct.rtl_ps_ctl** %17, align 8
  store i8* null, i8** %18, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %26, align 4
  %37 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %38 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %27, align 4
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
  %57 = load i32, i32* %27, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %248

59:                                               ; preds = %7
  %60 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %11, align 8
  %61 = bitcast %struct.rx_fwinfo* %60 to %struct.phy_sts_cck_8192s_t*
  store %struct.phy_sts_cck_8192s_t* %61, %struct.phy_sts_cck_8192s_t** %16, align 8
  %62 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %17, align 8
  %63 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ERFON, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %69 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %70 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %68, i32 %69, i32 512)
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %29, align 4
  br label %73

72:                                               ; preds = %59
  store i32 0, i32* %29, align 4
  br label %73

73:                                               ; preds = %72, %67
  %74 = load i32, i32* %29, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %112, label %76

76:                                               ; preds = %73
  %77 = load %struct.phy_sts_cck_8192s_t*, %struct.phy_sts_cck_8192s_t** %16, align 8
  %78 = getelementptr inbounds %struct.phy_sts_cck_8192s_t, %struct.phy_sts_cck_8192s_t* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %30, align 4
  %80 = load %struct.phy_sts_cck_8192s_t*, %struct.phy_sts_cck_8192s_t** %16, align 8
  %81 = getelementptr inbounds %struct.phy_sts_cck_8192s_t, %struct.phy_sts_cck_8192s_t* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 192
  store i32 %83, i32* %28, align 4
  %84 = load i32, i32* %28, align 4
  %85 = ashr i32 %84, 6
  store i32 %85, i32* %28, align 4
  %86 = load i32, i32* %28, align 4
  switch i32 %86, label %111 [
    i32 3, label %87
    i32 2, label %93
    i32 1, label %99
    i32 0, label %105
  ]

87:                                               ; preds = %76
  %88 = load i32, i32* %30, align 4
  %89 = and i32 %88, 62
  %90 = sub nsw i32 -40, %89
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  store i8* %92, i8** %18, align 8
  br label %111

93:                                               ; preds = %76
  %94 = load i32, i32* %30, align 4
  %95 = and i32 %94, 62
  %96 = sub nsw i32 -20, %95
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** %18, align 8
  br label %111

99:                                               ; preds = %76
  %100 = load i32, i32* %30, align 4
  %101 = and i32 %100, 62
  %102 = sub nsw i32 -2, %101
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** %18, align 8
  br label %111

105:                                              ; preds = %76
  %106 = load i32, i32* %30, align 4
  %107 = and i32 %106, 62
  %108 = sub nsw i32 14, %107
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  store i8* %110, i8** %18, align 8
  br label %111

111:                                              ; preds = %76, %105, %99, %93, %87
  br label %154

112:                                              ; preds = %73
  %113 = load %struct.phy_sts_cck_8192s_t*, %struct.phy_sts_cck_8192s_t** %16, align 8
  %114 = getelementptr inbounds %struct.phy_sts_cck_8192s_t, %struct.phy_sts_cck_8192s_t* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %31, align 4
  %116 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %11, align 8
  %117 = getelementptr inbounds %struct.rx_fwinfo, %struct.rx_fwinfo* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 96
  store i32 %121, i32* %28, align 4
  %122 = load i32, i32* %28, align 4
  %123 = ashr i32 %122, 5
  store i32 %123, i32* %28, align 4
  %124 = load i32, i32* %28, align 4
  switch i32 %124, label %153 [
    i32 3, label %125
    i32 2, label %132
    i32 1, label %139
    i32 0, label %146
  ]

125:                                              ; preds = %112
  %126 = load i32, i32* %31, align 4
  %127 = and i32 %126, 31
  %128 = shl i32 %127, 1
  %129 = sub nsw i32 -40, %128
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  store i8* %131, i8** %18, align 8
  br label %153

132:                                              ; preds = %112
  %133 = load i32, i32* %31, align 4
  %134 = and i32 %133, 31
  %135 = shl i32 %134, 1
  %136 = sub nsw i32 -20, %135
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  store i8* %138, i8** %18, align 8
  br label %153

139:                                              ; preds = %112
  %140 = load i32, i32* %31, align 4
  %141 = and i32 %140, 31
  %142 = shl i32 %141, 1
  %143 = sub nsw i32 -2, %142
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  store i8* %145, i8** %18, align 8
  br label %153

146:                                              ; preds = %112
  %147 = load i32, i32* %31, align 4
  %148 = and i32 %147, 31
  %149 = shl i32 %148, 1
  %150 = sub nsw i32 14, %149
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  store i8* %152, i8** %18, align 8
  br label %153

153:                                              ; preds = %112, %146, %139, %132, %125
  br label %154

154:                                              ; preds = %153, %111
  %155 = load i8*, i8** %18, align 8
  %156 = call i32 @rtl_query_rxpwrpercentage(i8* %155)
  store i32 %156, i32* %22, align 4
  %157 = load i32, i32* %22, align 4
  %158 = add nsw i32 %157, 6
  store i32 %158, i32* %22, align 4
  %159 = load i32, i32* %22, align 4
  %160 = icmp sgt i32 %159, 100
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  store i32 100, i32* %22, align 4
  br label %162

162:                                              ; preds = %161, %154
  %163 = load i32, i32* %22, align 4
  %164 = icmp sgt i32 %163, 34
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i32, i32* %22, align 4
  %167 = icmp sle i32 %166, 42
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* %22, align 4
  %170 = sub nsw i32 %169, 2
  store i32 %170, i32* %22, align 4
  br label %201

171:                                              ; preds = %165, %162
  %172 = load i32, i32* %22, align 4
  %173 = icmp sgt i32 %172, 26
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load i32, i32* %22, align 4
  %176 = icmp sle i32 %175, 34
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* %22, align 4
  %179 = sub nsw i32 %178, 6
  store i32 %179, i32* %22, align 4
  br label %200

180:                                              ; preds = %174, %171
  %181 = load i32, i32* %22, align 4
  %182 = icmp sgt i32 %181, 14
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i32, i32* %22, align 4
  %185 = icmp sle i32 %184, 26
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* %22, align 4
  %188 = sub nsw i32 %187, 8
  store i32 %188, i32* %22, align 4
  br label %199

189:                                              ; preds = %183, %180
  %190 = load i32, i32* %22, align 4
  %191 = icmp sgt i32 %190, 4
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load i32, i32* %22, align 4
  %194 = icmp sle i32 %193, 14
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, i32* %22, align 4
  %197 = sub nsw i32 %196, 4
  store i32 %197, i32* %22, align 4
  br label %198

198:                                              ; preds = %195, %192, %189
  br label %199

199:                                              ; preds = %198, %186
  br label %200

200:                                              ; preds = %199, %177
  br label %201

201:                                              ; preds = %200, %168
  %202 = load i32, i32* %22, align 4
  %203 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %204 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %203, i32 0, i32 5
  store i32 %202, i32* %204, align 8
  %205 = load i8*, i8** %18, align 8
  %206 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %207 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %206, i32 0, i32 11
  store i8* %205, i8** %207, align 8
  %208 = load i32, i32* %12, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %247

210:                                              ; preds = %201
  %211 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %212 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = icmp sgt i32 %213, 40
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  store i32 100, i32* %32, align 4
  br label %234

216:                                              ; preds = %210
  %217 = load %struct.phy_sts_cck_8192s_t*, %struct.phy_sts_cck_8192s_t** %16, align 8
  %218 = getelementptr inbounds %struct.phy_sts_cck_8192s_t, %struct.phy_sts_cck_8192s_t* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %32, align 4
  %220 = load i32, i32* %32, align 4
  %221 = icmp sgt i32 %220, 64
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  store i32 0, i32* %32, align 4
  br label %233

223:                                              ; preds = %216
  %224 = load i32, i32* %32, align 4
  %225 = icmp slt i32 %224, 20
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  store i32 100, i32* %32, align 4
  br label %232

227:                                              ; preds = %223
  %228 = load i32, i32* %32, align 4
  %229 = sub nsw i32 64, %228
  %230 = mul nsw i32 %229, 100
  %231 = sdiv i32 %230, 44
  store i32 %231, i32* %32, align 4
  br label %232

232:                                              ; preds = %227, %226
  br label %233

233:                                              ; preds = %232, %222
  br label %234

234:                                              ; preds = %233, %215
  %235 = load i32, i32* %32, align 4
  %236 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %237 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %236, i32 0, i32 6
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* %32, align 4
  %239 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %240 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %239, i32 0, i32 4
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  store i32 %238, i32* %242, align 4
  %243 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %244 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %243, i32 0, i32 4
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  store i32 -1, i32* %246, align 4
  br label %247

247:                                              ; preds = %234, %201
  br label %407

248:                                              ; preds = %7
  %249 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %250 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  store i32 1, i32* %253, align 4
  %254 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %255 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  store i32 1, i32* %258, align 4
  %259 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %259, i32* %23, align 4
  br label %260

260:                                              ; preds = %328, %248
  %261 = load i32, i32* %23, align 4
  %262 = load i32, i32* @RF6052_MAX_PATH, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %331

264:                                              ; preds = %260
  %265 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %266 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %23, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %264
  %275 = load i32, i32* %20, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %20, align 4
  br label %277

277:                                              ; preds = %274, %264
  %278 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %11, align 8
  %279 = getelementptr inbounds %struct.rx_fwinfo, %struct.rx_fwinfo* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %23, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %284, 63
  %286 = mul nsw i32 %285, 2
  %287 = sub nsw i32 %286, 110
  %288 = sext i32 %287 to i64
  %289 = inttoptr i64 %288 to i8*
  %290 = load i32, i32* %23, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 %291
  store i8* %289, i8** %292, align 8
  %293 = load i32, i32* %23, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 %294
  %296 = load i8*, i8** %295, align 8
  %297 = call i32 @rtl_query_rxpwrpercentage(i8* %296)
  store i32 %297, i32* %25, align 4
  %298 = load i32, i32* %25, align 4
  %299 = load i32, i32* %26, align 4
  %300 = add nsw i32 %299, %298
  store i32 %300, i32* %26, align 4
  %301 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %11, align 8
  %302 = getelementptr inbounds %struct.rx_fwinfo, %struct.rx_fwinfo* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %23, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = sdiv i32 %307, 2
  %309 = sext i32 %308 to i64
  %310 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %311 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 0
  %313 = load i64*, i64** %312, align 8
  %314 = load i32, i32* %23, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i64, i64* %313, i64 %315
  store i64 %309, i64* %316, align 8
  %317 = load i32, i32* %12, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %277
  %320 = load i32, i32* %25, align 4
  %321 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %322 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %321, i32 0, i32 7
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %23, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  store i32 %320, i32* %326, align 4
  br label %327

327:                                              ; preds = %319, %277
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %23, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %23, align 4
  br label %260

331:                                              ; preds = %260
  %332 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %11, align 8
  %333 = getelementptr inbounds %struct.rx_fwinfo, %struct.rx_fwinfo* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = ashr i32 %334, 1
  %336 = and i32 %335, 127
  %337 = sub nsw i32 %336, 110
  %338 = sext i32 %337 to i64
  %339 = inttoptr i64 %338 to i8*
  store i8* %339, i8** %18, align 8
  %340 = load i8*, i8** %18, align 8
  %341 = call i32 @rtl_query_rxpwrpercentage(i8* %340)
  store i32 %341, i32* %22, align 4
  %342 = load i32, i32* %22, align 4
  %343 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %344 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %343, i32 0, i32 5
  store i32 %342, i32* %344, align 8
  %345 = load i8*, i8** %18, align 8
  %346 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %347 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %346, i32 0, i32 12
  store i8* %345, i8** %347, align 8
  %348 = load i8*, i8** %18, align 8
  %349 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %350 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %349, i32 0, i32 11
  store i8* %348, i8** %350, align 8
  %351 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %352 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %351, i32 0, i32 10
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %368

355:                                              ; preds = %331
  %356 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %357 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %356, i32 0, i32 8
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @DESC_RATEMCS8, align 8
  %360 = icmp sge i64 %358, %359
  br i1 %360, label %361, label %368

361:                                              ; preds = %355
  %362 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %363 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %362, i32 0, i32 8
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @DESC_RATEMCS15, align 8
  %366 = icmp sle i64 %364, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %361
  store i32 2, i32* %24, align 4
  br label %369

368:                                              ; preds = %361, %355, %331
  store i32 1, i32* %24, align 4
  br label %369

369:                                              ; preds = %368, %367
  store i32 0, i32* %23, align 4
  br label %370

370:                                              ; preds = %403, %369
  %371 = load i32, i32* %23, align 4
  %372 = load i32, i32* %24, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %406

374:                                              ; preds = %370
  %375 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %11, align 8
  %376 = getelementptr inbounds %struct.rx_fwinfo, %struct.rx_fwinfo* %375, i32 0, i32 4
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %23, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @rtl_evm_db_to_percentage(i32 %381)
  store i32 %382, i32* %21, align 4
  %383 = load i32, i32* %12, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %402

385:                                              ; preds = %374
  %386 = load i32, i32* %23, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %393

388:                                              ; preds = %385
  %389 = load i32, i32* %21, align 4
  %390 = and i32 %389, 255
  %391 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %392 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %391, i32 0, i32 6
  store i32 %390, i32* %392, align 4
  br label %393

393:                                              ; preds = %388, %385
  %394 = load i32, i32* %21, align 4
  %395 = and i32 %394, 255
  %396 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %397 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %396, i32 0, i32 4
  %398 = load i32*, i32** %397, align 8
  %399 = load i32, i32* %23, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  store i32 %395, i32* %401, align 4
  br label %402

402:                                              ; preds = %393, %374
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %23, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %23, align 4
  br label %370

406:                                              ; preds = %370
  br label %407

407:                                              ; preds = %406, %247
  %408 = load i32, i32* %27, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %417

410:                                              ; preds = %407
  %411 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %412 = load i32, i32* %22, align 4
  %413 = call i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw* %411, i32 %412)
  %414 = trunc i64 %413 to i32
  %415 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %416 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %415, i32 0, i32 9
  store i32 %414, i32* %416, align 8
  br label %430

417:                                              ; preds = %407
  %418 = load i32, i32* %20, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %429

420:                                              ; preds = %417
  %421 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %422 = load i32, i32* %20, align 4
  %423 = load i32, i32* %26, align 4
  %424 = sdiv i32 %423, %422
  store i32 %424, i32* %26, align 4
  %425 = call i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw* %421, i32 %424)
  %426 = trunc i64 %425 to i32
  %427 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %428 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %427, i32 0, i32 9
  store i32 %426, i32* %428, align 8
  br label %429

429:                                              ; preds = %420, %417
  br label %430

430:                                              ; preds = %429, %410
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i64 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_query_rxpwrpercentage(i8*) #1

declare dso_local i32 @rtl_evm_db_to_percentage(i32) #1

declare dso_local i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
