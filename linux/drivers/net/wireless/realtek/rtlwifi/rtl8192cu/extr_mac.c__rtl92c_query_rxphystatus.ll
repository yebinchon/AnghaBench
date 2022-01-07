; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_mac.c__rtl92c_query_rxphystatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_mac.c__rtl92c_query_rxphystatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_stats = type { i32, i32, i32, i32, i32*, i32, i32, i32*, i32, i8*, i8* }
%struct.rx_desc_92c = type { i32 }
%struct.rx_fwinfo_92c = type { i32*, i32*, i32*, i32, i32* }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.rtl_phy }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i32* }
%struct.rtl_phy = type { i32 }
%struct.phy_sts_cck_8192s_t = type { i32, i32 }

@RF90_PATH_A = common dso_local global i32 0, align 4
@RF90_PATH_MAX = common dso_local global i32 0, align 4
@DESC_RATEMCS8 = common dso_local global i64 0, align 8
@DESC_RATEMCS15 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.rtl_stats*, %struct.rx_desc_92c*, %struct.rx_fwinfo_92c*, i32, i32, i32)* @_rtl92c_query_rxphystatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92c_query_rxphystatus(%struct.ieee80211_hw* %0, %struct.rtl_stats* %1, %struct.rx_desc_92c* %2, %struct.rx_fwinfo_92c* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.rtl_stats*, align 8
  %10 = alloca %struct.rx_desc_92c*, align 8
  %11 = alloca %struct.rx_fwinfo_92c*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtl_priv*, align 8
  %16 = alloca %struct.rtl_phy*, align 8
  %17 = alloca %struct.phy_sts_cck_8192s_t*, align 8
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
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %8, align 8
  store %struct.rtl_stats* %1, %struct.rtl_stats** %9, align 8
  store %struct.rx_desc_92c* %2, %struct.rx_desc_92c** %10, align 8
  store %struct.rx_fwinfo_92c* %3, %struct.rx_fwinfo_92c** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %36 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %35)
  store %struct.rtl_priv* %36, %struct.rtl_priv** %15, align 8
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 2
  store %struct.rtl_phy* %38, %struct.rtl_phy** %16, align 8
  store i8* null, i8** %18, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %39 = load %struct.rx_desc_92c*, %struct.rx_desc_92c** %10, align 8
  %40 = bitcast %struct.rx_desc_92c* %39 to i32*
  store i32* %40, i32** %29, align 8
  %41 = load %struct.rx_desc_92c*, %struct.rx_desc_92c** %10, align 8
  %42 = getelementptr inbounds %struct.rx_desc_92c, %struct.rx_desc_92c* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @RX_HAL_IS_CCK_RATE(i32 %43)
  store i32 %44, i32* %28, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %47 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %50 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %53 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %28, align 4
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
  %65 = load i32, i32* %28, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %207

67:                                               ; preds = %7
  %68 = load %struct.rx_fwinfo_92c*, %struct.rx_fwinfo_92c** %11, align 8
  %69 = bitcast %struct.rx_fwinfo_92c* %68 to %struct.phy_sts_cck_8192s_t*
  store %struct.phy_sts_cck_8192s_t* %69, %struct.phy_sts_cck_8192s_t** %17, align 8
  %70 = load i32, i32* %27, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load %struct.rtl_phy*, %struct.rtl_phy** %16, align 8
  %74 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %31, align 4
  br label %77

76:                                               ; preds = %67
  store i32 0, i32* %31, align 4
  br label %77

77:                                               ; preds = %76, %72
  %78 = load i32, i32* %31, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %116, label %80

80:                                               ; preds = %77
  %81 = load %struct.phy_sts_cck_8192s_t*, %struct.phy_sts_cck_8192s_t** %17, align 8
  %82 = getelementptr inbounds %struct.phy_sts_cck_8192s_t, %struct.phy_sts_cck_8192s_t* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %32, align 4
  %84 = load %struct.phy_sts_cck_8192s_t*, %struct.phy_sts_cck_8192s_t** %17, align 8
  %85 = getelementptr inbounds %struct.phy_sts_cck_8192s_t, %struct.phy_sts_cck_8192s_t* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 192
  store i32 %87, i32* %30, align 4
  %88 = load i32, i32* %30, align 4
  %89 = ashr i32 %88, 6
  store i32 %89, i32* %30, align 4
  %90 = load i32, i32* %30, align 4
  switch i32 %90, label %115 [
    i32 3, label %91
    i32 2, label %97
    i32 1, label %103
    i32 0, label %109
  ]

