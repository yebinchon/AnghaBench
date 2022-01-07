; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_trx.c__rtl8723e_query_rxphystatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_trx.c__rtl8723e_query_rxphystatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_stats = type { i32, i32, i32, i32, i32*, i32, i32, i32*, i64, i32, i64, i8*, i8* }
%struct.rx_fwinfo_8723e = type { i32*, i32*, i32*, i32, i32* }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i32* }
%struct.rtl_ps_ctl = type { i64 }
%struct.phy_sts_cck_8723e_t = type { i32, i32 }

@ERFON = common dso_local global i64 0, align 8
@RFPGA0_XA_HSSIPARAMETER2 = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF6052_MAX_PATH = common dso_local global i32 0, align 4
@DESC92C_RATEMCS8 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS15 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo_8723e*, i32, i32, i32)* @_rtl8723e_query_rxphystatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723e_query_rxphystatus(%struct.ieee80211_hw* %0, %struct.rtl_stats* %1, i32* %2, %struct.rx_fwinfo_8723e* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.rtl_stats*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rx_fwinfo_8723e*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtl_priv*, align 8
  %16 = alloca %struct.rtl_ps_ctl*, align 8
  %17 = alloca %struct.phy_sts_cck_8723e_t*, align 8
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
  store %struct.rx_fwinfo_8723e* %3, %struct.rx_fwinfo_8723e** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %34 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %33)
  store %struct.rtl_priv* %34, %struct.rtl_priv** %15, align 8
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %36 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %35)
  store %struct.rtl_ps_ctl* %36, %struct.rtl_ps_ctl** %16, align 8
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
  br i1 %58, label %59, label %249

59:                                               ; preds = %7
  %60 = load %struct.rx_fwinfo_8723e*, %struct.rx_fwinfo_8723e** %11, align 8
  %61 = bitcast %struct.rx_fwinfo_8723e* %60 to %struct.phy_sts_cck_8723e_t*
  store %struct.phy_sts_cck_8723e_t* %61, %struct.phy_sts_cck_8723e_t** %17, align 8
  %62 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %16, align 8
  %63 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ERFON, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %69 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %70 = call i32 @BIT(i32 9)
  %71 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %68, i32 %69, i32 %70)
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %29, align 4
  br label %74

73:                                               ; preds = %59
  store i32 0, i32* %29, align 4
  br label %74

74:                                               ; preds = %73, %67
  %75 = load i32, i32* %29, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %113, label %77

77:                                               ; preds = %74
  %78 = load %struct.phy_sts_cck_8723e_t*, %struct.phy_sts_cck_8723e_t** %17, align 8
  %79 = getelementptr inbounds %struct.phy_sts_cck_8723e_t, %struct.phy_sts_cck_8723e_t* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %30, align 4
  %81 = load %struct.phy_sts_cck_8723e_t*, %struct.phy_sts_cck_8723e_t** %17, align 8
  %82 = getelementptr inbounds %struct.phy_sts_cck_8723e_t, %struct.phy_sts_cck_8723e_t* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 192
  store i32 %84, i32* %28, align 4
  %85 = load i32, i32* %28, align 4
  %86 = ashr i32 %85, 6
  store i32 %86, i32* %28, align 4
  %87 = load i32, i32* %28, align 4
  switch i32 %87, label %112 [
    i32 3, label %88
    i32 2, label %94
    i32 1, label %100
    i32 0, label %106
  ]

88:                                               ; preds = %77
  %89 = load i32, i32* %30, align 4
  %90 = and i32 %89, 62
  %91 = sub nsw i32 -46, %90
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %18, align 8
  br label %112

94:                                               ; preds = %77
  %95 = load i32, i32* %30, align 4
  %96 = and i32 %95, 62
  %97 = sub nsw i32 -26, %96
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  store i8* %99, i8** %18, align 8
  br label %112

100:                                              ; preds = %77
  %101 = load i32, i32* %30, align 4
  %102 = and i32 %101, 62
  %103 = sub nsw i32 -12, %102
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  store i8* %105, i8** %18, align 8
  br label %112

106:                                              ; preds = %77
  %107 = load i32, i32* %30, align 4
  %108 = and i32 %107, 62
  %109 = sub nsw i32 16, %108
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  store i8* %111, i8** %18, align 8
  br label %112

112:                                              ; preds = %77, %106, %100, %94, %88
  br label %155

