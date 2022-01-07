; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_store_txpower_by_rate_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_store_txpower_by_rate_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32**** }

@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i64 0, align 8
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@RF_1TX = common dso_local global i64 0, align 8
@CCK = common dso_local global i32 0, align 4
@OFDM = common dso_local global i32 0, align 4
@HT_MCS0_MCS7 = common dso_local global i32 0, align 4
@RF_2TX = common dso_local global i64 0, align 8
@HT_MCS8_MCS15 = common dso_local global i32 0, align 4
@VHT_1SSMCS0_1SSMCS9 = common dso_local global i32 0, align 4
@VHT_2SSMCS0_2SSMCS9 = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8821ae_phy_store_txpower_by_rate_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_phy_store_txpower_by_rate_base(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 0
  store %struct.rtl_phy* %11, %struct.rtl_phy** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %348, %1
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @RF90_PATH_B, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %351

17:                                               ; preds = %13
  %18 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %19 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %18, i32 0, i32 0
  %20 = load i32****, i32***** %19, align 8
  %21 = load i64, i64* @BAND_ON_2_4G, align 8
  %22 = getelementptr inbounds i32***, i32**** %20, i64 %21
  %23 = load i32***, i32**** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i32**, i32*** %23, i64 %24
  %26 = load i32**, i32*** %25, align 8
  %27 = load i64, i64* @RF_1TX, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 24
  %33 = and i32 %32, 255
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 4
  %36 = mul nsw i32 %35, 10
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 15
  %39 = add nsw i32 %36, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %6, align 8
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %42 = load i64, i64* @BAND_ON_2_4G, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* @CCK, align 4
  %45 = load i64, i64* @RF_1TX, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @_rtl8821ae_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %41, i64 %42, i64 %43, i32 %44, i64 %45, i64 %46)
  %48 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %49 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %48, i32 0, i32 0
  %50 = load i32****, i32***** %49, align 8
  %51 = load i64, i64* @BAND_ON_2_4G, align 8
  %52 = getelementptr inbounds i32***, i32**** %50, i64 %51
  %53 = load i32***, i32**** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i32**, i32*** %53, i64 %54
  %56 = load i32**, i32*** %55, align 8
  %57 = load i64, i64* @RF_1TX, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 24
  %63 = and i32 %62, 255
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = ashr i32 %64, 4
  %66 = mul nsw i32 %65, 10
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 15
  %69 = add nsw i32 %66, %68
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %6, align 8
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %72 = load i64, i64* @BAND_ON_2_4G, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* @OFDM, align 4
  %75 = load i64, i64* @RF_1TX, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @_rtl8821ae_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %71, i64 %72, i64 %73, i32 %74, i64 %75, i64 %76)
  %78 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %79 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %78, i32 0, i32 0
  %80 = load i32****, i32***** %79, align 8
  %81 = load i64, i64* @BAND_ON_2_4G, align 8
  %82 = getelementptr inbounds i32***, i32**** %80, i64 %81
  %83 = load i32***, i32**** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds i32**, i32*** %83, i64 %84
  %86 = load i32**, i32*** %85, align 8
  %87 = load i64, i64* @RF_1TX, align 8
  %88 = getelementptr inbounds i32*, i32** %86, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 24
  %93 = and i32 %92, 255
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = ashr i32 %94, 4
  %96 = mul nsw i32 %95, 10
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %97, 15
  %99 = add nsw i32 %96, %98
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %6, align 8
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %102 = load i64, i64* @BAND_ON_2_4G, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i32, i32* @HT_MCS0_MCS7, align 4
  %105 = load i64, i64* @RF_1TX, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @_rtl8821ae_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %101, i64 %102, i64 %103, i32 %104, i64 %105, i64 %106)
  %108 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %109 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %108, i32 0, i32 0
  %110 = load i32****, i32***** %109, align 8
  %111 = load i64, i64* @BAND_ON_2_4G, align 8
  %112 = getelementptr inbounds i32***, i32**** %110, i64 %111
  %113 = load i32***, i32**** %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = getelementptr inbounds i32**, i32*** %113, i64 %114
  %116 = load i32**, i32*** %115, align 8
  %117 = load i64, i64* @RF_2TX, align 8
  %118 = getelementptr inbounds i32*, i32** %116, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 6
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 24
  %123 = and i32 %122, 255
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = ashr i32 %124, 4
  %126 = mul nsw i32 %125, 10
  %127 = load i32, i32* %5, align 4
  %128 = and i32 %127, 15
  %129 = add nsw i32 %126, %128
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %6, align 8
  %131 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %132 = load i64, i64* @BAND_ON_2_4G, align 8
  %133 = load i64, i64* %7, align 8
  %134 = load i32, i32* @HT_MCS8_MCS15, align 4
  %135 = load i64, i64* @RF_2TX, align 8
  %136 = load i64, i64* %6, align 8
  %137 = call i32 @_rtl8821ae_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %131, i64 %132, i64 %133, i32 %134, i64 %135, i64 %136)
  %138 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %139 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %138, i32 0, i32 0
  %140 = load i32****, i32***** %139, align 8
  %141 = load i64, i64* @BAND_ON_2_4G, align 8
  %142 = getelementptr inbounds i32***, i32**** %140, i64 %141
  %143 = load i32***, i32**** %142, align 8
  %144 = load i64, i64* %7, align 8
  %145 = getelementptr inbounds i32**, i32*** %143, i64 %144
  %146 = load i32**, i32*** %145, align 8
  %147 = load i64, i64* @RF_1TX, align 8
  %148 = getelementptr inbounds i32*, i32** %146, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 8
  %151 = load i32, i32* %150, align 4
  %152 = ashr i32 %151, 24
  %153 = and i32 %152, 255
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = ashr i32 %154, 4
  %156 = mul nsw i32 %155, 10
  %157 = load i32, i32* %5, align 4
  %158 = and i32 %157, 15
  %159 = add nsw i32 %156, %158
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %6, align 8
  %161 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %162 = load i64, i64* @BAND_ON_2_4G, align 8
  %163 = load i64, i64* %7, align 8
  %164 = load i32, i32* @VHT_1SSMCS0_1SSMCS9, align 4
  %165 = load i64, i64* @RF_1TX, align 8
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @_rtl8821ae_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %161, i64 %162, i64 %163, i32 %164, i64 %165, i64 %166)
  %168 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %169 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %168, i32 0, i32 0
  %170 = load i32****, i32***** %169, align 8
  %171 = load i64, i64* @BAND_ON_2_4G, align 8
  %172 = getelementptr inbounds i32***, i32**** %170, i64 %171
  %173 = load i32***, i32**** %172, align 8
  %174 = load i64, i64* %7, align 8
  %175 = getelementptr inbounds i32**, i32*** %173, i64 %174
  %176 = load i32**, i32*** %175, align 8
  %177 = load i64, i64* @RF_2TX, align 8
  %178 = getelementptr inbounds i32*, i32** %176, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 11
  %181 = load i32, i32* %180, align 4
  %182 = ashr i32 %181, 8
  %183 = and i32 %182, 255
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %5, align 4
  %185 = ashr i32 %184, 4
  %186 = mul nsw i32 %185, 10
  %187 = load i32, i32* %5, align 4
  %188 = and i32 %187, 15
  %189 = add nsw i32 %186, %188
  %190 = sext i32 %189 to i64
  store i64 %190, i64* %6, align 8
  %191 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %192 = load i64, i64* @BAND_ON_2_4G, align 8
  %193 = load i64, i64* %7, align 8
  %194 = load i32, i32* @VHT_2SSMCS0_2SSMCS9, align 4
  %195 = load i64, i64* @RF_2TX, align 8
  %196 = load i64, i64* %6, align 8
  %197 = call i32 @_rtl8821ae_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %191, i64 %192, i64 %193, i32 %194, i64 %195, i64 %196)
  %198 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %199 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %198, i32 0, i32 0
  %200 = load i32****, i32***** %199, align 8
  %201 = load i64, i64* @BAND_ON_5G, align 8
  %202 = getelementptr inbounds i32***, i32**** %200, i64 %201
  %203 = load i32***, i32**** %202, align 8
  %204 = load i64, i64* %7, align 8
  %205 = getelementptr inbounds i32**, i32*** %203, i64 %204
  %206 = load i32**, i32*** %205, align 8
  %207 = load i64, i64* @RF_1TX, align 8
  %208 = getelementptr inbounds i32*, i32** %206, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 2
  %211 = load i32, i32* %210, align 4
  %212 = ashr i32 %211, 24
  %213 = and i32 %212, 255
  store i32 %213, i32* %5, align 4
  %214 = load i32, i32* %5, align 4
  %215 = ashr i32 %214, 4
  %216 = mul nsw i32 %215, 10
  %217 = load i32, i32* %5, align 4
  %218 = and i32 %217, 15
  %219 = add nsw i32 %216, %218
  %220 = sext i32 %219 to i64
  store i64 %220, i64* %6, align 8
  %221 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %222 = load i64, i64* @BAND_ON_5G, align 8
  %223 = load i64, i64* %7, align 8
  %224 = load i32, i32* @OFDM, align 4
  %225 = load i64, i64* @RF_1TX, align 8
  %226 = load i64, i64* %6, align 8
  %227 = call i32 @_rtl8821ae_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %221, i64 %222, i64 %223, i32 %224, i64 %225, i64 %226)
  %228 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %229 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %228, i32 0, i32 0
  %230 = load i32****, i32***** %229, align 8
  %231 = load i64, i64* @BAND_ON_5G, align 8
  %232 = getelementptr inbounds i32***, i32**** %230, i64 %231
  %233 = load i32***, i32**** %232, align 8
  %234 = load i64, i64* %7, align 8
  %235 = getelementptr inbounds i32**, i32*** %233, i64 %234
  %236 = load i32**, i32*** %235, align 8
  %237 = load i64, i64* @RF_1TX, align 8
  %238 = getelementptr inbounds i32*, i32** %236, i64 %237
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 4
  %241 = load i32, i32* %240, align 4
  %242 = ashr i32 %241, 24
  %243 = and i32 %242, 255
  store i32 %243, i32* %5, align 4
  %244 = load i32, i32* %5, align 4
  %245 = ashr i32 %244, 4
  %246 = mul nsw i32 %245, 10
  %247 = load i32, i32* %5, align 4
  %248 = and i32 %247, 15
  %249 = add nsw i32 %246, %248
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %6, align 8
  %251 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %252 = load i64, i64* @BAND_ON_5G, align 8
  %253 = load i64, i64* %7, align 8
  %254 = load i32, i32* @HT_MCS0_MCS7, align 4
  %255 = load i64, i64* @RF_1TX, align 8
  %256 = load i64, i64* %6, align 8
  %257 = call i32 @_rtl8821ae_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %251, i64 %252, i64 %253, i32 %254, i64 %255, i64 %256)
  %258 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %259 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %258, i32 0, i32 0
  %260 = load i32****, i32***** %259, align 8
  %261 = load i64, i64* @BAND_ON_5G, align 8
  %262 = getelementptr inbounds i32***, i32**** %260, i64 %261
  %263 = load i32***, i32**** %262, align 8
  %264 = load i64, i64* %7, align 8
  %265 = getelementptr inbounds i32**, i32*** %263, i64 %264
  %266 = load i32**, i32*** %265, align 8
  %267 = load i64, i64* @RF_2TX, align 8
  %268 = getelementptr inbounds i32*, i32** %266, i64 %267
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 6
  %271 = load i32, i32* %270, align 4
  %272 = ashr i32 %271, 24
  %273 = and i32 %272, 255
  store i32 %273, i32* %5, align 4
  %274 = load i32, i32* %5, align 4
  %275 = ashr i32 %274, 4
  %276 = mul nsw i32 %275, 10
  %277 = load i32, i32* %5, align 4
  %278 = and i32 %277, 15
  %279 = add nsw i32 %276, %278
  %280 = sext i32 %279 to i64
  store i64 %280, i64* %6, align 8
  %281 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %282 = load i64, i64* @BAND_ON_5G, align 8
  %283 = load i64, i64* %7, align 8
  %284 = load i32, i32* @HT_MCS8_MCS15, align 4
  %285 = load i64, i64* @RF_2TX, align 8
  %286 = load i64, i64* %6, align 8
  %287 = call i32 @_rtl8821ae_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %281, i64 %282, i64 %283, i32 %284, i64 %285, i64 %286)
  %288 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %289 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %288, i32 0, i32 0
  %290 = load i32****, i32***** %289, align 8
  %291 = load i64, i64* @BAND_ON_5G, align 8
  %292 = getelementptr inbounds i32***, i32**** %290, i64 %291
  %293 = load i32***, i32**** %292, align 8
  %294 = load i64, i64* %7, align 8
  %295 = getelementptr inbounds i32**, i32*** %293, i64 %294
  %296 = load i32**, i32*** %295, align 8
  %297 = load i64, i64* @RF_1TX, align 8
  %298 = getelementptr inbounds i32*, i32** %296, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 8
  %301 = load i32, i32* %300, align 4
  %302 = ashr i32 %301, 24
  %303 = and i32 %302, 255
  store i32 %303, i32* %5, align 4
  %304 = load i32, i32* %5, align 4
  %305 = ashr i32 %304, 4
  %306 = mul nsw i32 %305, 10
  %307 = load i32, i32* %5, align 4
  %308 = and i32 %307, 15
  %309 = add nsw i32 %306, %308
  %310 = sext i32 %309 to i64
  store i64 %310, i64* %6, align 8
  %311 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %312 = load i64, i64* @BAND_ON_5G, align 8
  %313 = load i64, i64* %7, align 8
  %314 = load i32, i32* @VHT_1SSMCS0_1SSMCS9, align 4
  %315 = load i64, i64* @RF_1TX, align 8
  %316 = load i64, i64* %6, align 8
  %317 = call i32 @_rtl8821ae_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %311, i64 %312, i64 %313, i32 %314, i64 %315, i64 %316)
  %318 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %319 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %318, i32 0, i32 0
  %320 = load i32****, i32***** %319, align 8
  %321 = load i64, i64* @BAND_ON_5G, align 8
  %322 = getelementptr inbounds i32***, i32**** %320, i64 %321
  %323 = load i32***, i32**** %322, align 8
  %324 = load i64, i64* %7, align 8
  %325 = getelementptr inbounds i32**, i32*** %323, i64 %324
  %326 = load i32**, i32*** %325, align 8
  %327 = load i64, i64* @RF_2TX, align 8
  %328 = getelementptr inbounds i32*, i32** %326, i64 %327
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 11
  %331 = load i32, i32* %330, align 4
  %332 = ashr i32 %331, 8
  %333 = and i32 %332, 255
  store i32 %333, i32* %5, align 4
  %334 = load i32, i32* %5, align 4
  %335 = ashr i32 %334, 4
  %336 = mul nsw i32 %335, 10
  %337 = load i32, i32* %5, align 4
  %338 = and i32 %337, 15
  %339 = add nsw i32 %336, %338
  %340 = sext i32 %339 to i64
  store i64 %340, i64* %6, align 8
  %341 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %342 = load i64, i64* @BAND_ON_5G, align 8
  %343 = load i64, i64* %7, align 8
  %344 = load i32, i32* @VHT_2SSMCS0_2SSMCS9, align 4
  %345 = load i64, i64* @RF_2TX, align 8
  %346 = load i64, i64* %6, align 8
  %347 = call i32 @_rtl8821ae_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %341, i64 %342, i64 %343, i32 %344, i64 %345, i64 %346)
  br label %348

348:                                              ; preds = %17
  %349 = load i64, i64* %7, align 8
  %350 = add i64 %349, 1
  store i64 %350, i64* %7, align 8
  br label %13

351:                                              ; preds = %13
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8821ae_phy_set_txpower_by_rate_base(%struct.ieee80211_hw*, i64, i64, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
