; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_rf.c__rtl92d_get_txpower_writeval_by_regulatory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_rf.c__rtl92d_get_txpower_writeval_by_regulatory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32**, i32, i32 }
%struct.rtl_efuse = type { i32, i32**, i32** }

@FPHY = common dso_local global i32 0, align 4
@PHY_TXPWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"RTK better performance, writeval(%c) = 0x%x\0A\00", align 1
@MAX_PG_GROUP = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Realtek regulatory, 20MHz, writeval(%c) = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Better regulatory, writeval(%c) = 0x%x\0A\00", align 1
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"customer's limit, 40MHz rf(%c) = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"customer's limit, 20MHz rf(%c) = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Customer's limit rf(%c) = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Customer, writeval rf(%c)= 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"RTK better performance, writeval rf(%c) = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64, i32*, i32*, i32*)* @_rtl92d_get_txpower_writeval_by_regulatory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92d_get_txpower_writeval_by_regulatory(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.rtl_priv*, align 8
  %14 = alloca %struct.rtl_phy*, align 8
  %15 = alloca %struct.rtl_efuse*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [4 x i64], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %23 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %22)
  store %struct.rtl_priv* %23, %struct.rtl_priv** %13, align 8
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 0
  store %struct.rtl_phy* %25, %struct.rtl_phy** %14, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %27 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %26)
  %28 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %27)
  store %struct.rtl_efuse* %28, %struct.rtl_efuse** %15, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %29

29:                                               ; preds = %436, %6
  %30 = load i32, i32* %21, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %439

32:                                               ; preds = %29
  %33 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %34 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %387 [
    i32 0, label %36
    i32 1, label %79
    i32 2, label %151
    i32 3, label %178
  ]

36:                                               ; preds = %32
  store i64 0, i64* %17, align 8
  %37 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %38 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load i64, i64* %17, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %21, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 8, i32 0
  %48 = sext i32 %47 to i64
  %49 = add i64 %43, %48
  %50 = getelementptr inbounds i32, i32* %42, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %9, align 8
  %53 = icmp ult i64 %52, 2
  br i1 %53, label %54, label %60

54:                                               ; preds = %36
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %21, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  br label %66

60:                                               ; preds = %36
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %21, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  br label %66

66:                                               ; preds = %60, %54
  %67 = phi i32 [ %59, %54 ], [ %65, %60 ]
  %68 = add nsw i32 %51, %67
  store i32 %68, i32* %19, align 4
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %70 = load i32, i32* @FPHY, align 4
  %71 = load i32, i32* @PHY_TXPWR, align 4
  %72 = load i32, i32* %21, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 65, i32 66
  %76 = trunc i32 %75 to i8
  %77 = load i32, i32* %19, align 4
  %78 = call i32 @RTPRINT(%struct.rtl_priv* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8 signext %76, i32 %77)
  br label %430

79:                                               ; preds = %32
  %80 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %81 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i64 0, i64* %17, align 8
  br label %85

85:                                               ; preds = %84, %79
  %86 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %87 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @MAX_PG_GROUP, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %150

91:                                               ; preds = %85
  %92 = load i64, i64* %8, align 8
  %93 = sub i64 %92, 1
  %94 = trunc i64 %93 to i32
  %95 = call i64 @_rtl92d_phy_get_chnlgroup_bypg(i32 %94)
  store i64 %95, i64* %17, align 8
  %96 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %97 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @HT_CHANNEL_WIDTH_20, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i64, i64* %17, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %17, align 8
  br label %107

104:                                              ; preds = %91
  %105 = load i64, i64* %17, align 8
  %106 = add i64 %105, 4
  store i64 %106, i64* %17, align 8
  br label %107

107:                                              ; preds = %104, %101
  %108 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %109 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %108, i32 0, i32 0
  %110 = load i32**, i32*** %109, align 8
  %111 = load i64, i64* %17, align 8
  %112 = getelementptr inbounds i32*, i32** %110, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* %9, align 8
  %115 = load i32, i32* %21, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 8, i32 0
  %119 = sext i32 %118 to i64
  %120 = add i64 %114, %119
  %121 = getelementptr inbounds i32, i32* %113, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %9, align 8
  %124 = icmp ult i64 %123, 2
  br i1 %124, label %125, label %131