113:                                              ; preds = %74
  %114 = load %struct.phy_sts_cck_8723e_t*, %struct.phy_sts_cck_8723e_t** %17, align 8
  %115 = getelementptr inbounds %struct.phy_sts_cck_8723e_t, %struct.phy_sts_cck_8723e_t* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %31, align 4
  %117 = load %struct.rx_fwinfo_8723e*, %struct.rx_fwinfo_8723e** %11, align 8
  %118 = getelementptr inbounds %struct.rx_fwinfo_8723e, %struct.rx_fwinfo_8723e* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 96
  store i32 %122, i32* %28, align 4
  %123 = load i32, i32* %28, align 4
  %124 = ashr i32 %123, 5
  store i32 %124, i32* %28, align 4
  %125 = load i32, i32* %28, align 4
  switch i32 %125, label %154 [
    i32 3, label %126
    i32 2, label %133
    i32 1, label %140
    i32 0, label %147
  ]

126:                                              ; preds = %113
  %127 = load i32, i32* %31, align 4
  %128 = and i32 %127, 31
  %129 = shl i32 %128, 1
  %130 = sub nsw i32 -46, %129
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  store i8* %132, i8** %18, align 8
  br label %154

133:                                              ; preds = %113
  %134 = load i32, i32* %31, align 4
  %135 = and i32 %134, 31
  %136 = shl i32 %135, 1
  %137 = sub nsw i32 -26, %136
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  store i8* %139, i8** %18, align 8
  br label %154

140:                                              ; preds = %113
  %141 = load i32, i32* %31, align 4
  %142 = and i32 %141, 31
  %143 = shl i32 %142, 1
  %144 = sub nsw i32 -12, %143
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to i8*
  store i8* %146, i8** %18, align 8
  br label %154

147:                                              ; preds = %113
  %148 = load i32, i32* %31, align 4
  %149 = and i32 %148, 31
  %150 = shl i32 %149, 1
  %151 = sub nsw i32 16, %150
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to i8*
  store i8* %153, i8** %18, align 8
  br label %154

154:                                              ; preds = %113, %147, %140, %133, %126
  br label %155

155:                                              ; preds = %154, %112
  %156 = load i8*, i8** %18, align 8
  %157 = call i32 @rtl_query_rxpwrpercentage(i8* %156)
  store i32 %157, i32* %22, align 4
  %158 = load i32, i32* %22, align 4
  %159 = add nsw i32 %158, 6
  store i32 %159, i32* %22, align 4
  %160 = load i32, i32* %22, align 4
  %161 = icmp sgt i32 %160, 100
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  store i32 100, i32* %22, align 4
  br label %163

163:                                              ; preds = %162, %155
  %164 = load i32, i32* %22, align 4
  %165 = icmp sgt i32 %164, 34
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32, i32* %22, align 4
  %168 = icmp sle i32 %167, 42
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* %22, align 4
  %171 = sub nsw i32 %170, 2
  store i32 %171, i32* %22, align 4
  br label %202

172:                                              ; preds = %166, %163
  %173 = load i32, i32* %22, align 4
  %174 = icmp sgt i32 %173, 26
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load i32, i32* %22, align 4
  %177 = icmp sle i32 %176, 34
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* %22, align 4
  %180 = sub nsw i32 %179, 6
  store i32 %180, i32* %22, align 4
  br label %201

181:                                              ; preds = %175, %172
  %182 = load i32, i32* %22, align 4
  %183 = icmp sgt i32 %182, 14
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load i32, i32* %22, align 4
  %186 = icmp sle i32 %185, 26
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* %22, align 4
  %189 = sub nsw i32 %188, 8
  store i32 %189, i32* %22, align 4
  br label %200

190:                                              ; preds = %184, %181
  %191 = load i32, i32* %22, align 4
  %192 = icmp sgt i32 %191, 4
  br i1 %192, label %193, label %199

193:                                              ; preds = %190
  %194 = load i32, i32* %22, align 4
  %195 = icmp sle i32 %194, 14
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* %22, align 4
  %198 = sub nsw i32 %197, 4
  store i32 %198, i32* %22, align 4
  br label %199

199:                                              ; preds = %196, %193, %190
  br label %200

200:                                              ; preds = %199, %187
  br label %201

201:                                              ; preds = %200, %178
  br label %202

202:                                              ; preds = %201, %169
  %203 = load i32, i32* %22, align 4
  %204 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %205 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 8
  %206 = load i8*, i8** %18, align 8
  %207 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %208 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %207, i32 0, i32 11
  store i8* %206, i8** %208, align 8
  %209 = load i32, i32* %12, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %248