91:                                               ; preds = %80
  %92 = load i32, i32* %32, align 4
  %93 = and i32 %92, 62
  %94 = sub nsw i32 -46, %93
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  store i8* %96, i8** %18, align 8
  br label %115

97:                                               ; preds = %80
  %98 = load i32, i32* %32, align 4
  %99 = and i32 %98, 62
  %100 = sub nsw i32 -26, %99
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  store i8* %102, i8** %18, align 8
  br label %115

103:                                              ; preds = %80
  %104 = load i32, i32* %32, align 4
  %105 = and i32 %104, 62
  %106 = sub nsw i32 -12, %105
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %18, align 8
  br label %115

109:                                              ; preds = %80
  %110 = load i32, i32* %32, align 4
  %111 = and i32 %110, 62
  %112 = sub nsw i32 16, %111
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** %18, align 8
  br label %115

115:                                              ; preds = %80, %109, %103, %97, %91
  br label %158

116:                                              ; preds = %77
  %117 = load %struct.phy_sts_cck_8192s_t*, %struct.phy_sts_cck_8192s_t** %17, align 8
  %118 = getelementptr inbounds %struct.phy_sts_cck_8192s_t, %struct.phy_sts_cck_8192s_t* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %33, align 4
  %120 = load %struct.rx_fwinfo_92c*, %struct.rx_fwinfo_92c** %11, align 8
  %121 = getelementptr inbounds %struct.rx_fwinfo_92c, %struct.rx_fwinfo_92c* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 96
  store i32 %125, i32* %30, align 4
  %126 = load i32, i32* %30, align 4
  %127 = ashr i32 %126, 5
  store i32 %127, i32* %30, align 4
  %128 = load i32, i32* %30, align 4
  switch i32 %128, label %157 [
    i32 3, label %129
    i32 2, label %136
    i32 1, label %143
    i32 0, label %150
  ]

129:                                              ; preds = %116
  %130 = load i32, i32* %33, align 4
  %131 = and i32 %130, 31
  %132 = shl i32 %131, 1
  %133 = sub nsw i32 -46, %132
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  store i8* %135, i8** %18, align 8
  br label %157

136:                                              ; preds = %116
  %137 = load i32, i32* %33, align 4
  %138 = and i32 %137, 31
  %139 = shl i32 %138, 1
  %140 = sub nsw i32 -26, %139
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  store i8* %142, i8** %18, align 8
  br label %157

143:                                              ; preds = %116
  %144 = load i32, i32* %33, align 4
  %145 = and i32 %144, 31
  %146 = shl i32 %145, 1
  %147 = sub nsw i32 -12, %146
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  store i8* %149, i8** %18, align 8
  br label %157

150:                                              ; preds = %116
  %151 = load i32, i32* %33, align 4
  %152 = and i32 %151, 31
  %153 = shl i32 %152, 1
  %154 = sub nsw i32 16, %153
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  store i8* %156, i8** %18, align 8
  br label %157

157:                                              ; preds = %116, %150, %143, %136, %129
  br label %158

158:                                              ; preds = %157, %115
  %159 = load i8*, i8** %18, align 8
  %160 = call i32 @_rtl92c_query_rxpwrpercentage(i8* %159)
  store i32 %160, i32* %22, align 4
  %161 = load i32, i32* %22, align 4
  %162 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %163 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 8
  %164 = load i8*, i8** %18, align 8
  %165 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %166 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %165, i32 0, i32 9
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %206

169:                                              ; preds = %158
  %170 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %171 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = icmp sgt i32 %172, 40
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  store i32 100, i32* %34, align 4
  br label %193

175:                                              ; preds = %169
  %176 = load %struct.phy_sts_cck_8192s_t*, %struct.phy_sts_cck_8192s_t** %17, align 8
  %177 = getelementptr inbounds %struct.phy_sts_cck_8192s_t, %struct.phy_sts_cck_8192s_t* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %34, align 4
  %179 = load i32, i32* %34, align 4
  %180 = icmp sgt i32 %179, 64
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  store i32 0, i32* %34, align 4
  br label %192