125:                                              ; preds = %107
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %21, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  br label %137

131:                                              ; preds = %107
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %21, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  br label %137

137:                                              ; preds = %131, %125
  %138 = phi i32 [ %130, %125 ], [ %136, %131 ]
  %139 = add nsw i32 %122, %138
  store i32 %139, i32* %19, align 4
  %140 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %141 = load i32, i32* @FPHY, align 4
  %142 = load i32, i32* @PHY_TXPWR, align 4
  %143 = load i32, i32* %21, align 4
  %144 = icmp eq i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 65, i32 66
  %147 = trunc i32 %146 to i8
  %148 = load i32, i32* %19, align 4
  %149 = call i32 @RTPRINT(%struct.rtl_priv* %140, i32 %141, i32 %142, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8 signext %147, i32 %148)
  br label %150

150:                                              ; preds = %137, %85
  br label %430

151:                                              ; preds = %32
  %152 = load i64, i64* %9, align 8
  %153 = icmp ult i64 %152, 2
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %21, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  br label %166

160:                                              ; preds = %151
  %161 = load i32*, i32** %11, align 8
  %162 = load i32, i32* %21, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  br label %166

166:                                              ; preds = %160, %154
  %167 = phi i32 [ %159, %154 ], [ %165, %160 ]
  store i32 %167, i32* %19, align 4
  %168 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %169 = load i32, i32* @FPHY, align 4
  %170 = load i32, i32* @PHY_TXPWR, align 4
  %171 = load i32, i32* %21, align 4
  %172 = icmp eq i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 65, i32 66
  %175 = trunc i32 %174 to i8
  %176 = load i32, i32* %19, align 4
  %177 = call i32 @RTPRINT(%struct.rtl_priv* %168, i32 %169, i32 %170, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8 signext %175, i32 %176)
  br label %430

178:                                              ; preds = %32
  store i64 0, i64* %17, align 8
  %179 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %180 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %205

184:                                              ; preds = %178
  %185 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %186 = load i32, i32* @FPHY, align 4
  %187 = load i32, i32* @PHY_TXPWR, align 4
  %188 = load i32, i32* %21, align 4
  %189 = icmp eq i32 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i32 65, i32 66
  %192 = trunc i32 %191 to i8
  %193 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %194 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %193, i32 0, i32 1
  %195 = load i32**, i32*** %194, align 8
  %196 = load i32, i32* %21, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* %8, align 8
  %201 = sub i64 %200, 1
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @RTPRINT(%struct.rtl_priv* %185, i32 %186, i32 %187, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8 signext %192, i32 %203)
  br label %226

205:                                              ; preds = %178
  %206 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %207 = load i32, i32* @FPHY, align 4
  %208 = load i32, i32* @PHY_TXPWR, align 4
  %209 = load i32, i32* %21, align 4
  %210 = icmp eq i32 %209, 0
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i32 65, i32 66
  %213 = trunc i32 %212 to i8
  %214 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %215 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %214, i32 0, i32 2
  %216 = load i32**, i32*** %215, align 8
  %217 = load i32, i32* %21, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %216, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* %8, align 8
  %222 = sub i64 %221, 1
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @RTPRINT(%struct.rtl_priv* %206, i32 %207, i32 %208, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8 signext %213, i32 %224)
  br label %226

226:                                              ; preds = %205, %184
  store i64 0, i64* %16, align 8
  br label %227

227:                                              ; preds = %330, %226
  %228 = load i64, i64* %16, align 8
  %229 = icmp ult i64 %228, 4
  br i1 %229, label %230, label %333

