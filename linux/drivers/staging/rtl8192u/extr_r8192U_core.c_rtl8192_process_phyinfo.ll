; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_process_phyinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_process_phyinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8192_priv = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64*, i64, i32*, i64*, i64, i64*, i64, i64, i64, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_rx_stats = type { i32, i64, i32*, i64, i64, i32*, i64, i64, i64, i64, i32, i32, i32 }
%struct.rtl_80211_hdr_3addr = type { i32 }

@rtl8192_process_phyinfo.slide_rssi_index = internal global i64 0, align 8
@rtl8192_process_phyinfo.slide_rssi_statistics = internal global i64 0, align 8
@rtl8192_process_phyinfo.slide_evm_index = internal global i64 0, align 8
@rtl8192_process_phyinfo.slide_evm_statistics = internal global i64 0, align 8
@rtl8192_process_phyinfo.last_rssi = internal global i64 0, align 8
@rtl8192_process_phyinfo.last_evm = internal global i64 0, align 8
@rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index = internal global i64 0, align 8
@rtl8192_process_phyinfo.slide_beacon_adc_pwdb_statistics = internal global i64 0, align 8
@rtl8192_process_phyinfo.last_beacon_adc_pwdb = internal global i64 0, align 8
@PHY_RSSI_SLID_WIN_MAX = common dso_local global i64 0, align 8
@RF90_PATH_A = common dso_local global i64 0, align 8
@RX_SMOOTH_FACTOR = common dso_local global i32 0, align 4
@COMP_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"priv->stats.rx_rssi_percentage[rfPath]  = %d\0A\00", align 1
@COMP_RXDESC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Smooth %s PWDB = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CCK\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"OFDM\00", align 1
@PHY_Beacon_RSSI_SLID_WIN_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8192_priv*, i64*, %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats*)* @rtl8192_process_phyinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_process_phyinfo(%struct.r8192_priv* %0, i64* %1, %struct.ieee80211_rx_stats* %2, %struct.ieee80211_rx_stats* %3) #0 {
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ieee80211_rx_stats*, align 8
  %8 = alloca %struct.ieee80211_rx_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rtl_80211_hdr_3addr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.r8192_priv* %0, %struct.r8192_priv** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.ieee80211_rx_stats* %2, %struct.ieee80211_rx_stats** %7, align 8
  store %struct.ieee80211_rx_stats* %3, %struct.ieee80211_rx_stats** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i64*, i64** %6, align 8
  %17 = bitcast i64* %16 to %struct.rtl_80211_hdr_3addr*
  store %struct.rtl_80211_hdr_3addr* %17, %struct.rtl_80211_hdr_3addr** %13, align 8
  %18 = load %struct.rtl_80211_hdr_3addr*, %struct.rtl_80211_hdr_3addr** %13, align 8
  %19 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, %struct.rtl_80211_hdr_3addr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call i32 @WLAN_GET_SEQ_SEQ(i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %8, align 8
  %26 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i64, i64* @rtl8192_process_phyinfo.slide_rssi_statistics, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* @rtl8192_process_phyinfo.slide_rssi_statistics, align 8
  %35 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %36 = icmp uge i64 %33, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  store i64 %38, i64* @rtl8192_process_phyinfo.slide_rssi_statistics, align 8
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @rtl8192_process_phyinfo.slide_rssi_index, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* @rtl8192_process_phyinfo.last_rssi, align 8
  %46 = load i64, i64* @rtl8192_process_phyinfo.last_rssi, align 8
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %50, %46
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %37, %32
  %53 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, %55
  store i64 %60, i64* %58, align 8
  %61 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %65 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @rtl8192_process_phyinfo.slide_rssi_index, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* @rtl8192_process_phyinfo.slide_rssi_index, align 8
  %70 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %63, i64* %70, align 8
  %71 = load i64, i64* @rtl8192_process_phyinfo.slide_rssi_index, align 8
  %72 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %73 = icmp uge i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %52
  store i64 0, i64* @rtl8192_process_phyinfo.slide_rssi_index, align 8
  br label %75

75:                                               ; preds = %74, %52
  %76 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %77 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @rtl8192_process_phyinfo.slide_rssi_statistics, align 8
  %81 = udiv i64 %79, %80
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @rtl819x_translate_todbm(i64 %82)
  %84 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %85 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 11
  store i32 %83, i32* %86, align 4
  %87 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %88 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %8, align 8
  %92 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %91, i32 0, i32 11
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %94 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %93, i32 0, i32 10
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %75
  %98 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %99 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %592

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %75
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  br label %592

108:                                              ; preds = %104
  %109 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %110 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 10
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %115 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %114, i32 0, i32 9
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %263, label %118

118:                                              ; preds = %108
  %119 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %120 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %119, i32 0, i32 8
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %125 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %263

128:                                              ; preds = %123, %118
  %129 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %129, i64* %10, align 8
  br label %130

130:                                              ; preds = %259, %128
  %131 = load i64, i64* %10, align 8
  %132 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %133 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ult i64 %131, %134
  br i1 %135, label %136, label %262

136:                                              ; preds = %130
  %137 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %138 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %137, i32 0, i32 3
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* %10, align 8
  %143 = call i32 @rtl8192_phy_CheckIsLegalRFPath(i32 %141, i64 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %136
  br label %259

146:                                              ; preds = %136
  %147 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %148 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* %10, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %146
  %156 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %157 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* %10, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %163 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %10, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32 %161, i32* %167, align 4
  br label %168

168:                                              ; preds = %155, %146
  %169 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %170 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %10, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %176 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* %10, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp sgt i32 %174, %181
  br i1 %182, label %183, label %223

183:                                              ; preds = %168
  %184 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %185 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* %10, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @RX_SMOOTH_FACTOR, align 4
  %192 = sub nsw i32 %191, 1
  %193 = mul nsw i32 %190, %192
  %194 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %195 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* %10, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %193, %199
  %201 = load i32, i32* @RX_SMOOTH_FACTOR, align 4
  %202 = sdiv i32 %200, %201
  %203 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %204 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* %10, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32 %202, i32* %208, align 4
  %209 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %210 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = load i64, i64* %10, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  %217 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %218 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* %10, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32 %216, i32* %222, align 4
  br label %249

223:                                              ; preds = %168
  %224 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %225 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load i64, i64* %10, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @RX_SMOOTH_FACTOR, align 4
  %232 = sub nsw i32 %231, 1
  %233 = mul nsw i32 %230, %232
  %234 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %235 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* %10, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %233, %239
  %241 = load i32, i32* @RX_SMOOTH_FACTOR, align 4
  %242 = sdiv i32 %240, %241
  %243 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %244 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = load i64, i64* %10, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  store i32 %242, i32* %248, align 4
  br label %249

249:                                              ; preds = %223, %183
  %250 = load i32, i32* @COMP_DBG, align 4
  %251 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %252 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = load i64, i64* %10, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %250, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %249, %145
  %260 = load i64, i64* %10, align 8
  %261 = add i64 %260, 1
  store i64 %261, i64* %10, align 8
  br label %130

262:                                              ; preds = %130
  br label %263

263:                                              ; preds = %262, %123, %108
  %264 = load i32, i32* @COMP_RXDESC, align 4
  %265 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %266 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %265, i32 0, i32 9
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %271 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %272 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %271, i32 0, i32 3
  %273 = load i64, i64* %272, align 8
  %274 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %264, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %270, i64 %273)
  %275 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %276 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %275, i32 0, i32 7
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %342

279:                                              ; preds = %263
  %280 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %281 = add i64 %280, 1
  store i64 %281, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %282 = load i64, i64* @PHY_Beacon_RSSI_SLID_WIN_MAX, align 8
  %283 = icmp uge i64 %280, %282
  br i1 %283, label %284, label %299

284:                                              ; preds = %279
  %285 = load i64, i64* @PHY_Beacon_RSSI_SLID_WIN_MAX, align 8
  store i64 %285, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %286 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %287 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 3
  %289 = load i64*, i64** %288, align 8
  %290 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %291 = getelementptr inbounds i64, i64* %289, i64 %290
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* @rtl8192_process_phyinfo.last_beacon_adc_pwdb, align 8
  %293 = load i64, i64* @rtl8192_process_phyinfo.last_beacon_adc_pwdb, align 8
  %294 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %295 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 4
  %297 = load i64, i64* %296, align 8
  %298 = sub i64 %297, %293
  store i64 %298, i64* %296, align 8
  br label %299

299:                                              ; preds = %284, %279
  %300 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %301 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %304 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 4
  %306 = load i64, i64* %305, align 8
  %307 = add i64 %306, %302
  store i64 %307, i64* %305, align 8
  %308 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %309 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %308, i32 0, i32 3
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %312 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 3
  %314 = load i64*, i64** %313, align 8
  %315 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %316 = getelementptr inbounds i64, i64* %314, i64 %315
  store i64 %310, i64* %316, align 8
  %317 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %318 = add i64 %317, 1
  store i64 %318, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %319 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %320 = load i64, i64* @PHY_Beacon_RSSI_SLID_WIN_MAX, align 8
  %321 = icmp uge i64 %319, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %299
  store i64 0, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  br label %323

323:                                              ; preds = %322, %299
  %324 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %325 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 4
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @rtl8192_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %329 = udiv i64 %327, %328
  %330 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %331 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %330, i32 0, i32 3
  store i64 %329, i64* %331, align 8
  %332 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %333 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %332, i32 0, i32 3
  %334 = load i64, i64* %333, align 8
  %335 = icmp uge i64 %334, 3
  br i1 %335, label %336, label %341

336:                                              ; preds = %323
  %337 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %338 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %337, i32 0, i32 3
  %339 = load i64, i64* %338, align 8
  %340 = sub i64 %339, 3
  store i64 %340, i64* %338, align 8
  br label %341

341:                                              ; preds = %336, %323
  br label %342

342:                                              ; preds = %341, %263
  %343 = load i32, i32* @COMP_RXDESC, align 4
  %344 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %345 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %344, i32 0, i32 9
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  %348 = zext i1 %347 to i64
  %349 = select i1 %347, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %350 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %351 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %350, i32 0, i32 3
  %352 = load i64, i64* %351, align 8
  %353 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %343, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %349, i64 %352)
  %354 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %355 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %354, i32 0, i32 8
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %368, label %358

