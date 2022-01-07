; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_init_mac80211.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_init_mac80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__*, i32, %struct.ieee80211_supported_band** }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.ieee80211_supported_band = type { i32, i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.rtl_hal = type { i64, i64, i64 }
%struct.rtl_mac = type { %struct.ieee80211_supported_band* }
%struct.rtl_efuse = type { i32* }

@SINGLEMAC_SINGLEPHY = common dso_local global i64 0, align 8
@BAND_ON_BOTH = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@rtl_band_2ghz = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@rtl_band_5ghz = common dso_local global i32 0, align 4
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@BAND_ON_5G = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Err BAND %d\0A\00", align 1
@SIGNAL_DBM = common dso_local global i32 0, align 4
@RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@MFP_CAPABLE = common dso_local global i32 0, align 4
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@SUPPORTS_AMSDU_IN_AMPDU = common dso_local global i32 0, align 4
@SUPPORT_FAST_XMIT = common dso_local global i32 0, align 4
@SUPPORTS_PS = common dso_local global i32 0, align 4
@PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@SUPPORTS_DYNAMIC_PS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_GO = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@AC_MAX = common dso_local global i32 0, align 4
@RTL_TX_HEADER_SIZE = common dso_local global i32 0, align 4
@MAX_LISTEN_INTERVAL = common dso_local global i32 0, align 4
@MAX_RATE_TRIES = common dso_local global i32 0, align 4
@__const._rtl_init_mac80211.rtlmac1 = private unnamed_addr constant [6 x i32] [i32 0, i32 224, i32 76, i32 129, i32 146, i32 0], align 16
@ETH_ALEN = common dso_local global i32 0, align 4
@MAX_SUPPORT_WOL_PATTERN_NUM = common dso_local global i32 0, align 4
@MAX_WOL_PATTERN_SIZE = common dso_local global i32 0, align 4
@MIN_WOL_PATTERN_SIZE = common dso_local global i32 0, align 4
@WAKE_ON_MAGIC_PACKET = common dso_local global i32 0, align 4
@WAKE_ON_PATTERN_MATCH = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_MAGIC_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl_init_mac80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_init_mac80211(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rtl_efuse*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca [6 x i32], align 16
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %11)
  store %struct.rtl_hal* %12, %struct.rtl_hal** %4, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %14)
  store %struct.rtl_mac* %15, %struct.rtl_mac** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %17)
  store %struct.rtl_efuse* %18, %struct.rtl_efuse** %6, align 8
  %19 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %20 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SINGLEMAC_SINGLEPHY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %81

24:                                               ; preds = %1
  %25 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BAND_ON_BOTH, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %81

30:                                               ; preds = %24
  %31 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %32 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %31, i32 0, i32 0
  %33 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %32, align 8
  %34 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %35 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %33, i64 %34
  store %struct.ieee80211_supported_band* %35, %struct.ieee80211_supported_band** %7, align 8
  %36 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %37 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %36, i32 0, i32 0
  %38 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %37, align 8
  %39 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %40 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %38, i64 %39
  %41 = call i32 @memcpy(%struct.ieee80211_supported_band* %40, i32* @rtl_band_2ghz, i32 8)
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %43 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %43, i32 0, i32 1
  %45 = call i32 @_rtl_init_hw_ht_capab(%struct.ieee80211_hw* %42, i32* %44)
  %46 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  %51 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %50, align 8
  %52 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %53 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %51, i64 %52
  store %struct.ieee80211_supported_band* %46, %struct.ieee80211_supported_band** %53, align 8
  %54 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %55 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %54, i32 0, i32 0
  %56 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %55, align 8
  %57 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %58 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %56, i64 %57
  store %struct.ieee80211_supported_band* %58, %struct.ieee80211_supported_band** %7, align 8
  %59 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %60 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %59, i32 0, i32 0
  %61 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %60, align 8
  %62 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %63 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %61, i64 %62
  %64 = call i32 @memcpy(%struct.ieee80211_supported_band* %63, i32* @rtl_band_5ghz, i32 8)
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %66 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %66, i32 0, i32 1
  %68 = call i32 @_rtl_init_hw_ht_capab(%struct.ieee80211_hw* %65, i32* %67)
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %70 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %71 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %70, i32 0, i32 0
  %72 = call i32 @_rtl_init_hw_vht_capab(%struct.ieee80211_hw* %69, i32* %71)
  %73 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %75 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %77, align 8
  %79 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %80 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %78, i64 %79
  store %struct.ieee80211_supported_band* %73, %struct.ieee80211_supported_band** %80, align 8
  br label %152

81:                                               ; preds = %24, %1
  %82 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %83 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @BAND_ON_2_4G, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %81
  %88 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %89 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %88, i32 0, i32 0
  %90 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %89, align 8
  %91 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %92 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %90, i64 %91
  store %struct.ieee80211_supported_band* %92, %struct.ieee80211_supported_band** %7, align 8
  %93 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %94 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %93, i32 0, i32 0
  %95 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %94, align 8
  %96 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %97 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %95, i64 %96
  %98 = call i32 @memcpy(%struct.ieee80211_supported_band* %97, i32* @rtl_band_2ghz, i32 8)
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %100 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %101 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %100, i32 0, i32 1
  %102 = call i32 @_rtl_init_hw_ht_capab(%struct.ieee80211_hw* %99, i32* %101)
  %103 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %105 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 4
  %108 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %107, align 8
  %109 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %110 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %108, i64 %109
  store %struct.ieee80211_supported_band* %103, %struct.ieee80211_supported_band** %110, align 8
  br label %151