230:                                              ; preds = %227
  %231 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %232 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %231, i32 0, i32 0
  %233 = load i32**, i32*** %232, align 8
  %234 = load i64, i64* %17, align 8
  %235 = getelementptr inbounds i32*, i32** %233, i64 %234
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* %9, align 8
  %238 = load i32, i32* %21, align 4
  %239 = icmp ne i32 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i32 8, i32 0
  %242 = sext i32 %241 to i64
  %243 = add i64 %237, %242
  %244 = getelementptr inbounds i32, i32* %236, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load i64, i64* %16, align 8
  %247 = mul i64 %246, 8
  %248 = trunc i64 %247 to i32
  %249 = shl i32 127, %248
  %250 = and i32 %245, %249
  %251 = load i64, i64* %16, align 8
  %252 = mul i64 %251, 8
  %253 = trunc i64 %252 to i32
  %254 = ashr i32 %250, %253
  %255 = sext i32 %254 to i64
  %256 = load i64, i64* %16, align 8
  %257 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %256
  store i64 %255, i64* %257, align 8
  %258 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %259 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %296

263:                                              ; preds = %230
  %264 = load i64, i64* %16, align 8
  %265 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %268 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %267, i32 0, i32 1
  %269 = load i32**, i32*** %268, align 8
  %270 = load i32, i32* %21, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32*, i32** %269, i64 %271
  %273 = load i32*, i32** %272, align 8
  %274 = load i64, i64* %8, align 8
  %275 = sub i64 %274, 1
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = icmp ugt i64 %266, %278
  br i1 %279, label %280, label %295

280:                                              ; preds = %263
  %281 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %282 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %281, i32 0, i32 1
  %283 = load i32**, i32*** %282, align 8
  %284 = load i32, i32* %21, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32*, i32** %283, i64 %285
  %287 = load i32*, i32** %286, align 8
  %288 = load i64, i64* %8, align 8
  %289 = sub i64 %288, 1
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = load i64, i64* %16, align 8
  %294 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %293
  store i64 %292, i64* %294, align 8
  br label %295

295:                                              ; preds = %280, %263
  br label %329

296:                                              ; preds = %230
  %297 = load i64, i64* %16, align 8
  %298 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %301 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %300, i32 0, i32 2
  %302 = load i32**, i32*** %301, align 8
  %303 = load i32, i32* %21, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32*, i32** %302, i64 %304
  %306 = load i32*, i32** %305, align 8
  %307 = load i64, i64* %8, align 8
  %308 = sub i64 %307, 1
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = icmp ugt i64 %299, %311
  br i1 %312, label %313, label %328

313:                                              ; preds = %296
  %314 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %315 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %314, i32 0, i32 2
  %316 = load i32**, i32*** %315, align 8
  %317 = load i32, i32* %21, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32*, i32** %316, i64 %318
  %320 = load i32*, i32** %319, align 8
  %321 = load i64, i64* %8, align 8
  %322 = sub i64 %321, 1
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = load i64, i64* %16, align 8
  %327 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %326
  store i64 %325, i64* %327, align 8
  br label %328

328:                                              ; preds = %313, %296
  br label %329

329:                                              ; preds = %328, %295
  br label %330

330:                                              ; preds = %329
  %331 = load i64, i64* %16, align 8
  %332 = add i64 %331, 1
  store i64 %332, i64* %16, align 8
  br label %227

333:                                              ; preds = %227
  %334 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 3
  %335 = load i64, i64* %334, align 8
  %336 = shl i64 %335, 24
  %337 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 2
  %338 = load i64, i64* %337, align 16
  %339 = shl i64 %338, 16
  %340 = or i64 %336, %339
  %341 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 1
  %342 = load i64, i64* %341, align 8
  %343 = shl i64 %342, 8
  %344 = or i64 %340, %343
  %345 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %346 = load i64, i64* %345, align 16
  %347 = or i64 %344, %346
  %348 = trunc i64 %347 to i32
  store i32 %348, i32* %20, align 4
  %349 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %350 = load i32, i32* @FPHY, align 4
  %351 = load i32, i32* @PHY_TXPWR, align 4
  %352 = load i32, i32* %21, align 4
  %353 = icmp eq i32 %352, 0
  %354 = zext i1 %353 to i64
  %355 = select i1 %353, i32 65, i32 66
  %356 = trunc i32 %355 to i8
  %357 = load i32, i32* %20, align 4
  %358 = call i32 @RTPRINT(%struct.rtl_priv* %349, i32 %350, i32 %351, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8 signext %356, i32 %357)
  %359 = load i32, i32* %20, align 4
  %360 = load i64, i64* %9, align 8
  %361 = icmp ult i64 %360, 2
  br i1 %361, label %362, label %368