358:                                              ; preds = %342
  %359 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %360 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %359, i32 0, i32 7
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %368, label %363

363:                                              ; preds = %358
  %364 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %365 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %364, i32 0, i32 6
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %432

368:                                              ; preds = %363, %358, %342
  %369 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %370 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 8
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %380

373:                                              ; preds = %368
  %374 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %375 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %374, i32 0, i32 3
  %376 = load i64, i64* %375, align 8
  %377 = trunc i64 %376 to i32
  %378 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %379 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %378, i32 0, i32 1
  store i32 %377, i32* %379, align 8
  br label %380

380:                                              ; preds = %373, %368
  %381 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %382 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %381, i32 0, i32 3
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %385 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 8
  %387 = sext i32 %386 to i64
  %388 = icmp ugt i64 %383, %387
  br i1 %388, label %389, label %413

389:                                              ; preds = %380
  %390 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %391 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @RX_SMOOTH_FACTOR, align 4
  %394 = sub nsw i32 %393, 1
  %395 = mul nsw i32 %392, %394
  %396 = sext i32 %395 to i64
  %397 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %398 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %397, i32 0, i32 3
  %399 = load i64, i64* %398, align 8
  %400 = add i64 %396, %399
  %401 = load i32, i32* @RX_SMOOTH_FACTOR, align 4
  %402 = sext i32 %401 to i64
  %403 = udiv i64 %400, %402
  %404 = trunc i64 %403 to i32
  %405 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %406 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %405, i32 0, i32 1
  store i32 %404, i32* %406, align 8
  %407 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %408 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 8
  %410 = add nsw i32 %409, 1
  %411 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %412 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %411, i32 0, i32 1
  store i32 %410, i32* %412, align 8
  br label %431

