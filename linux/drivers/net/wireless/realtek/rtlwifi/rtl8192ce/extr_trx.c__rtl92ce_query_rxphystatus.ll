; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_trx.c__rtl92ce_query_rxphystatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_trx.c__rtl92ce_query_rxphystatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_stats = type { i32, i32, i32, i32, i32*, i32, i32, i32*, i64, i32, i64, i8*, i8* }
%struct.rx_desc_92c = type { i32 }
%struct.rx_fwinfo_92c = type { i32*, i32*, i32*, i32, i32* }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i32* }
%struct.phy_sts_cck_8192s_t = type { i32, i32 }
%struct.rtl_ps_ctl = type { i64 }

@ERFON = common dso_local global i64 0, align 8
@RFPGA0_XA_HSSIPARAMETER2 = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF90_PATH_MAX = common dso_local global i32 0, align 4
@DESC_RATEMCS8 = common dso_local global i64 0, align 8
@DESC_RATEMCS15 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.rtl_stats*, %struct.rx_desc_92c*, %struct.rx_fwinfo_92c*, i32, i32, i32)* @_rtl92ce_query_rxphystatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ce_query_rxphystatus(%struct.ieee80211_hw* %0, %struct.rtl_stats* %1, %struct.rx_desc_92c* %2, %struct.rx_fwinfo_92c* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.rtl_stats*, align 8
  %10 = alloca %struct.rx_desc_92c*, align 8
  %11 = alloca %struct.rx_fwinfo_92c*, align 8
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
  store %struct.rx_desc_92c* %2, %struct.rx_desc_92c** %10, align 8
  store %struct.rx_fwinfo_92c* %3, %struct.rx_fwinfo_92c** %11, align 8
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
  store i32 0, i32* %22, align 4
  store i32 0, i32* %26, align 4
  %37 = load %struct.rx_desc_92c*, %struct.rx_desc_92c** %10, align 8
  %38 = getelementptr inbounds %struct.rx_desc_92c, %struct.rx_desc_92c* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @RX_HAL_IS_CCK_RATE(i32 %39)
  store i32 %40, i32* %27, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %43 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %46 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %27, align 4
  %48 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %49 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %52 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %54 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 -1, i32* %56, align 4
  %57 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %58 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 -1, i32* %60, align 4
  %61 = load i32, i32* %27, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %253

63:                                               ; preds = %7
  %64 = load %struct.rx_fwinfo_92c*, %struct.rx_fwinfo_92c** %11, align 8
  %65 = bitcast %struct.rx_fwinfo_92c* %64 to %struct.phy_sts_cck_8192s_t*
  store %struct.phy_sts_cck_8192s_t* %65, %struct.phy_sts_cck_8192s_t** %16, align 8
  %66 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %17, align 8
  %67 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ERFON, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %73 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %74 = call i32 @BIT(i32 9)
  %75 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %72, i32 %73, i32 %74)
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %29, align 4
  br label %78

77:                                               ; preds = %63
  store i32 0, i32* %29, align 4
  br label %78

78:                                               ; preds = %77, %71
  %79 = load i32, i32* %29, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %117, label %81

81:                                               ; preds = %78
  %82 = load %struct.phy_sts_cck_8192s_t*, %struct.phy_sts_cck_8192s_t** %16, align 8
  %83 = getelementptr inbounds %struct.phy_sts_cck_8192s_t, %struct.phy_sts_cck_8192s_t* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %30, align 4
  %85 = load %struct.phy_sts_cck_8192s_t*, %struct.phy_sts_cck_8192s_t** %16, align 8
  %86 = getelementptr inbounds %struct.phy_sts_cck_8192s_t, %struct.phy_sts_cck_8192s_t* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 192
  store i32 %88, i32* %28, align 4
  %89 = load i32, i32* %28, align 4
  %90 = ashr i32 %89, 6
  store i32 %90, i32* %28, align 4
  %91 = load i32, i32* %28, align 4
  switch i32 %91, label %116 [
    i32 3, label %92
    i32 2, label %98
    i32 1, label %104
    i32 0, label %110
  ]

92:                                               ; preds = %81
  %93 = load i32, i32* %30, align 4
  %94 = and i32 %93, 62
  %95 = sub nsw i32 -46, %94
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  store i8* %97, i8** %18, align 8
  br label %116

98:                                               ; preds = %81
  %99 = load i32, i32* %30, align 4
  %100 = and i32 %99, 62
  %101 = sub nsw i32 -26, %100
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  store i8* %103, i8** %18, align 8
  br label %116