211:                                              ; preds = %202
  %212 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %213 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = icmp sgt i32 %214, 40
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  store i32 100, i32* %32, align 4
  br label %235

217:                                              ; preds = %211
  %218 = load %struct.phy_sts_cck_8723e_t*, %struct.phy_sts_cck_8723e_t** %17, align 8
  %219 = getelementptr inbounds %struct.phy_sts_cck_8723e_t, %struct.phy_sts_cck_8723e_t* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %32, align 4
  %221 = load i32, i32* %32, align 4
  %222 = icmp sgt i32 %221, 64
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  store i32 0, i32* %32, align 4
  br label %234

224:                                              ; preds = %217
  %225 = load i32, i32* %32, align 4
  %226 = icmp slt i32 %225, 20
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  store i32 100, i32* %32, align 4
  br label %233

228:                                              ; preds = %224
  %229 = load i32, i32* %32, align 4
  %230 = sub nsw i32 64, %229
  %231 = mul nsw i32 %230, 100
  %232 = sdiv i32 %231, 44
  store i32 %232, i32* %32, align 4
  br label %233

233:                                              ; preds = %228, %227
  br label %234

234:                                              ; preds = %233, %223
  br label %235

235:                                              ; preds = %234, %216
  %236 = load i32, i32* %32, align 4
  %237 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %238 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %237, i32 0, i32 6
  store i32 %236, i32* %238, align 4
  %239 = load i32, i32* %32, align 4
  %240 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %241 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %240, i32 0, i32 4
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  store i32 %239, i32* %243, align 4
  %244 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %245 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %244, i32 0, i32 4
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  store i32 -1, i32* %247, align 4
  br label %248

248:                                              ; preds = %235, %202
  br label %408

249:                                              ; preds = %7
  %250 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %251 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  store i32 1, i32* %254, align 4
  %255 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %256 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  store i32 1, i32* %259, align 4
  %260 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %260, i32* %23, align 4
  br label %261

261:                                              ; preds = %329, %249
  %262 = load i32, i32* %23, align 4
  %263 = load i32, i32* @RF6052_MAX_PATH, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %332

265:                                              ; preds = %261
  %266 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %267 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %23, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %265
  %276 = load i32, i32* %20, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %20, align 4
  br label %278

278:                                              ; preds = %275, %265
  %279 = load %struct.rx_fwinfo_8723e*, %struct.rx_fwinfo_8723e** %11, align 8
  %280 = getelementptr inbounds %struct.rx_fwinfo_8723e, %struct.rx_fwinfo_8723e* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %23, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = and i32 %285, 63
  %287 = mul nsw i32 %286, 2
  %288 = sub nsw i32 %287, 110
  %289 = sext i32 %288 to i64
  %290 = inttoptr i64 %289 to i8*
  %291 = load i32, i32* %23, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 %292
  store i8* %290, i8** %293, align 8
  %294 = load i32, i32* %23, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 %295
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @rtl_query_rxpwrpercentage(i8* %297)
  store i32 %298, i32* %25, align 4
  %299 = load i32, i32* %25, align 4
  %300 = load i32, i32* %26, align 4
  %301 = add nsw i32 %300, %299
  store i32 %301, i32* %26, align 4
  %302 = load %struct.rx_fwinfo_8723e*, %struct.rx_fwinfo_8723e** %11, align 8
  %303 = getelementptr inbounds %struct.rx_fwinfo_8723e, %struct.rx_fwinfo_8723e* %302, i32 0, i32 2
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %23, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = sdiv i32 %308, 2
  %310 = sext i32 %309 to i64
  %311 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %312 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = load i64*, i64** %313, align 8
  %315 = load i32, i32* %23, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i64, i64* %314, i64 %316
  store i64 %310, i64* %317, align 8
  %318 = load i32, i32* %12, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %278
  %321 = load i32, i32* %25, align 4
  %322 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %323 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %322, i32 0, i32 7
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %23, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  store i32 %321, i32* %327, align 4
  br label %328

328:                                              ; preds = %320, %278
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %23, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %23, align 4
  br label %261