182:                                              ; preds = %175
  %183 = load i32, i32* %34, align 4
  %184 = icmp slt i32 %183, 20
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 100, i32* %34, align 4
  br label %191

186:                                              ; preds = %182
  %187 = load i32, i32* %34, align 4
  %188 = sub nsw i32 64, %187
  %189 = mul nsw i32 %188, 100
  %190 = sdiv i32 %189, 44
  store i32 %190, i32* %34, align 4
  br label %191

191:                                              ; preds = %186, %185
  br label %192

192:                                              ; preds = %191, %181
  br label %193

193:                                              ; preds = %192, %174
  %194 = load i32, i32* %34, align 4
  %195 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %196 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %195, i32 0, i32 6
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %34, align 4
  %198 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %199 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %198, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  store i32 %197, i32* %201, align 4
  %202 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %203 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %202, i32 0, i32 4
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  store i32 -1, i32* %205, align 4
  br label %206

206:                                              ; preds = %193, %158
  br label %363

207:                                              ; preds = %7
  %208 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %209 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  store i32 1, i32* %212, align 4
  %213 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %214 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  store i32 1, i32* %217, align 4
  %218 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %218, i32* %23, align 4
  br label %219

219:                                              ; preds = %287, %207
  %220 = load i32, i32* %23, align 4
  %221 = load i32, i32* @RF90_PATH_MAX, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %290

223:                                              ; preds = %219
  %224 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %225 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %23, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %223
  %234 = load i32, i32* %20, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %20, align 4
  br label %236

236:                                              ; preds = %233, %223
  %237 = load %struct.rx_fwinfo_92c*, %struct.rx_fwinfo_92c** %11, align 8
  %238 = getelementptr inbounds %struct.rx_fwinfo_92c, %struct.rx_fwinfo_92c* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %23, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, 63
  %245 = mul nsw i32 %244, 2
  %246 = sub nsw i32 %245, 110
  %247 = sext i32 %246 to i64
  %248 = inttoptr i64 %247 to i8*
  %249 = load i32, i32* %23, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 %250
  store i8* %248, i8** %251, align 8
  %252 = load i32, i32* %23, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 %253
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @_rtl92c_query_rxpwrpercentage(i8* %255)
  store i32 %256, i32* %25, align 4
  %257 = load i32, i32* %25, align 4
  %258 = load i32, i32* %26, align 4
  %259 = add nsw i32 %258, %257
  store i32 %259, i32* %26, align 4
  %260 = load %struct.rx_fwinfo_92c*, %struct.rx_fwinfo_92c** %11, align 8
  %261 = getelementptr inbounds %struct.rx_fwinfo_92c, %struct.rx_fwinfo_92c* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %23, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = sdiv i32 %266, 2
  %268 = sext i32 %267 to i64
  %269 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %270 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = load i64*, i64** %271, align 8
  %273 = load i32, i32* %23, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i64, i64* %272, i64 %274
  store i64 %268, i64* %275, align 8
  %276 = load i32, i32* %12, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %286

278:                                              ; preds = %236
  %279 = load i32, i32* %25, align 4
  %280 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %281 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %280, i32 0, i32 7
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %23, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  store i32 %279, i32* %285, align 4
  br label %286

286:                                              ; preds = %278, %236
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %23, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %23, align 4
  br label %219