104:                                              ; preds = %81
  %105 = load i32, i32* %30, align 4
  %106 = and i32 %105, 62
  %107 = sub nsw i32 -12, %106
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  store i8* %109, i8** %18, align 8
  br label %116

110:                                              ; preds = %81
  %111 = load i32, i32* %30, align 4
  %112 = and i32 %111, 62
  %113 = sub nsw i32 16, %112
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  store i8* %115, i8** %18, align 8
  br label %116

116:                                              ; preds = %81, %110, %104, %98, %92
  br label %159

117:                                              ; preds = %78
  %118 = load %struct.phy_sts_cck_8192s_t*, %struct.phy_sts_cck_8192s_t** %16, align 8
  %119 = getelementptr inbounds %struct.phy_sts_cck_8192s_t, %struct.phy_sts_cck_8192s_t* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %31, align 4
  %121 = load %struct.rx_fwinfo_92c*, %struct.rx_fwinfo_92c** %11, align 8
  %122 = getelementptr inbounds %struct.rx_fwinfo_92c, %struct.rx_fwinfo_92c* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 96
  store i32 %126, i32* %28, align 4
  %127 = load i32, i32* %28, align 4
  %128 = ashr i32 %127, 5
  store i32 %128, i32* %28, align 4
  %129 = load i32, i32* %28, align 4
  switch i32 %129, label %158 [
    i32 3, label %130
    i32 2, label %137
    i32 1, label %144
    i32 0, label %151
  ]

130:                                              ; preds = %117
  %131 = load i32, i32* %31, align 4
  %132 = and i32 %131, 31
  %133 = shl i32 %132, 1
  %134 = sub nsw i32 -46, %133
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i8*
  store i8* %136, i8** %18, align 8
  br label %158

137:                                              ; preds = %117
  %138 = load i32, i32* %31, align 4
  %139 = and i32 %138, 31
  %140 = shl i32 %139, 1
  %141 = sub nsw i32 -26, %140
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  store i8* %143, i8** %18, align 8
  br label %158

144:                                              ; preds = %117
  %145 = load i32, i32* %31, align 4
  %146 = and i32 %145, 31
  %147 = shl i32 %146, 1
  %148 = sub nsw i32 -12, %147
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  store i8* %150, i8** %18, align 8
  br label %158

151:                                              ; preds = %117
  %152 = load i32, i32* %31, align 4
  %153 = and i32 %152, 31
  %154 = shl i32 %153, 1
  %155 = sub nsw i32 16, %154
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i8*
  store i8* %157, i8** %18, align 8
  br label %158

158:                                              ; preds = %117, %151, %144, %137, %130
  br label %159

159:                                              ; preds = %158, %116
  %160 = load i8*, i8** %18, align 8
  %161 = call i32 @rtl_query_rxpwrpercentage(i8* %160)
  store i32 %161, i32* %21, align 4
  %162 = load i32, i32* %21, align 4
  %163 = add nsw i32 %162, 6
  store i32 %163, i32* %21, align 4
  %164 = load i32, i32* %21, align 4
  %165 = icmp sgt i32 %164, 100
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  store i32 100, i32* %21, align 4
  br label %167

167:                                              ; preds = %166, %159
  %168 = load i32, i32* %21, align 4
  %169 = icmp sgt i32 %168, 34
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load i32, i32* %21, align 4
  %172 = icmp sle i32 %171, 42
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32, i32* %21, align 4
  %175 = sub nsw i32 %174, 2
  store i32 %175, i32* %21, align 4
  br label %206

176:                                              ; preds = %170, %167
  %177 = load i32, i32* %21, align 4
  %178 = icmp sgt i32 %177, 26
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load i32, i32* %21, align 4
  %181 = icmp sle i32 %180, 34
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32, i32* %21, align 4
  %184 = sub nsw i32 %183, 6
  store i32 %184, i32* %21, align 4
  br label %205

185:                                              ; preds = %179, %176
  %186 = load i32, i32* %21, align 4
  %187 = icmp sgt i32 %186, 14
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load i32, i32* %21, align 4
  %190 = icmp sle i32 %189, 26
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32, i32* %21, align 4
  %193 = sub nsw i32 %192, 8
  store i32 %193, i32* %21, align 4
  br label %204

194:                                              ; preds = %188, %185
  %195 = load i32, i32* %21, align 4
  %196 = icmp sgt i32 %195, 4
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load i32, i32* %21, align 4
  %199 = icmp sle i32 %198, 14
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* %21, align 4
  %202 = sub nsw i32 %201, 4
  store i32 %202, i32* %21, align 4
  br label %203

203:                                              ; preds = %200, %197, %194
  br label %204

204:                                              ; preds = %203, %191
  br label %205