413:                                              ; preds = %380
  %414 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %415 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* @RX_SMOOTH_FACTOR, align 4
  %418 = sub nsw i32 %417, 1
  %419 = mul nsw i32 %416, %418
  %420 = sext i32 %419 to i64
  %421 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %422 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %421, i32 0, i32 3
  %423 = load i64, i64* %422, align 8
  %424 = add i64 %420, %423
  %425 = load i32, i32* @RX_SMOOTH_FACTOR, align 4
  %426 = sext i32 %425 to i64
  %427 = udiv i64 %424, %426
  %428 = trunc i64 %427 to i32
  %429 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %430 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %429, i32 0, i32 1
  store i32 %428, i32* %430, align 8
  br label %431

431:                                              ; preds = %413, %389
  br label %432

432:                                              ; preds = %431, %363
  %433 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %434 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %433, i32 0, i32 4
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %592

437:                                              ; preds = %432
  %438 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %439 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %438, i32 0, i32 8
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %452, label %442

442:                                              ; preds = %437
  %443 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %444 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %443, i32 0, i32 7
  %445 = load i64, i64* %444, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %452, label %447

447:                                              ; preds = %442
  %448 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %449 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %448, i32 0, i32 6
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %510

452:                                              ; preds = %447, %442, %437
  %453 = load i64, i64* @rtl8192_process_phyinfo.slide_evm_statistics, align 8
  %454 = add i64 %453, 1
  store i64 %454, i64* @rtl8192_process_phyinfo.slide_evm_statistics, align 8
  %455 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %456 = icmp uge i64 %453, %455
  br i1 %456, label %457, label %472