332:                                              ; preds = %261
  %333 = load %struct.rx_fwinfo_8723e*, %struct.rx_fwinfo_8723e** %11, align 8
  %334 = getelementptr inbounds %struct.rx_fwinfo_8723e, %struct.rx_fwinfo_8723e* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = ashr i32 %335, 1
  %337 = and i32 %336, 127
  %338 = sub nsw i32 %337, 110
  %339 = sext i32 %338 to i64
  %340 = inttoptr i64 %339 to i8*
  store i8* %340, i8** %18, align 8
  %341 = load i8*, i8** %18, align 8
  %342 = call i32 @rtl_query_rxpwrpercentage(i8* %341)
  store i32 %342, i32* %22, align 4
  %343 = load i32, i32* %22, align 4
  %344 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %345 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %344, i32 0, i32 5
  store i32 %343, i32* %345, align 8
  %346 = load i8*, i8** %18, align 8
  %347 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %348 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %347, i32 0, i32 12
  store i8* %346, i8** %348, align 8
  %349 = load i8*, i8** %18, align 8
  %350 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %351 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %350, i32 0, i32 11
  store i8* %349, i8** %351, align 8
  %352 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %353 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %352, i32 0, i32 10
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %369

356:                                              ; preds = %332
  %357 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %358 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %357, i32 0, i32 8
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @DESC92C_RATEMCS8, align 8
  %361 = icmp sge i64 %359, %360
  br i1 %361, label %362, label %369

362:                                              ; preds = %356
  %363 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %364 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %363, i32 0, i32 8
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @DESC92C_RATEMCS15, align 8
  %367 = icmp sle i64 %365, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %362
  store i32 2, i32* %24, align 4
  br label %370

369:                                              ; preds = %362, %356, %332
  store i32 1, i32* %24, align 4
  br label %370

370:                                              ; preds = %369, %368
  store i32 0, i32* %23, align 4
  br label %371

371:                                              ; preds = %404, %370
  %372 = load i32, i32* %23, align 4
  %373 = load i32, i32* %24, align 4
  %374 = icmp slt i32 %372, %373
  br i1 %374, label %375, label %407

375:                                              ; preds = %371
  %376 = load %struct.rx_fwinfo_8723e*, %struct.rx_fwinfo_8723e** %11, align 8
  %377 = getelementptr inbounds %struct.rx_fwinfo_8723e, %struct.rx_fwinfo_8723e* %376, i32 0, i32 4
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %23, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = call i32 @rtl_evm_db_to_percentage(i32 %382)
  store i32 %383, i32* %21, align 4
  %384 = load i32, i32* %12, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %403

386:                                              ; preds = %375
  %387 = load i32, i32* %23, align 4
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %394

389:                                              ; preds = %386
  %390 = load i32, i32* %21, align 4
  %391 = and i32 %390, 255
  %392 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %393 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %392, i32 0, i32 6
  store i32 %391, i32* %393, align 4
  br label %394

394:                                              ; preds = %389, %386
  %395 = load i32, i32* %21, align 4
  %396 = and i32 %395, 255
  %397 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %398 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %397, i32 0, i32 4
  %399 = load i32*, i32** %398, align 8
  %400 = load i32, i32* %23, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  store i32 %396, i32* %402, align 4
  br label %403

403:                                              ; preds = %394, %375
  br label %404

404:                                              ; preds = %403
  %405 = load i32, i32* %23, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %23, align 4
  br label %371

407:                                              ; preds = %371
  br label %408

408:                                              ; preds = %407, %248
  %409 = load i32, i32* %27, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %418

411:                                              ; preds = %408
  %412 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %413 = load i32, i32* %22, align 4
  %414 = call i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw* %412, i32 %413)
  %415 = trunc i64 %414 to i32
  %416 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %417 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %416, i32 0, i32 9
  store i32 %415, i32* %417, align 8
  br label %431

418:                                              ; preds = %408
  %419 = load i32, i32* %20, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %430

421:                                              ; preds = %418
  %422 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %423 = load i32, i32* %20, align 4
  %424 = load i32, i32* %26, align 4
  %425 = sdiv i32 %424, %423
  store i32 %425, i32* %26, align 4
  %426 = call i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw* %422, i32 %425)
  %427 = trunc i64 %426 to i32
  %428 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %429 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %428, i32 0, i32 9
  store i32 %427, i32* %429, align 8
  br label %430

430:                                              ; preds = %421, %418
  br label %431

431:                                              ; preds = %430, %411
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i64 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_query_rxpwrpercentage(i8*) #1

declare dso_local i32 @rtl_evm_db_to_percentage(i32) #1

declare dso_local i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
