; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_bss_info_changed_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_bss_info_changed_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32, i32, i64, i32, i32*, i32, %struct.TYPE_7__, i64, i64, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.wl12xx_vif = type { i64, i64, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ieee80211_sta = type { i32*, %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@BSS_TYPE_IBSS = common dso_local global i64 0, align 8
@BSS_CHANGED_IBSS = common dso_local global i32 0, align 4
@WLVIF_FLAG_IBSS_JOINED = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@DEBUG_ADHOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ad-hoc beaconing: %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@BSS_CHANGED_IDLE = common dso_local global i32 0, align 4
@BSS_CHANGED_CQM = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@HW_HT_RATES_OFFSET = common dso_local global i32 0, align 4
@HW_MIMO_RATES_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"ibss_joined: %d\00", align 1
@CONF_TX_IBSS_DEFAULT_RATES = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"cmd join failed %d\00", align 1
@WLVIF_FLAG_STA_AUTHORIZED = common dso_local global i32 0, align 4
@BSS_CHANGED_PS = common dso_local global i32 0, align 4
@WLVIF_FLAG_STA_ASSOCIATED = common dso_local global i32 0, align 4
@WLVIF_FLAG_IN_PS = common dso_local global i32 0, align 4
@STATION_POWER_SAVE_MODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"forced\00", align 1
@STATION_AUTO_PS_MODE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@DEBUG_PSM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"%s ps enabled\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"enter %s ps failed %d\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"auto ps disabled\00", align 1
@STATION_ACTIVE_MODE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"exit auto ps failed %d\00", align 1
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"Set ht cap failed %d\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Set ht information failed %d\00", align 1
@BSS_CHANGED_ARP_FILTER = common dso_local global i32 0, align 4
@BSS_CHANGED_QOS = common dso_local global i32 0, align 4
@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [25 x i8] c"build arp rsp failed: %d\00", align 1
@ACX_ARP_FILTER_ARP_FILTERING = common dso_local global i32 0, align 4
@ACX_ARP_FILTER_AUTO_ARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @wl1271_bss_info_changed_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_bss_info_changed_sta(%struct.wl1271* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl12xx_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_sta*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_sta_ht_cap, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %26 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %25)
  store %struct.wl12xx_vif* %26, %struct.wl12xx_vif** %9, align 8
  store i32 0, i32* %10, align 4
  %27 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %28 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BSS_TYPE_IBSS, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %4
  %36 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %38 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @wl1271_bss_beacon_info_changed(%struct.wl1271* %36, %struct.ieee80211_vif* %37, %struct.ieee80211_bss_conf* %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %548

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @WLVIF_FLAG_IBSS_JOINED, align 4
  %57 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %58 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %57, i32 0, i32 5
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  store i32 1, i32* %12, align 4
  br label %67

60:                                               ; preds = %50
  %61 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %62 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %63 = call i32 @wlcore_unset_assoc(%struct.wl1271* %61, %struct.wl12xx_vif* %62)
  %64 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %65 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %66 = call i32 @wl12xx_cmd_role_stop_sta(%struct.wl1271* %64, %struct.wl12xx_vif* %65)
  br label %67

67:                                               ; preds = %60, %55
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 1, i32* %10, align 4
  br label %77

77:                                               ; preds = %76, %73, %68
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %10, align 4
  br label %86

86:                                               ; preds = %85, %82, %77
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i32, i32* @DEBUG_ADHOC, align 4
  %96 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %97 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %96, i32 0, i32 14
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %102 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %101)
  store i32 1, i32* %10, align 4
  br label %103

103:                                              ; preds = %94, %91, %86
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @BSS_CHANGED_IDLE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %113 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %114 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %115 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %114, i32 0, i32 13
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @wl1271_sta_handle_idle(%struct.wl1271* %112, %struct.wl12xx_vif* %113, i32 %116)
  br label %118

118:                                              ; preds = %111, %108, %103
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @BSS_CHANGED_CQM, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %149

123:                                              ; preds = %118
  store i32 0, i32* %18, align 4
  %124 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %125 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %124, i32 0, i32 11
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 1, i32* %18, align 4
  br label %129

129:                                              ; preds = %128, %123
  %130 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %131 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %132 = load i32, i32* %18, align 4
  %133 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %134 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %133, i32 0, i32 11
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %137 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %136, i32 0, i32 12
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @wl1271_acx_rssi_snr_trigger(%struct.wl1271* %130, %struct.wl12xx_vif* %131, i32 %132, i32 %135, i32 %138)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %129
  br label %548

143:                                              ; preds = %129
  %144 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %145 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %144, i32 0, i32 11
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %148 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %147, i32 0, i32 8
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %143, %118
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %152 = load i32, i32* @BSS_CHANGED_HT, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %150, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %207

158:                                              ; preds = %149
  %159 = call i32 (...) @rcu_read_lock()
  %160 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %161 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %162 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %161, i32 0, i32 10
  %163 = load i32, i32* %162, align 4
  %164 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %160, i32 %163)
  store %struct.ieee80211_sta* %164, %struct.ieee80211_sta** %15, align 8
  %165 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %166 = icmp ne %struct.ieee80211_sta* %165, null
  br i1 %166, label %167, label %205

167:                                              ; preds = %158
  %168 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %169 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  store i32* %172, i32** %19, align 8
  %173 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %174 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %177 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %13, align 4
  %181 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %182 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %167
  %187 = load i32*, i32** %19, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @HW_HT_RATES_OFFSET, align 4
  %191 = shl i32 %189, %190
  %192 = load i32*, i32** %19, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @HW_MIMO_RATES_OFFSET, align 4
  %196 = shl i32 %194, %195
  %197 = or i32 %191, %196
  %198 = load i32, i32* %13, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %13, align 4
  br label %200

200:                                              ; preds = %186, %167
  %201 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %202 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %201, i32 0, i32 1
  %203 = bitcast %struct.ieee80211_sta_ht_cap* %17 to i8*
  %204 = bitcast %struct.ieee80211_sta_ht_cap* %202 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %203, i8* align 8 %204, i64 16, i1 false)
  store i32 1, i32* %16, align 4
  br label %205