457:                                              ; preds = %452
  %458 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  store i64 %458, i64* @rtl8192_process_phyinfo.slide_evm_statistics, align 8
  %459 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %460 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %459, i32 0, i32 2
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 5
  %462 = load i64*, i64** %461, align 8
  %463 = load i64, i64* @rtl8192_process_phyinfo.slide_evm_index, align 8
  %464 = getelementptr inbounds i64, i64* %462, i64 %463
  %465 = load i64, i64* %464, align 8
  store i64 %465, i64* @rtl8192_process_phyinfo.last_evm, align 8
  %466 = load i64, i64* @rtl8192_process_phyinfo.last_evm, align 8
  %467 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %468 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %467, i32 0, i32 2
  %469 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %468, i32 0, i32 6
  %470 = load i64, i64* %469, align 8
  %471 = sub i64 %470, %466
  store i64 %471, i64* %469, align 8
  br label %472

472:                                              ; preds = %457, %452
  %473 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %474 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %473, i32 0, i32 4
  %475 = load i64, i64* %474, align 8
  %476 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %477 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %476, i32 0, i32 2
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %477, i32 0, i32 6
  %479 = load i64, i64* %478, align 8
  %480 = add i64 %479, %475
  store i64 %480, i64* %478, align 8
  %481 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %482 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %481, i32 0, i32 4
  %483 = load i64, i64* %482, align 8
  %484 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %485 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %484, i32 0, i32 2
  %486 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %485, i32 0, i32 5
  %487 = load i64*, i64** %486, align 8
  %488 = load i64, i64* @rtl8192_process_phyinfo.slide_evm_index, align 8
  %489 = add i64 %488, 1
  store i64 %489, i64* @rtl8192_process_phyinfo.slide_evm_index, align 8
  %490 = getelementptr inbounds i64, i64* %487, i64 %488
  store i64 %483, i64* %490, align 8
  %491 = load i64, i64* @rtl8192_process_phyinfo.slide_evm_index, align 8
  %492 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %493 = icmp uge i64 %491, %492
  br i1 %493, label %494, label %495

494:                                              ; preds = %472
  store i64 0, i64* @rtl8192_process_phyinfo.slide_evm_index, align 8
  br label %495

495:                                              ; preds = %494, %472
  %496 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %497 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %496, i32 0, i32 2
  %498 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %497, i32 0, i32 6
  %499 = load i64, i64* %498, align 8
  %500 = load i64, i64* @rtl8192_process_phyinfo.slide_evm_statistics, align 8
  %501 = udiv i64 %499, %500
  store i64 %501, i64* %12, align 8
  %502 = load i64, i64* %12, align 8
  %503 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %504 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %503, i32 0, i32 2
  %505 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %504, i32 0, i32 7
  store i64 %502, i64* %505, align 8
  %506 = load i64, i64* %12, align 8
  %507 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %508 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %507, i32 0, i32 2
  %509 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %508, i32 0, i32 8
  store i64 %506, i64* %509, align 8
  br label %510