111:                                              ; preds = %81
  %112 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %113 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @BAND_ON_5G, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %145

117:                                              ; preds = %111
  %118 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %119 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %118, i32 0, i32 0
  %120 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %119, align 8
  %121 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %122 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %120, i64 %121
  store %struct.ieee80211_supported_band* %122, %struct.ieee80211_supported_band** %7, align 8
  %123 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %124 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %123, i32 0, i32 0
  %125 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %124, align 8
  %126 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %127 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %125, i64 %126
  %128 = call i32 @memcpy(%struct.ieee80211_supported_band* %127, i32* @rtl_band_5ghz, i32 8)
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %130 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %131 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %130, i32 0, i32 1
  %132 = call i32 @_rtl_init_hw_ht_capab(%struct.ieee80211_hw* %129, i32* %131)
  %133 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %134 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %135 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %134, i32 0, i32 0
  %136 = call i32 @_rtl_init_hw_vht_capab(%struct.ieee80211_hw* %133, i32* %135)
  %137 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %138 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %139 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %138, i32 0, i32 1
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 4
  %142 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %141, align 8
  %143 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %144 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %142, i64 %143
  store %struct.ieee80211_supported_band* %137, %struct.ieee80211_supported_band** %144, align 8
  br label %150

145:                                              ; preds = %111
  %146 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %147 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %148)
  br label %150

150:                                              ; preds = %145, %117
  br label %151

151:                                              ; preds = %150, %87
  br label %152

152:                                              ; preds = %151, %30
  %153 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %154 = load i32, i32* @SIGNAL_DBM, align 4
  %155 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %153, i32 %154)
  %156 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %157 = load i32, i32* @RX_INCLUDES_FCS, align 4
  %158 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %156, i32 %157)
  %159 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %160 = load i32, i32* @AMPDU_AGGREGATION, align 4
  %161 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %159, i32 %160)
  %162 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %163 = load i32, i32* @MFP_CAPABLE, align 4
  %164 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %162, i32 %163)
  %165 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %166 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %167 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %165, i32 %166)
  %168 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %169 = load i32, i32* @SUPPORTS_AMSDU_IN_AMPDU, align 4
  %170 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %168, i32 %169)
  %171 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %172 = load i32, i32* @SUPPORT_FAST_XMIT, align 4
  %173 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %171, i32 %172)
  %174 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %175 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %152
  %180 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %181 = load i32, i32* @SUPPORTS_PS, align 4
  %182 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %180, i32 %181)
  %183 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %184 = load i32, i32* @PS_NULLFUNC_STACK, align 4
  %185 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %183, i32 %184)
  br label %186

186:                                              ; preds = %179, %152
  %187 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %188 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %186
  %193 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %194 = load i32, i32* @SUPPORTS_PS, align 4
  %195 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %193, i32 %194)
  %196 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %197 = load i32, i32* @SUPPORTS_DYNAMIC_PS, align 4
  %198 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %196, i32 %197)
  br label %199

199:                                              ; preds = %192, %186
  %200 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %201 = call i32 @BIT(i32 %200)
  %202 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %203 = call i32 @BIT(i32 %202)
  %204 = or i32 %201, %203
  %205 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %206 = call i32 @BIT(i32 %205)
  %207 = or i32 %204, %206
  %208 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %209 = call i32 @BIT(i32 %208)
  %210 = or i32 %207, %209
  %211 = load i32, i32* @NL80211_IFTYPE_P2P_CLIENT, align 4
  %212 = call i32 @BIT(i32 %211)
  %213 = or i32 %210, %212
  %214 = load i32, i32* @NL80211_IFTYPE_P2P_GO, align 4
  %215 = call i32 @BIT(i32 %214)
  %216 = or i32 %213, %215
  %217 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %218 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %217, i32 0, i32 1
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  store i32 %216, i32* %220, align 8
  %221 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %222 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %223 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %222, i32 0, i32 1
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %221
  store i32 %227, i32* %225, align 8
  %228 = load i32, i32* @WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL, align 4
  %229 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %230 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %229, i32 0, i32 1
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %228
  store i32 %234, i32* %232, align 8
  %235 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %236 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %235, i32 0, i32 1
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 1
  store i32 2347, i32* %238, align 4
  %239 = load i32, i32* @AC_MAX, align 4
  %240 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %241 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %240, i32 0, i32 5
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* @RTL_TX_HEADER_SIZE, align 4
  %243 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %244 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %243, i32 0, i32 4
  store i32 %242, i32* %244, align 8
  %245 = load i32, i32* @MAX_LISTEN_INTERVAL, align 4
  %246 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %247 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* @MAX_RATE_TRIES, align 4
  %249 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %250 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 8
  %251 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %252 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %251, i32 0, i32 0
  store i32 4, i32* %252, align 8
  %253 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %254 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = call i64 @is_valid_ether_addr(i32* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %199
  %259 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %260 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %261 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %259, i32* %262)
  br label %275

264:                                              ; preds = %199
  %265 = bitcast [6 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %265, i8* align 16 bitcast ([6 x i32]* @__const._rtl_init_mac80211.rtlmac1 to i8*), i64 24, i1 false)
  %266 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %267 = load i32, i32* @ETH_ALEN, align 4
  %268 = sub nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  %271 = call i32 @get_random_bytes(i32* %270, i32 1)
  %272 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %273 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %274 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %272, i32* %273)
  br label %275

275:                                              ; preds = %264, %258
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @memcpy(%struct.ieee80211_supported_band*, i32*, i32) #1

declare dso_local i32 @_rtl_init_hw_ht_capab(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @_rtl_init_hw_vht_capab(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_random_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