205:                                              ; preds = %200, %158
  %206 = call i32 (...) @rcu_read_unlock()
  br label %207

207:                                              ; preds = %205, %149
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %237

212:                                              ; preds = %207
  %213 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %214 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %213, i32 0, i32 10
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @is_zero_ether_addr(i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %228, label %218

218:                                              ; preds = %212
  %219 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %220 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %221 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %222 = load i32, i32* %13, align 4
  %223 = call i32 @wlcore_set_bssid(%struct.wl1271* %219, %struct.wl12xx_vif* %220, %struct.ieee80211_bss_conf* %221, i32 %222)
  store i32 %223, i32* %14, align 4
  %224 = load i32, i32* %14, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  br label %548

227:                                              ; preds = %218
  store i32 1, i32* %10, align 4
  br label %236

228:                                              ; preds = %212
  %229 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %230 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %231 = call i32 @wlcore_clear_bssid(%struct.wl1271* %229, %struct.wl12xx_vif* %230)
  store i32 %231, i32* %14, align 4
  %232 = load i32, i32* %14, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  br label %548

235:                                              ; preds = %228
  br label %236

236:                                              ; preds = %235, %227
  br label %237

237:                                              ; preds = %236, %207
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %282

242:                                              ; preds = %237
  %243 = load i32, i32* @DEBUG_ADHOC, align 4
  %244 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %245 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 8
  %247 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %243, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %246)
  %248 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %249 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %248, i32 0, i32 9
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %281

252:                                              ; preds = %242
  %253 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %254 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  store i32 %255, i32* %20, align 4
  %256 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %257 = load i32, i32* %20, align 4
  %258 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %259 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @wl1271_tx_enabled_rates_get(%struct.wl1271* %256, i32 %257, i64 %260)
  %262 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %263 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %262, i32 0, i32 6
  store i32 %261, i32* %263, align 4
  %264 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %265 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %266 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %264, i32 %267)
  %269 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %270 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %269, i32 0, i32 7
  store i32 %268, i32* %270, align 8
  %271 = load i32, i32* @CONF_TX_IBSS_DEFAULT_RATES, align 4
  %272 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %273 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %272, i32 0, i32 4
  store i32 %271, i32* %273, align 4
  %274 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %275 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %276 = call i32 @wl1271_acx_sta_rate_policies(%struct.wl1271* %274, %struct.wl12xx_vif* %275)
  store i32 %276, i32* %14, align 4
  %277 = load i32, i32* %14, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %252
  br label %548