290:                                              ; preds = %219
  %291 = load %struct.rx_fwinfo_92c*, %struct.rx_fwinfo_92c** %11, align 8
  %292 = getelementptr inbounds %struct.rx_fwinfo_92c, %struct.rx_fwinfo_92c* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = ashr i32 %293, 1
  %295 = and i32 %294, 127
  %296 = sub nsw i32 %295, 110
  %297 = sext i32 %296 to i64
  %298 = inttoptr i64 %297 to i8*
  store i8* %298, i8** %18, align 8
  %299 = load i8*, i8** %18, align 8
  %300 = call i32 @_rtl92c_query_rxpwrpercentage(i8* %299)
  store i32 %300, i32* %22, align 4
  %301 = load i32, i32* %22, align 4
  %302 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %303 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %302, i32 0, i32 5
  store i32 %301, i32* %303, align 8
  %304 = load i8*, i8** %18, align 8
  %305 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %306 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %305, i32 0, i32 10
  store i8* %304, i8** %306, align 8
  %307 = load i8*, i8** %18, align 8
  %308 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %309 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %308, i32 0, i32 9
  store i8* %307, i8** %309, align 8
  %310 = load i32*, i32** %29, align 8
  %311 = call i64 @get_rx_desc_rx_mcs(i32* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %324

313:                                              ; preds = %290
  %314 = load i32*, i32** %29, align 8
  %315 = call i64 @get_rx_desc_rx_mcs(i32* %314)
  %316 = load i64, i64* @DESC_RATEMCS8, align 8
  %317 = icmp sge i64 %315, %316
  br i1 %317, label %318, label %324

318:                                              ; preds = %313
  %319 = load i32*, i32** %29, align 8
  %320 = call i64 @get_rx_desc_rx_mcs(i32* %319)
  %321 = load i64, i64* @DESC_RATEMCS15, align 8
  %322 = icmp sle i64 %320, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %318
  store i32 2, i32* %24, align 4
  br label %325

324:                                              ; preds = %318, %313, %290
  store i32 1, i32* %24, align 4
  br label %325

325:                                              ; preds = %324, %323
  store i32 0, i32* %23, align 4
  br label %326

326:                                              ; preds = %359, %325
  %327 = load i32, i32* %23, align 4
  %328 = load i32, i32* %24, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %362

330:                                              ; preds = %326
  %331 = load %struct.rx_fwinfo_92c*, %struct.rx_fwinfo_92c** %11, align 8
  %332 = getelementptr inbounds %struct.rx_fwinfo_92c, %struct.rx_fwinfo_92c* %331, i32 0, i32 4
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %23, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @rtl_evm_db_to_percentage(i32 %337)
  store i32 %338, i32* %21, align 4
  %339 = load i32, i32* %12, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %358

341:                                              ; preds = %330
  %342 = load i32, i32* %23, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %341
  %345 = load i32, i32* %21, align 4
  %346 = and i32 %345, 255
  %347 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %348 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %347, i32 0, i32 6
  store i32 %346, i32* %348, align 4
  br label %349

349:                                              ; preds = %344, %341
  %350 = load i32, i32* %21, align 4
  %351 = and i32 %350, 255
  %352 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %353 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %352, i32 0, i32 4
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %23, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  store i32 %351, i32* %357, align 4
  br label %358

358:                                              ; preds = %349, %330
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %23, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %23, align 4
  br label %326

362:                                              ; preds = %326
  br label %363

363:                                              ; preds = %362, %206
  %364 = load i32, i32* %28, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %373

366:                                              ; preds = %363
  %367 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %368 = load i32, i32* %22, align 4
  %369 = call i64 @_rtl92c_signal_scale_mapping(%struct.ieee80211_hw* %367, i32 %368)
  %370 = trunc i64 %369 to i32
  %371 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %372 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %371, i32 0, i32 8
  store i32 %370, i32* %372, align 8
  br label %386

373:                                              ; preds = %363
  %374 = load i32, i32* %20, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %385

376:                                              ; preds = %373
  %377 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %378 = load i32, i32* %20, align 4
  %379 = load i32, i32* %26, align 4
  %380 = sdiv i32 %379, %378
  store i32 %380, i32* %26, align 4
  %381 = call i64 @_rtl92c_signal_scale_mapping(%struct.ieee80211_hw* %377, i32 %380)
  %382 = trunc i64 %381 to i32
  %383 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %384 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %383, i32 0, i32 8
  store i32 %382, i32* %384, align 8
  br label %385

385:                                              ; preds = %376, %373
  br label %386

386:                                              ; preds = %385, %366
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RX_HAL_IS_CCK_RATE(i32) #1

declare dso_local i32 @_rtl92c_query_rxpwrpercentage(i8*) #1

declare dso_local i64 @get_rx_desc_rx_mcs(i32*) #1

declare dso_local i32 @rtl_evm_db_to_percentage(i32) #1

declare dso_local i64 @_rtl92c_signal_scale_mapping(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