510:                                              ; preds = %495, %447
  %511 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %512 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %511, i32 0, i32 8
  %513 = load i64, i64* %512, align 8
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %525, label %515

515:                                              ; preds = %510
  %516 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %517 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %516, i32 0, i32 7
  %518 = load i64, i64* %517, align 8
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %525, label %520

520:                                              ; preds = %515
  %521 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %522 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %521, i32 0, i32 6
  %523 = load i64, i64* %522, align 8
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %591

525:                                              ; preds = %520, %515, %510
  store i64 0, i64* %11, align 8
  br label %526

526:                                              ; preds = %587, %525
  %527 = load i64, i64* %11, align 8
  %528 = icmp ult i64 %527, 2
  br i1 %528, label %529, label %590

529:                                              ; preds = %526
  %530 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %531 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %530, i32 0, i32 5
  %532 = load i32*, i32** %531, align 8
  %533 = load i64, i64* %11, align 8
  %534 = getelementptr inbounds i32, i32* %532, i64 %533
  %535 = load i32, i32* %534, align 4
  %536 = icmp ne i32 %535, -1
  br i1 %536, label %537, label %586

537:                                              ; preds = %529
  %538 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %539 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %538, i32 0, i32 2
  %540 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %539, i32 0, i32 9
  %541 = load i32*, i32** %540, align 8
  %542 = load i64, i64* %11, align 8
  %543 = getelementptr inbounds i32, i32* %541, i64 %542
  %544 = load i32, i32* %543, align 4
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %559

546:                                              ; preds = %537
  %547 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %548 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %547, i32 0, i32 5
  %549 = load i32*, i32** %548, align 8
  %550 = load i64, i64* %11, align 8
  %551 = getelementptr inbounds i32, i32* %549, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %554 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %553, i32 0, i32 2
  %555 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %554, i32 0, i32 9
  %556 = load i32*, i32** %555, align 8
  %557 = load i64, i64* %11, align 8
  %558 = getelementptr inbounds i32, i32* %556, i64 %557
  store i32 %552, i32* %558, align 4
  br label %559

559:                                              ; preds = %546, %537
  %560 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %561 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %560, i32 0, i32 2
  %562 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %561, i32 0, i32 9
  %563 = load i32*, i32** %562, align 8
  %564 = load i64, i64* %11, align 8
  %565 = getelementptr inbounds i32, i32* %563, i64 %564
  %566 = load i32, i32* %565, align 4
  %567 = load i32, i32* @RX_SMOOTH_FACTOR, align 4
  %568 = sub nsw i32 %567, 1
  %569 = mul nsw i32 %566, %568
  %570 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %7, align 8
  %571 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %570, i32 0, i32 5
  %572 = load i32*, i32** %571, align 8
  %573 = load i64, i64* %11, align 8
  %574 = getelementptr inbounds i32, i32* %572, i64 %573
  %575 = load i32, i32* %574, align 4
  %576 = mul nsw i32 %575, 1
  %577 = add nsw i32 %569, %576
  %578 = load i32, i32* @RX_SMOOTH_FACTOR, align 4
  %579 = sdiv i32 %577, %578
  %580 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %581 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %580, i32 0, i32 2
  %582 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %581, i32 0, i32 9
  %583 = load i32*, i32** %582, align 8
  %584 = load i64, i64* %11, align 8
  %585 = getelementptr inbounds i32, i32* %583, i64 %584
  store i32 %579, i32* %585, align 4
  br label %586

586:                                              ; preds = %559, %529
  br label %587

587:                                              ; preds = %586
  %588 = load i64, i64* %11, align 8
  %589 = add i64 %588, 1
  store i64 %589, i64* %11, align 8
  br label %526

590:                                              ; preds = %526
  br label %591

591:                                              ; preds = %590, %520
  br label %592

592:                                              ; preds = %102, %107, %591, %432
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @WLAN_GET_SEQ_SEQ(i32) #1

declare dso_local i32 @rtl819x_translate_todbm(i64) #1

declare dso_local i32 @rtl8192_phy_CheckIsLegalRFPath(i32, i64) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