280:                                              ; preds = %252
  br label %281

281:                                              ; preds = %280, %242
  br label %282

282:                                              ; preds = %281, %237
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* @BSS_CHANGED_BEACON_INFO, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %300

287:                                              ; preds = %282
  %288 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %289 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %288, i32 0, i32 8
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %287
  %293 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %294 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %295 = call i32 @wl1271_acx_beacon_filter_opt(%struct.wl1271* %293, %struct.wl12xx_vif* %294, i32 1)
  store i32 %295, i32* %14, align 4
  %296 = load i32, i32* %14, align 4
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %292
  br label %548

299:                                              ; preds = %292
  br label %300

300:                                              ; preds = %299, %287, %282
  %301 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %302 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %303 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %304 = load i32, i32* %8, align 4
  %305 = call i32 @wl1271_bss_erp_info_changed(%struct.wl1271* %301, %struct.ieee80211_vif* %302, %struct.ieee80211_bss_conf* %303, i32 %304)
  store i32 %305, i32* %14, align 4
  %306 = load i32, i32* %14, align 4
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %300
  br label %548

309:                                              ; preds = %300
  %310 = load i32, i32* %10, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %322

312:                                              ; preds = %309
  %313 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %314 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %315 = call i32 @wlcore_join(%struct.wl1271* %313, %struct.wl12xx_vif* %314)
  store i32 %315, i32* %14, align 4
  %316 = load i32, i32* %14, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %312
  %319 = load i32, i32* %14, align 4
  %320 = call i32 (i8*, ...) @wl1271_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %319)
  br label %548

321:                                              ; preds = %312
  br label %322

322:                                              ; preds = %321, %309
  %323 = load i32, i32* %8, align 4
  %324 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %357

327:                                              ; preds = %322
  %328 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %329 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %352

332:                                              ; preds = %327
  %333 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %334 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %335 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %336 = load i32, i32* %13, align 4
  %337 = call i32 @wlcore_set_assoc(%struct.wl1271* %333, %struct.wl12xx_vif* %334, %struct.ieee80211_bss_conf* %335, i32 %336)
  store i32 %337, i32* %14, align 4
  %338 = load i32, i32* %14, align 4
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %332
  br label %548