205:                                              ; preds = %204, %182
  br label %206

206:                                              ; preds = %205, %173
  %207 = load i32, i32* %21, align 4
  %208 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %209 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 8
  %210 = load i8*, i8** %18, align 8
  %211 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %212 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %211, i32 0, i32 11
  store i8* %210, i8** %212, align 8
  %213 = load i32, i32* %12, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %252

215:                                              ; preds = %206
  %216 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %217 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 8
  %219 = icmp sgt i32 %218, 40
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  store i32 100, i32* %32, align 4
  br label %239

221:                                              ; preds = %215
  %222 = load %struct.phy_sts_cck_8192s_t*, %struct.phy_sts_cck_8192s_t** %16, align 8
  %223 = getelementptr inbounds %struct.phy_sts_cck_8192s_t, %struct.phy_sts_cck_8192s_t* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %32, align 4
  %225 = load i32, i32* %32, align 4
  %226 = icmp sgt i32 %225, 64
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  store i32 0, i32* %32, align 4
  br label %238

228:                                              ; preds = %221
  %229 = load i32, i32* %32, align 4
  %230 = icmp slt i32 %229, 20
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  store i32 100, i32* %32, align 4
  br label %237

232:                                              ; preds = %228
  %233 = load i32, i32* %32, align 4
  %234 = sub nsw i32 64, %233
  %235 = mul nsw i32 %234, 100
  %236 = sdiv i32 %235, 44
  store i32 %236, i32* %32, align 4
  br label %237

237:                                              ; preds = %232, %231
  br label %238

238:                                              ; preds = %237, %227
  br label %239

239:                                              ; preds = %238, %220
  %240 = load i32, i32* %32, align 4
  %241 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %242 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %241, i32 0, i32 6
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* %32, align 4
  %244 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %245 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %244, i32 0, i32 4
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  store i32 %243, i32* %247, align 4
  %248 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %249 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %248, i32 0, i32 4
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 1
  store i32 -1, i32* %251, align 4
  br label %252

252:                                              ; preds = %239, %206
  br label %412

253:                                              ; preds = %7
  %254 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %255 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  store i32 1, i32* %258, align 4
  %259 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %260 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  store i32 1, i32* %263, align 4
  %264 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %264, i32* %23, align 4
  br label %265

265:                                              ; preds = %333, %253
  %266 = load i32, i32* %23, align 4
  %267 = load i32, i32* @RF90_PATH_MAX, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %336

269:                                              ; preds = %265
  %270 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %271 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %23, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %269
  %280 = load i32, i32* %22, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %22, align 4
  br label %282

282:                                              ; preds = %279, %269
  %283 = load %struct.rx_fwinfo_92c*, %struct.rx_fwinfo_92c** %11, align 8
  %284 = getelementptr inbounds %struct.rx_fwinfo_92c, %struct.rx_fwinfo_92c* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %23, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %289, 63
  %291 = mul nsw i32 %290, 2
  %292 = sub nsw i32 %291, 110
  %293 = sext i32 %292 to i64
  %294 = inttoptr i64 %293 to i8*
  %295 = load i32, i32* %23, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 %296
  store i8* %294, i8** %297, align 8
  %298 = load i32, i32* %23, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 %299
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @_rtl92c_query_rxpwrpercentage(i8* %301)
  store i32 %302, i32* %25, align 4
  %303 = load i32, i32* %25, align 4
  %304 = load i32, i32* %26, align 4
  %305 = add nsw i32 %304, %303
  store i32 %305, i32* %26, align 4
  %306 = load %struct.rx_fwinfo_92c*, %struct.rx_fwinfo_92c** %11, align 8
  %307 = getelementptr inbounds %struct.rx_fwinfo_92c, %struct.rx_fwinfo_92c* %306, i32 0, i32 2
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %23, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = sdiv i32 %312, 2
  %314 = sext i32 %313 to i64
  %315 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %316 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  %318 = load i64*, i64** %317, align 8
  %319 = load i32, i32* %23, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %318, i64 %320
  store i64 %314, i64* %321, align 8
  %322 = load i32, i32* %12, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %332

324:                                              ; preds = %282
  %325 = load i32, i32* %25, align 4
  %326 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %327 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %326, i32 0, i32 7
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %23, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  store i32 %325, i32* %331, align 4
  br label %332

332:                                              ; preds = %324, %282
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %23, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %23, align 4
  br label %265

