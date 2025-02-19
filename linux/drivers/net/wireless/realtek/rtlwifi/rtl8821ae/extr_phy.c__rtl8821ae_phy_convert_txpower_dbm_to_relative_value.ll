; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_convert_txpower_dbm_to_relative_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_convert_txpower_dbm_to_relative_value.c"
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
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"<===_rtl8821ae_phy_convert_txpower_dbm_to_relative_value()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8821ae_phy_convert_txpower_dbm_to_relative_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_phy_convert_txpower_dbm_to_relative_value(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 0
  store %struct.rtl_phy* %10, %struct.rtl_phy** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %458, %1
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @RF90_PATH_B, align 8
  %15 = icmp ule i64 %13, %14
  br i1 %15, label %16, label %461

16:                                               ; preds = %12
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = load i64, i64* @BAND_ON_2_4G, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @RF_1TX, align 8
  %21 = load i32, i32* @CCK, align 4
  %22 = call i64 @_rtl8821ae_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %17, i64 %18, i64 %19, i64 %20, i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %24 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %23, i32 0, i32 0
  %25 = load i32****, i32***** %24, align 8
  %26 = load i64, i64* @BAND_ON_2_4G, align 8
  %27 = getelementptr inbounds i32***, i32**** %25, i64 %26
  %28 = load i32***, i32**** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i32**, i32*** %28, i64 %29
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* @RF_1TX, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %35, i32 0, i32 3, i64 %36)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %39 = load i64, i64* @BAND_ON_2_4G, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @RF_1TX, align 8
  %42 = load i32, i32* @OFDM, align 4
  %43 = call i64 @_rtl8821ae_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %38, i64 %39, i64 %40, i64 %41, i32 %42)
  store i64 %43, i64* %5, align 8
  %44 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %45 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %44, i32 0, i32 0
  %46 = load i32****, i32***** %45, align 8
  %47 = load i64, i64* @BAND_ON_2_4G, align 8
  %48 = getelementptr inbounds i32***, i32**** %46, i64 %47
  %49 = load i32***, i32**** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i32**, i32*** %49, i64 %50
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* @RF_1TX, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %56, i32 0, i32 3, i64 %57)
  %59 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %60 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %59, i32 0, i32 0
  %61 = load i32****, i32***** %60, align 8
  %62 = load i64, i64* @BAND_ON_2_4G, align 8
  %63 = getelementptr inbounds i32***, i32**** %61, i64 %62
  %64 = load i32***, i32**** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i32**, i32*** %64, i64 %65
  %67 = load i32**, i32*** %66, align 8
  %68 = load i64, i64* @RF_1TX, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %71, i32 0, i32 3, i64 %72)
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %75 = load i64, i64* @BAND_ON_2_4G, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @RF_1TX, align 8
  %78 = load i32, i32* @HT_MCS0_MCS7, align 4
  %79 = call i64 @_rtl8821ae_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %74, i64 %75, i64 %76, i64 %77, i32 %78)
  store i64 %79, i64* %5, align 8
  %80 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %81 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %80, i32 0, i32 0
  %82 = load i32****, i32***** %81, align 8
  %83 = load i64, i64* @BAND_ON_2_4G, align 8
  %84 = getelementptr inbounds i32***, i32**** %82, i64 %83
  %85 = load i32***, i32**** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds i32**, i32*** %85, i64 %86
  %88 = load i32**, i32*** %87, align 8
  %89 = load i64, i64* @RF_1TX, align 8
  %90 = getelementptr inbounds i32*, i32** %88, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %92, i32 0, i32 3, i64 %93)
  %95 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %96 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %95, i32 0, i32 0
  %97 = load i32****, i32***** %96, align 8
  %98 = load i64, i64* @BAND_ON_2_4G, align 8
  %99 = getelementptr inbounds i32***, i32**** %97, i64 %98
  %100 = load i32***, i32**** %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds i32**, i32*** %100, i64 %101
  %103 = load i32**, i32*** %102, align 8
  %104 = load i64, i64* @RF_1TX, align 8
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %107, i32 0, i32 3, i64 %108)
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %111 = load i64, i64* @BAND_ON_2_4G, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* @RF_2TX, align 8
  %114 = load i32, i32* @HT_MCS8_MCS15, align 4
  %115 = call i64 @_rtl8821ae_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %110, i64 %111, i64 %112, i64 %113, i32 %114)
  store i64 %115, i64* %5, align 8
  %116 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %117 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %116, i32 0, i32 0
  %118 = load i32****, i32***** %117, align 8
  %119 = load i64, i64* @BAND_ON_2_4G, align 8
  %120 = getelementptr inbounds i32***, i32**** %118, i64 %119
  %121 = load i32***, i32**** %120, align 8
  %122 = load i64, i64* %6, align 8
  %123 = getelementptr inbounds i32**, i32*** %121, i64 %122
  %124 = load i32**, i32*** %123, align 8
  %125 = load i64, i64* @RF_2TX, align 8
  %126 = getelementptr inbounds i32*, i32** %124, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 5
  %129 = load i64, i64* %5, align 8
  %130 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %128, i32 0, i32 3, i64 %129)
  %131 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %132 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %131, i32 0, i32 0
  %133 = load i32****, i32***** %132, align 8
  %134 = load i64, i64* @BAND_ON_2_4G, align 8
  %135 = getelementptr inbounds i32***, i32**** %133, i64 %134
  %136 = load i32***, i32**** %135, align 8
  %137 = load i64, i64* %6, align 8
  %138 = getelementptr inbounds i32**, i32*** %136, i64 %137
  %139 = load i32**, i32*** %138, align 8
  %140 = load i64, i64* @RF_2TX, align 8
  %141 = getelementptr inbounds i32*, i32** %139, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 6
  %144 = load i64, i64* %5, align 8
  %145 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %143, i32 0, i32 3, i64 %144)
  %146 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %147 = load i64, i64* @BAND_ON_2_4G, align 8
  %148 = load i64, i64* %6, align 8
  %149 = load i64, i64* @RF_1TX, align 8
  %150 = load i32, i32* @VHT_1SSMCS0_1SSMCS9, align 4
  %151 = call i64 @_rtl8821ae_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %146, i64 %147, i64 %148, i64 %149, i32 %150)
  store i64 %151, i64* %5, align 8
  %152 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %153 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %152, i32 0, i32 0
  %154 = load i32****, i32***** %153, align 8
  %155 = load i64, i64* @BAND_ON_2_4G, align 8
  %156 = getelementptr inbounds i32***, i32**** %154, i64 %155
  %157 = load i32***, i32**** %156, align 8
  %158 = load i64, i64* %6, align 8
  %159 = getelementptr inbounds i32**, i32*** %157, i64 %158
  %160 = load i32**, i32*** %159, align 8
  %161 = load i64, i64* @RF_1TX, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 7
  %165 = load i64, i64* %5, align 8
  %166 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %164, i32 0, i32 3, i64 %165)
  %167 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %168 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %167, i32 0, i32 0
  %169 = load i32****, i32***** %168, align 8
  %170 = load i64, i64* @BAND_ON_2_4G, align 8
  %171 = getelementptr inbounds i32***, i32**** %169, i64 %170
  %172 = load i32***, i32**** %171, align 8
  %173 = load i64, i64* %6, align 8
  %174 = getelementptr inbounds i32**, i32*** %172, i64 %173
  %175 = load i32**, i32*** %174, align 8
  %176 = load i64, i64* @RF_1TX, align 8
  %177 = getelementptr inbounds i32*, i32** %175, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 8
  %180 = load i64, i64* %5, align 8
  %181 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %179, i32 0, i32 3, i64 %180)
  %182 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %183 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %182, i32 0, i32 0
  %184 = load i32****, i32***** %183, align 8
  %185 = load i64, i64* @BAND_ON_2_4G, align 8
  %186 = getelementptr inbounds i32***, i32**** %184, i64 %185
  %187 = load i32***, i32**** %186, align 8
  %188 = load i64, i64* %6, align 8
  %189 = getelementptr inbounds i32**, i32*** %187, i64 %188
  %190 = load i32**, i32*** %189, align 8
  %191 = load i64, i64* @RF_1TX, align 8
  %192 = getelementptr inbounds i32*, i32** %190, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 9
  %195 = load i64, i64* %5, align 8
  %196 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %194, i32 0, i32 1, i64 %195)
  %197 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %198 = load i64, i64* @BAND_ON_2_4G, align 8
  %199 = load i64, i64* %6, align 8
  %200 = load i64, i64* @RF_2TX, align 8
  %201 = load i32, i32* @VHT_2SSMCS0_2SSMCS9, align 4
  %202 = call i64 @_rtl8821ae_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %197, i64 %198, i64 %199, i64 %200, i32 %201)
  store i64 %202, i64* %5, align 8
  %203 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %204 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %203, i32 0, i32 0
  %205 = load i32****, i32***** %204, align 8
  %206 = load i64, i64* @BAND_ON_2_4G, align 8
  %207 = getelementptr inbounds i32***, i32**** %205, i64 %206
  %208 = load i32***, i32**** %207, align 8
  %209 = load i64, i64* %6, align 8
  %210 = getelementptr inbounds i32**, i32*** %208, i64 %209
  %211 = load i32**, i32*** %210, align 8
  %212 = load i64, i64* @RF_1TX, align 8
  %213 = getelementptr inbounds i32*, i32** %211, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 9
  %216 = load i64, i64* %5, align 8
  %217 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %215, i32 2, i32 3, i64 %216)
  %218 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %219 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %218, i32 0, i32 0
  %220 = load i32****, i32***** %219, align 8
  %221 = load i64, i64* @BAND_ON_2_4G, align 8
  %222 = getelementptr inbounds i32***, i32**** %220, i64 %221
  %223 = load i32***, i32**** %222, align 8
  %224 = load i64, i64* %6, align 8
  %225 = getelementptr inbounds i32**, i32*** %223, i64 %224
  %226 = load i32**, i32*** %225, align 8
  %227 = load i64, i64* @RF_2TX, align 8
  %228 = getelementptr inbounds i32*, i32** %226, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 10
  %231 = load i64, i64* %5, align 8
  %232 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %230, i32 0, i32 3, i64 %231)
  %233 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %234 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %233, i32 0, i32 0
  %235 = load i32****, i32***** %234, align 8
  %236 = load i64, i64* @BAND_ON_2_4G, align 8
  %237 = getelementptr inbounds i32***, i32**** %235, i64 %236
  %238 = load i32***, i32**** %237, align 8
  %239 = load i64, i64* %6, align 8
  %240 = getelementptr inbounds i32**, i32*** %238, i64 %239
  %241 = load i32**, i32*** %240, align 8
  %242 = load i64, i64* @RF_2TX, align 8
  %243 = getelementptr inbounds i32*, i32** %241, i64 %242
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 11
  %246 = load i64, i64* %5, align 8
  %247 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %245, i32 0, i32 3, i64 %246)
  %248 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %249 = load i64, i64* @BAND_ON_5G, align 8
  %250 = load i64, i64* %6, align 8
  %251 = load i64, i64* @RF_1TX, align 8
  %252 = load i32, i32* @OFDM, align 4
  %253 = call i64 @_rtl8821ae_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %248, i64 %249, i64 %250, i64 %251, i32 %252)
  store i64 %253, i64* %5, align 8
  %254 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %255 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %254, i32 0, i32 0
  %256 = load i32****, i32***** %255, align 8
  %257 = load i64, i64* @BAND_ON_5G, align 8
  %258 = getelementptr inbounds i32***, i32**** %256, i64 %257
  %259 = load i32***, i32**** %258, align 8
  %260 = load i64, i64* %6, align 8
  %261 = getelementptr inbounds i32**, i32*** %259, i64 %260
  %262 = load i32**, i32*** %261, align 8
  %263 = load i64, i64* @RF_1TX, align 8
  %264 = getelementptr inbounds i32*, i32** %262, i64 %263
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = load i64, i64* %5, align 8
  %268 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %266, i32 0, i32 3, i64 %267)
  %269 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %270 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %269, i32 0, i32 0
  %271 = load i32****, i32***** %270, align 8
  %272 = load i64, i64* @BAND_ON_5G, align 8
  %273 = getelementptr inbounds i32***, i32**** %271, i64 %272
  %274 = load i32***, i32**** %273, align 8
  %275 = load i64, i64* %6, align 8
  %276 = getelementptr inbounds i32**, i32*** %274, i64 %275
  %277 = load i32**, i32*** %276, align 8
  %278 = load i64, i64* @RF_1TX, align 8
  %279 = getelementptr inbounds i32*, i32** %277, i64 %278
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 2
  %282 = load i64, i64* %5, align 8
  %283 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %281, i32 0, i32 3, i64 %282)
  %284 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %285 = load i64, i64* @BAND_ON_5G, align 8
  %286 = load i64, i64* %6, align 8
  %287 = load i64, i64* @RF_1TX, align 8
  %288 = load i32, i32* @HT_MCS0_MCS7, align 4
  %289 = call i64 @_rtl8821ae_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %284, i64 %285, i64 %286, i64 %287, i32 %288)
  store i64 %289, i64* %5, align 8
  %290 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %291 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %290, i32 0, i32 0
  %292 = load i32****, i32***** %291, align 8
  %293 = load i64, i64* @BAND_ON_5G, align 8
  %294 = getelementptr inbounds i32***, i32**** %292, i64 %293
  %295 = load i32***, i32**** %294, align 8
  %296 = load i64, i64* %6, align 8
  %297 = getelementptr inbounds i32**, i32*** %295, i64 %296
  %298 = load i32**, i32*** %297, align 8
  %299 = load i64, i64* @RF_1TX, align 8
  %300 = getelementptr inbounds i32*, i32** %298, i64 %299
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 3
  %303 = load i64, i64* %5, align 8
  %304 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %302, i32 0, i32 3, i64 %303)
  %305 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %306 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %305, i32 0, i32 0
  %307 = load i32****, i32***** %306, align 8
  %308 = load i64, i64* @BAND_ON_5G, align 8
  %309 = getelementptr inbounds i32***, i32**** %307, i64 %308
  %310 = load i32***, i32**** %309, align 8
  %311 = load i64, i64* %6, align 8
  %312 = getelementptr inbounds i32**, i32*** %310, i64 %311
  %313 = load i32**, i32*** %312, align 8
  %314 = load i64, i64* @RF_1TX, align 8
  %315 = getelementptr inbounds i32*, i32** %313, i64 %314
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 4
  %318 = load i64, i64* %5, align 8
  %319 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %317, i32 0, i32 3, i64 %318)
  %320 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %321 = load i64, i64* @BAND_ON_5G, align 8
  %322 = load i64, i64* %6, align 8
  %323 = load i64, i64* @RF_2TX, align 8
  %324 = load i32, i32* @HT_MCS8_MCS15, align 4
  %325 = call i64 @_rtl8821ae_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %320, i64 %321, i64 %322, i64 %323, i32 %324)
  store i64 %325, i64* %5, align 8
  %326 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %327 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %326, i32 0, i32 0
  %328 = load i32****, i32***** %327, align 8
  %329 = load i64, i64* @BAND_ON_5G, align 8
  %330 = getelementptr inbounds i32***, i32**** %328, i64 %329
  %331 = load i32***, i32**** %330, align 8
  %332 = load i64, i64* %6, align 8
  %333 = getelementptr inbounds i32**, i32*** %331, i64 %332
  %334 = load i32**, i32*** %333, align 8
  %335 = load i64, i64* @RF_2TX, align 8
  %336 = getelementptr inbounds i32*, i32** %334, i64 %335
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 5
  %339 = load i64, i64* %5, align 8
  %340 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %338, i32 0, i32 3, i64 %339)
  %341 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %342 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %341, i32 0, i32 0
  %343 = load i32****, i32***** %342, align 8
  %344 = load i64, i64* @BAND_ON_5G, align 8
  %345 = getelementptr inbounds i32***, i32**** %343, i64 %344
  %346 = load i32***, i32**** %345, align 8
  %347 = load i64, i64* %6, align 8
  %348 = getelementptr inbounds i32**, i32*** %346, i64 %347
  %349 = load i32**, i32*** %348, align 8
  %350 = load i64, i64* @RF_2TX, align 8
  %351 = getelementptr inbounds i32*, i32** %349, i64 %350
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 6
  %354 = load i64, i64* %5, align 8
  %355 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %353, i32 0, i32 3, i64 %354)
  %356 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %357 = load i64, i64* @BAND_ON_5G, align 8
  %358 = load i64, i64* %6, align 8
  %359 = load i64, i64* @RF_1TX, align 8
  %360 = load i32, i32* @VHT_1SSMCS0_1SSMCS9, align 4
  %361 = call i64 @_rtl8821ae_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %356, i64 %357, i64 %358, i64 %359, i32 %360)
  store i64 %361, i64* %5, align 8
  %362 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %363 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %362, i32 0, i32 0
  %364 = load i32****, i32***** %363, align 8
  %365 = load i64, i64* @BAND_ON_5G, align 8
  %366 = getelementptr inbounds i32***, i32**** %364, i64 %365
  %367 = load i32***, i32**** %366, align 8
  %368 = load i64, i64* %6, align 8
  %369 = getelementptr inbounds i32**, i32*** %367, i64 %368
  %370 = load i32**, i32*** %369, align 8
  %371 = load i64, i64* @RF_1TX, align 8
  %372 = getelementptr inbounds i32*, i32** %370, i64 %371
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 7
  %375 = load i64, i64* %5, align 8
  %376 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %374, i32 0, i32 3, i64 %375)
  %377 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %378 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %377, i32 0, i32 0
  %379 = load i32****, i32***** %378, align 8
  %380 = load i64, i64* @BAND_ON_5G, align 8
  %381 = getelementptr inbounds i32***, i32**** %379, i64 %380
  %382 = load i32***, i32**** %381, align 8
  %383 = load i64, i64* %6, align 8
  %384 = getelementptr inbounds i32**, i32*** %382, i64 %383
  %385 = load i32**, i32*** %384, align 8
  %386 = load i64, i64* @RF_1TX, align 8
  %387 = getelementptr inbounds i32*, i32** %385, i64 %386
  %388 = load i32*, i32** %387, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 8
  %390 = load i64, i64* %5, align 8
  %391 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %389, i32 0, i32 3, i64 %390)
  %392 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %393 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %392, i32 0, i32 0
  %394 = load i32****, i32***** %393, align 8
  %395 = load i64, i64* @BAND_ON_5G, align 8
  %396 = getelementptr inbounds i32***, i32**** %394, i64 %395
  %397 = load i32***, i32**** %396, align 8
  %398 = load i64, i64* %6, align 8
  %399 = getelementptr inbounds i32**, i32*** %397, i64 %398
  %400 = load i32**, i32*** %399, align 8
  %401 = load i64, i64* @RF_1TX, align 8
  %402 = getelementptr inbounds i32*, i32** %400, i64 %401
  %403 = load i32*, i32** %402, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 9
  %405 = load i64, i64* %5, align 8
  %406 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %404, i32 0, i32 1, i64 %405)
  %407 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %408 = load i64, i64* @BAND_ON_5G, align 8
  %409 = load i64, i64* %6, align 8
  %410 = load i64, i64* @RF_2TX, align 8
  %411 = load i32, i32* @VHT_2SSMCS0_2SSMCS9, align 4
  %412 = call i64 @_rtl8821ae_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %407, i64 %408, i64 %409, i64 %410, i32 %411)
  store i64 %412, i64* %5, align 8
  %413 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %414 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %413, i32 0, i32 0
  %415 = load i32****, i32***** %414, align 8
  %416 = load i64, i64* @BAND_ON_5G, align 8
  %417 = getelementptr inbounds i32***, i32**** %415, i64 %416
  %418 = load i32***, i32**** %417, align 8
  %419 = load i64, i64* %6, align 8
  %420 = getelementptr inbounds i32**, i32*** %418, i64 %419
  %421 = load i32**, i32*** %420, align 8
  %422 = load i64, i64* @RF_1TX, align 8
  %423 = getelementptr inbounds i32*, i32** %421, i64 %422
  %424 = load i32*, i32** %423, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 9
  %426 = load i64, i64* %5, align 8
  %427 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %425, i32 2, i32 3, i64 %426)
  %428 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %429 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %428, i32 0, i32 0
  %430 = load i32****, i32***** %429, align 8
  %431 = load i64, i64* @BAND_ON_5G, align 8
  %432 = getelementptr inbounds i32***, i32**** %430, i64 %431
  %433 = load i32***, i32**** %432, align 8
  %434 = load i64, i64* %6, align 8
  %435 = getelementptr inbounds i32**, i32*** %433, i64 %434
  %436 = load i32**, i32*** %435, align 8
  %437 = load i64, i64* @RF_2TX, align 8
  %438 = getelementptr inbounds i32*, i32** %436, i64 %437
  %439 = load i32*, i32** %438, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 10
  %441 = load i64, i64* %5, align 8
  %442 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %440, i32 0, i32 3, i64 %441)
  %443 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %444 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %443, i32 0, i32 0
  %445 = load i32****, i32***** %444, align 8
  %446 = load i64, i64* @BAND_ON_5G, align 8
  %447 = getelementptr inbounds i32***, i32**** %445, i64 %446
  %448 = load i32***, i32**** %447, align 8
  %449 = load i64, i64* %6, align 8
  %450 = getelementptr inbounds i32**, i32*** %448, i64 %449
  %451 = load i32**, i32*** %450, align 8
  %452 = load i64, i64* @RF_2TX, align 8
  %453 = getelementptr inbounds i32*, i32** %451, i64 %452
  %454 = load i32*, i32** %453, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 11
  %456 = load i64, i64* %5, align 8
  %457 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %455, i32 0, i32 3, i64 %456)
  br label %458

458:                                              ; preds = %16
  %459 = load i64, i64* %6, align 8
  %460 = add i64 %459, 1
  store i64 %460, i64* %6, align 8
  br label %12

461:                                              ; preds = %12
  %462 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %463 = load i32, i32* @COMP_POWER, align 4
  %464 = load i32, i32* @DBG_TRACE, align 4
  %465 = call i32 @RT_TRACE(%struct.rtl_priv* %462, i32 %463, i32 %464, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @_rtl8821ae_phy_get_txpower_by_rate_base(%struct.ieee80211_hw*, i64, i64, i64, i32) #1

declare dso_local i32 @_phy_convert_txpower_dbm_to_relative_value(i32*, i32, i32, i64) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