341:                                              ; preds = %332
  %342 = load i32, i32* @WLVIF_FLAG_STA_AUTHORIZED, align 4
  %343 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %344 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %343, i32 0, i32 5
  %345 = call i64 @test_bit(i32 %342, i32* %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %341
  %348 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %349 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %350 = call i32 @wl12xx_set_authorized(%struct.wl1271* %348, %struct.wl12xx_vif* %349)
  br label %351

351:                                              ; preds = %347, %341
  br label %356

352:                                              ; preds = %327
  %353 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %354 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %355 = call i32 @wlcore_unset_assoc(%struct.wl1271* %353, %struct.wl12xx_vif* %354)
  br label %356

356:                                              ; preds = %352, %351
  br label %357

357:                                              ; preds = %356, %322
  %358 = load i32, i32* %8, align 4
  %359 = load i32, i32* @BSS_CHANGED_PS, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %431

362:                                              ; preds = %357
  %363 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %364 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %363, i32 0, i32 7
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %405

367:                                              ; preds = %362
  %368 = load i32, i32* @WLVIF_FLAG_STA_ASSOCIATED, align 4
  %369 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %370 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %369, i32 0, i32 5
  %371 = call i64 @test_bit(i32 %368, i32* %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %405

373:                                              ; preds = %367
  %374 = load i32, i32* @WLVIF_FLAG_IN_PS, align 4
  %375 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %376 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %375, i32 0, i32 5
  %377 = call i64 @test_bit(i32 %374, i32* %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %405, label %379

379:                                              ; preds = %373
  %380 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %381 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %379
  %387 = load i32, i32* @STATION_POWER_SAVE_MODE, align 4
  store i32 %387, i32* %21, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %22, align 8
  br label %390

388:                                              ; preds = %379
  %389 = load i32, i32* @STATION_AUTO_PS_MODE, align 4
  store i32 %389, i32* %21, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %22, align 8
  br label %390

390:                                              ; preds = %388, %386
  %391 = load i32, i32* @DEBUG_PSM, align 4
  %392 = load i8*, i8** %22, align 8
  %393 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %391, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %392)
  %394 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %395 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %396 = load i32, i32* %21, align 4
  %397 = call i32 @wl1271_ps_set_mode(%struct.wl1271* %394, %struct.wl12xx_vif* %395, i32 %396)
  store i32 %397, i32* %14, align 4
  %398 = load i32, i32* %14, align 4
  %399 = icmp slt i32 %398, 0
  br i1 %399, label %400, label %404

400:                                              ; preds = %390
  %401 = load i8*, i8** %22, align 8
  %402 = load i32, i32* %14, align 4
  %403 = call i32 (i8*, ...) @wl1271_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %401, i32 %402)
  br label %404

404:                                              ; preds = %400, %390
  br label %430

405:                                              ; preds = %373, %367, %362
  %406 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %407 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %406, i32 0, i32 7
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %429, label %410

410:                                              ; preds = %405
  %411 = load i32, i32* @WLVIF_FLAG_IN_PS, align 4
  %412 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %413 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %412, i32 0, i32 5
  %414 = call i64 @test_bit(i32 %411, i32* %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %429

416:                                              ; preds = %410
  %417 = load i32, i32* @DEBUG_PSM, align 4
  %418 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %417, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %419 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %420 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %421 = load i32, i32* @STATION_ACTIVE_MODE, align 4
  %422 = call i32 @wl1271_ps_set_mode(%struct.wl1271* %419, %struct.wl12xx_vif* %420, i32 %421)
  store i32 %422, i32* %14, align 4
  %423 = load i32, i32* %14, align 4
  %424 = icmp slt i32 %423, 0
  br i1 %424, label %425, label %428

425:                                              ; preds = %416
  %426 = load i32, i32* %14, align 4
  %427 = call i32 (i8*, ...) @wl1271_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %426)
  br label %428

428:                                              ; preds = %425, %416
  br label %429

429:                                              ; preds = %428, %410, %405
  br label %430

430:                                              ; preds = %429, %404
  br label %431

431:                                              ; preds = %430, %357
  %432 = load i32, i32* %16, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %474

434:                                              ; preds = %431
  %435 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %436 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %435, i32 0, i32 6
  %437 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %440 = icmp ne i64 %438, %439
  %441 = zext i1 %440 to i32
  store i32 %441, i32* %23, align 4
  %442 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %443 = load i32, i32* %23, align 4
  %444 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %445 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %444, i32 0, i32 4
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %448 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %447, i32 0, i32 3
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @wlcore_hw_set_peer_cap(%struct.wl1271* %442, %struct.ieee80211_sta_ht_cap* %17, i32 %443, i32 %446, i32 %450)
  store i32 %451, i32* %14, align 4
  %452 = load i32, i32* %14, align 4
  %453 = icmp slt i32 %452, 0
  br i1 %453, label %454, label %457

454:                                              ; preds = %434
  %455 = load i32, i32* %14, align 4
  %456 = call i32 (i8*, ...) @wl1271_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %455)
  br label %548

457:                                              ; preds = %434
  %458 = load i32, i32* %23, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %473

460:                                              ; preds = %457
  %461 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %462 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %463 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %464 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %463, i32 0, i32 5
  %465 = load i32, i32* %464, align 8
  %466 = call i32 @wl1271_acx_set_ht_information(%struct.wl1271* %461, %struct.wl12xx_vif* %462, i32 %465)
  store i32 %466, i32* %14, align 4
  %467 = load i32, i32* %14, align 4
  %468 = icmp slt i32 %467, 0
  br i1 %468, label %469, label %472

469:                                              ; preds = %460
  %470 = load i32, i32* %14, align 4
  %471 = call i32 (i8*, ...) @wl1271_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %470)
  br label %548

472:                                              ; preds = %460
  br label %473

473:                                              ; preds = %472, %457
  br label %474

474:                                              ; preds = %473, %431
  %475 = load i32, i32* %8, align 4
  %476 = load i32, i32* @BSS_CHANGED_ARP_FILTER, align 4
  %477 = and i32 %475, %476
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %487, label %479

479:                                              ; preds = %474
  %480 = load i32, i32* %11, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %547, label %482