336:                                              ; preds = %265
  %337 = load %struct.rx_fwinfo_92c*, %struct.rx_fwinfo_92c** %11, align 8
  %338 = getelementptr inbounds %struct.rx_fwinfo_92c, %struct.rx_fwinfo_92c* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 8
  %340 = ashr i32 %339, 1
  %341 = and i32 %340, 127
  %342 = sub nsw i32 %341, 110
  %343 = sext i32 %342 to i64
  %344 = inttoptr i64 %343 to i8*
  store i8* %344, i8** %18, align 8
  %345 = load i8*, i8** %18, align 8
  %346 = call i32 @_rtl92c_query_rxpwrpercentage(i8* %345)
  store i32 %346, i32* %21, align 4
  %347 = load i32, i32* %21, align 4
  %348 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %349 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %348, i32 0, i32 5
  store i32 %347, i32* %349, align 8
  %350 = load i8*, i8** %18, align 8
  %351 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %352 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %351, i32 0, i32 12
  store i8* %350, i8** %352, align 8
  %353 = load i8*, i8** %18, align 8
  %354 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %355 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %354, i32 0, i32 11
  store i8* %353, i8** %355, align 8
  %356 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %357 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %356, i32 0, i32 10
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %373

360:                                              ; preds = %336
  %361 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %362 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %361, i32 0, i32 8
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @DESC_RATEMCS8, align 8
  %365 = icmp sge i64 %363, %364
  br i1 %365, label %366, label %373

366:                                              ; preds = %360
  %367 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %368 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %367, i32 0, i32 8
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @DESC_RATEMCS15, align 8
  %371 = icmp sle i64 %369, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %366
  store i32 2, i32* %24, align 4
  br label %374

373:                                              ; preds = %366, %360, %336
  store i32 1, i32* %24, align 4
  br label %374

374:                                              ; preds = %373, %372
  store i32 0, i32* %23, align 4
  br label %375

375:                                              ; preds = %408, %374
  %376 = load i32, i32* %23, align 4
  %377 = load i32, i32* %24, align 4
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %379, label %411

379:                                              ; preds = %375
  %380 = load %struct.rx_fwinfo_92c*, %struct.rx_fwinfo_92c** %11, align 8
  %381 = getelementptr inbounds %struct.rx_fwinfo_92c, %struct.rx_fwinfo_92c* %380, i32 0, i32 4
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %23, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @rtl_evm_db_to_percentage(i32 %386)
  store i32 %387, i32* %20, align 4
  %388 = load i32, i32* %12, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %407

390:                                              ; preds = %379
  %391 = load i32, i32* %23, align 4
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %398

393:                                              ; preds = %390
  %394 = load i32, i32* %20, align 4
  %395 = and i32 %394, 255
  %396 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %397 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %396, i32 0, i32 6
  store i32 %395, i32* %397, align 4
  br label %398

398:                                              ; preds = %393, %390
  %399 = load i32, i32* %20, align 4
  %400 = and i32 %399, 255
  %401 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %402 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %401, i32 0, i32 4
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* %23, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  store i32 %400, i32* %406, align 4
  br label %407

407:                                              ; preds = %398, %379
  br label %408

408:                                              ; preds = %407
  %409 = load i32, i32* %23, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %23, align 4
  br label %375

411:                                              ; preds = %375
  br label %412

412:                                              ; preds = %411, %252
  %413 = load i32, i32* %27, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %422

415:                                              ; preds = %412
  %416 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %417 = load i32, i32* %21, align 4
  %418 = call i64 @_rtl92ce_signal_scale_mapping(%struct.ieee80211_hw* %416, i32 %417)
  %419 = trunc i64 %418 to i32
  %420 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %421 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %420, i32 0, i32 9
  store i32 %419, i32* %421, align 8
  br label %435

422:                                              ; preds = %412
  %423 = load i32, i32* %22, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %434

425:                                              ; preds = %422
  %426 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %427 = load i32, i32* %22, align 4
  %428 = load i32, i32* %26, align 4
  %429 = sdiv i32 %428, %427
  store i32 %429, i32* %26, align 4
  %430 = call i64 @_rtl92ce_signal_scale_mapping(%struct.ieee80211_hw* %426, i32 %429)
  %431 = trunc i64 %430 to i32
  %432 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %433 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %432, i32 0, i32 9
  store i32 %431, i32* %433, align 8
  br label %434

434:                                              ; preds = %425, %422
  br label %435

435:                                              ; preds = %434, %415
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @RX_HAL_IS_CCK_RATE(i32) #1

declare dso_local i64 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_query_rxpwrpercentage(i8*) #1

declare dso_local i32 @_rtl92c_query_rxpwrpercentage(i8*) #1

declare dso_local i32 @rtl_evm_db_to_percentage(i32) #1

declare dso_local i64 @_rtl92ce_signal_scale_mapping(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