362:                                              ; preds = %333
  %363 = load i32*, i32** %10, align 8
  %364 = load i32, i32* %21, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  br label %374

368:                                              ; preds = %333
  %369 = load i32*, i32** %11, align 8
  %370 = load i32, i32* %21, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  br label %374

374:                                              ; preds = %368, %362
  %375 = phi i32 [ %367, %362 ], [ %373, %368 ]
  %376 = add nsw i32 %359, %375
  store i32 %376, i32* %19, align 4
  %377 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %378 = load i32, i32* @FPHY, align 4
  %379 = load i32, i32* @PHY_TXPWR, align 4
  %380 = load i32, i32* %21, align 4
  %381 = icmp eq i32 %380, 0
  %382 = zext i1 %381 to i64
  %383 = select i1 %381, i32 65, i32 66
  %384 = trunc i32 %383 to i8
  %385 = load i32, i32* %19, align 4
  %386 = call i32 @RTPRINT(%struct.rtl_priv* %377, i32 %378, i32 %379, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8 signext %384, i32 %385)
  br label %430

387:                                              ; preds = %32
  store i64 0, i64* %17, align 8
  %388 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %389 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %388, i32 0, i32 0
  %390 = load i32**, i32*** %389, align 8
  %391 = load i64, i64* %17, align 8
  %392 = getelementptr inbounds i32*, i32** %390, i64 %391
  %393 = load i32*, i32** %392, align 8
  %394 = load i64, i64* %9, align 8
  %395 = load i32, i32* %21, align 4
  %396 = icmp ne i32 %395, 0
  %397 = zext i1 %396 to i64
  %398 = select i1 %396, i32 8, i32 0
  %399 = sext i32 %398 to i64
  %400 = add i64 %394, %399
  %401 = getelementptr inbounds i32, i32* %393, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = load i64, i64* %9, align 8
  %404 = icmp ult i64 %403, 2
  br i1 %404, label %405, label %411

405:                                              ; preds = %387
  %406 = load i32*, i32** %10, align 8
  %407 = load i32, i32* %21, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  %410 = load i32, i32* %409, align 4
  br label %417

411:                                              ; preds = %387
  %412 = load i32*, i32** %11, align 8
  %413 = load i32, i32* %21, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  br label %417

417:                                              ; preds = %411, %405
  %418 = phi i32 [ %410, %405 ], [ %416, %411 ]
  %419 = add nsw i32 %402, %418
  store i32 %419, i32* %19, align 4
  %420 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %421 = load i32, i32* @FPHY, align 4
  %422 = load i32, i32* @PHY_TXPWR, align 4
  %423 = load i32, i32* %21, align 4
  %424 = icmp eq i32 %423, 0
  %425 = zext i1 %424 to i64
  %426 = select i1 %424, i32 65, i32 66
  %427 = trunc i32 %426 to i8
  %428 = load i32, i32* %19, align 4
  %429 = call i32 @RTPRINT(%struct.rtl_priv* %420, i32 %421, i32 %422, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8 signext %427, i32 %428)
  br label %430

430:                                              ; preds = %417, %374, %166, %150, %66
  %431 = load i32, i32* %19, align 4
  %432 = load i32*, i32** %12, align 8
  %433 = load i32, i32* %21, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  store i32 %431, i32* %435, align 4
  br label %436

436:                                              ; preds = %430
  %437 = load i32, i32* %21, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %21, align 4
  br label %29

439:                                              ; preds = %29
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i8 signext, i32) #1

declare dso_local i64 @_rtl92d_phy_get_chnlgroup_bypg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