482:                                              ; preds = %479
  %483 = load i32, i32* %8, align 4
  %484 = load i32, i32* @BSS_CHANGED_QOS, align 4
  %485 = and i32 %483, %484
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %547

487:                                              ; preds = %482, %474
  %488 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %489 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %488, i32 0, i32 4
  %490 = load i32*, i32** %489, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 0
  %492 = load i32, i32* %491, align 4
  store i32 %492, i32* %24, align 4
  %493 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %494 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %493, i32 0, i32 3
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %497 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %496, i32 0, i32 3
  %498 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %497, i32 0, i32 0
  store i32 %495, i32* %498, align 4
  %499 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %500 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %499, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %503 = icmp ne i64 %501, %502
  %504 = zext i1 %503 to i32
  %505 = call i32 @WARN_ON(i32 %504)
  %506 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %507 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 4
  %509 = icmp eq i32 %508, 1
  br i1 %509, label %510, label %535

510:                                              ; preds = %487
  %511 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %512 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %511, i32 0, i32 2
  %513 = load i64, i64* %512, align 8
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %535

515:                                              ; preds = %510
  %516 = load i32, i32* %24, align 4
  %517 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %518 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %517, i32 0, i32 2
  store i32 %516, i32* %518, align 8
  %519 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %520 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %521 = call i32 @wl1271_cmd_build_arp_rsp(%struct.wl1271* %519, %struct.wl12xx_vif* %520)
  store i32 %521, i32* %14, align 4
  %522 = load i32, i32* %14, align 4
  %523 = icmp slt i32 %522, 0
  br i1 %523, label %524, label %527

524:                                              ; preds = %515
  %525 = load i32, i32* %14, align 4
  %526 = call i32 (i8*, ...) @wl1271_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %525)
  br label %548

527:                                              ; preds = %515
  %528 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %529 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %530 = load i32, i32* @ACX_ARP_FILTER_ARP_FILTERING, align 4
  %531 = load i32, i32* @ACX_ARP_FILTER_AUTO_ARP, align 4
  %532 = or i32 %530, %531
  %533 = load i32, i32* %24, align 4
  %534 = call i32 @wl1271_acx_arp_ip_filter(%struct.wl1271* %528, %struct.wl12xx_vif* %529, i32 %532, i32 %533)
  store i32 %534, i32* %14, align 4
  br label %542

535:                                              ; preds = %510, %487
  %536 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %537 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %536, i32 0, i32 2
  store i32 0, i32* %537, align 8
  %538 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %539 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %540 = load i32, i32* %24, align 4
  %541 = call i32 @wl1271_acx_arp_ip_filter(%struct.wl1271* %538, %struct.wl12xx_vif* %539, i32 0, i32 %540)
  store i32 %541, i32* %14, align 4
  br label %542

542:                                              ; preds = %535, %527
  %543 = load i32, i32* %14, align 4
  %544 = icmp slt i32 %543, 0
  br i1 %544, label %545, label %546

545:                                              ; preds = %542
  br label %548

546:                                              ; preds = %542
  br label %547

547:                                              ; preds = %546, %482, %479
  br label %548

548:                                              ; preds = %547, %545, %524, %469, %454, %340, %318, %308, %298, %279, %234, %226, %142, %43
  ret void
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_bss_beacon_info_changed(%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wlcore_unset_assoc(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_cmd_role_stop_sta(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, ...) #1

declare dso_local i32 @wl1271_sta_handle_idle(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wl1271_acx_rssi_snr_trigger(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @wlcore_set_bssid(%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @wlcore_clear_bssid(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_tx_enabled_rates_get(%struct.wl1271*, i32, i64) #1

declare dso_local i32 @wl1271_tx_min_rate_get(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_acx_sta_rate_policies(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_acx_beacon_filter_opt(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wl1271_bss_erp_info_changed(%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @wlcore_join(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_warning(i8*, ...) #1

declare dso_local i32 @wlcore_set_assoc(%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wl12xx_set_authorized(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_ps_set_mode(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wlcore_hw_set_peer_cap(%struct.wl1271*, %struct.ieee80211_sta_ht_cap*, i32, i32, i32) #1

declare dso_local i32 @wl1271_acx_set_ht_information(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wl1271_cmd_build_arp_rsp(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_acx_arp_ip_filter(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
