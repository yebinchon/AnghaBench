; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl1271_scan_sched_scan_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl1271_scan_sched_scan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.conf_sched_scan_settings }
%struct.conf_sched_scan_settings = type { i32, i32, i32 }
%struct.wl12xx_vif = type { i32 }
%struct.cfg80211_sched_scan_request = type { %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_scan_ies = type { i32, i32, i32*, i32* }
%struct.wl1271_cmd_sched_scan_config = type { i32, i32, i64*, i64, i32*, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.wlcore_scan_channels = type { i32, i32, i64*, i64, i32*, i32, i32, i64, i64, i32, i32, i32, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cmd sched_scan scan config\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WL1271_SCAN_DEFAULT_TAG = common dso_local global i32 0, align 4
@SCAN_BSS_TYPE_ANY = common dso_local global i32 0, align 4
@SCAN_MAX_CYCLE_INTERVALS = common dso_local global i32 0, align 4
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@DEBUG_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"filter_type = %d\00", align 1
@SCAN_TYPE_PERIODIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"scan channel list is empty\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"2.4GHz PROBE request template failed\00", align 1
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"5GHz PROBE request template failed\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"SCAN_CFG: \00", align 1
@CMD_CONNECTION_SCAN_CFG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"SCAN configuration failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_scan_sched_scan_config(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.cfg80211_sched_scan_request* %2, %struct.ieee80211_scan_ies* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca %struct.wl12xx_vif*, align 8
  %8 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %9 = alloca %struct.ieee80211_scan_ies*, align 8
  %10 = alloca %struct.wl1271_cmd_sched_scan_config*, align 8
  %11 = alloca %struct.wlcore_scan_channels*, align 8
  %12 = alloca %struct.conf_sched_scan_settings*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %7, align 8
  store %struct.cfg80211_sched_scan_request* %2, %struct.cfg80211_sched_scan_request** %8, align 8
  store %struct.ieee80211_scan_ies* %3, %struct.ieee80211_scan_ies** %9, align 8
  store %struct.wl1271_cmd_sched_scan_config* null, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  store %struct.wlcore_scan_channels* null, %struct.wlcore_scan_channels** %11, align 8
  %18 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.conf_sched_scan_settings* %20, %struct.conf_sched_scan_settings** %12, align 8
  %21 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %22 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* @DEBUG_CMD, align 4
  %28 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.wlcore_scan_channels* @kzalloc(i32 72, i32 %29)
  %31 = bitcast %struct.wlcore_scan_channels* %30 to %struct.wl1271_cmd_sched_scan_config*
  store %struct.wl1271_cmd_sched_scan_config* %31, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %32 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %33 = icmp ne %struct.wl1271_cmd_sched_scan_config* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %272

37:                                               ; preds = %4
  %38 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %39 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %42 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %41, i32 0, i32 12
  store i32 %40, i32* %42, align 4
  %43 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %12, align 8
  %44 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %47 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %46, i32 0, i32 11
  store i32 %45, i32* %47, align 8
  %48 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %12, align 8
  %49 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %52 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 4
  %53 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %12, align 8
  %54 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %57 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 8
  %58 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %59 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %58, i32 0, i32 8
  store i64 0, i64* %59, align 8
  %60 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %61 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %63 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %62, i32 0, i32 7
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @WL1271_SCAN_DEFAULT_TAG, align 4
  %65 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %66 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @SCAN_BSS_TYPE_ANY, align 4
  %68 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %69 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %90, %37
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @SCAN_MAX_CYCLE_INTERVALS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %76 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %75, i32 0, i32 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MSEC_PER_SEC, align 4
  %82 = mul nsw i32 %80, %81
  %83 = call i32 @cpu_to_le32(i32 %82)
  %84 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %85 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %74
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %70

93:                                               ; preds = %70
  %94 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %95 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %97 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %98 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %99 = call i32 @wlcore_scan_sched_scan_ssid_list(%struct.wl1271* %96, %struct.wl12xx_vif* %97, %struct.cfg80211_sched_scan_request* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %265

103:                                              ; preds = %93
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %106 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @DEBUG_SCAN, align 4
  %108 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %109 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call %struct.wlcore_scan_channels* @kzalloc(i32 72, i32 %112)
  store %struct.wlcore_scan_channels* %113, %struct.wlcore_scan_channels** %11, align 8
  %114 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %11, align 8
  %115 = icmp ne %struct.wlcore_scan_channels* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %103
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %14, align 4
  br label %265

119:                                              ; preds = %103
  %120 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %121 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %11, align 8
  %122 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %123 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %126 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %129 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @SCAN_TYPE_PERIODIC, align 4
  %132 = call i32 @wlcore_set_scan_chan_params(%struct.wl1271* %120, %struct.wlcore_scan_channels* %121, i32 %124, i32 %127, i32 %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %119
  %135 = call i32 @wl1271_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %14, align 4
  br label %265

138:                                              ; preds = %119
  %139 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %140 = bitcast %struct.wl1271_cmd_sched_scan_config* %139 to %struct.wlcore_scan_channels*
  %141 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %11, align 8
  %142 = call i32 @wl12xx_adjust_channels(%struct.wlcore_scan_channels* %140, %struct.wlcore_scan_channels* %141)
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %196, label %145

145:                                              ; preds = %138
  %146 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %147 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %146, i32 0, i32 2
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %196

152:                                              ; preds = %145
  %153 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  store i64 %153, i64* %16, align 8
  %154 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %155 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %156 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %157 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i64, i64* %16, align 8
  %160 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %161 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %167 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %166, i32 0, i32 0
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %9, align 8
  %173 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* %16, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %9, align 8
  %179 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* %16, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %9, align 8
  %185 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %9, align 8
  %188 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @wl12xx_cmd_build_probe_req(%struct.wl1271* %154, %struct.wl12xx_vif* %155, i32 %158, i64 %159, i32 %165, i32 %171, i32 %177, i32 %183, i32 %186, i32 %189, i32 1)
  store i32 %190, i32* %14, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %152
  %194 = call i32 @wl1271_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %265

195:                                              ; preds = %152
  br label %196

196:                                              ; preds = %195, %145, %138
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %250, label %199

199:                                              ; preds = %196
  %200 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %201 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %200, i32 0, i32 2
  %202 = load i64*, i64** %201, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %250

206:                                              ; preds = %199
  %207 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  store i64 %207, i64* %17, align 8
  %208 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %209 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %210 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %211 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i64, i64* %17, align 8
  %214 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %215 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %214, i32 0, i32 0
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i64 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %221 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %220, i32 0, i32 0
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i64 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %9, align 8
  %227 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = load i64, i64* %17, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %9, align 8
  %233 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* %17, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %9, align 8
  %239 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %9, align 8
  %242 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @wl12xx_cmd_build_probe_req(%struct.wl1271* %208, %struct.wl12xx_vif* %209, i32 %212, i64 %213, i32 %219, i32 %225, i32 %231, i32 %237, i32 %240, i32 %243, i32 1)
  store i32 %244, i32* %14, align 4
  %245 = load i32, i32* %14, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %206
  %248 = call i32 @wl1271_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %265

249:                                              ; preds = %206
  br label %250

250:                                              ; preds = %249, %199, %196
  %251 = load i32, i32* @DEBUG_SCAN, align 4
  %252 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %253 = bitcast %struct.wl1271_cmd_sched_scan_config* %252 to %struct.wlcore_scan_channels*
  %254 = call i32 @wl1271_dump(i32 %251, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), %struct.wlcore_scan_channels* %253, i32 72)
  %255 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %256 = load i32, i32* @CMD_CONNECTION_SCAN_CFG, align 4
  %257 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %258 = bitcast %struct.wl1271_cmd_sched_scan_config* %257 to %struct.wlcore_scan_channels*
  %259 = call i32 @wl1271_cmd_send(%struct.wl1271* %255, i32 %256, %struct.wlcore_scan_channels* %258, i32 72, i32 0)
  store i32 %259, i32* %14, align 4
  %260 = load i32, i32* %14, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %250
  %263 = call i32 @wl1271_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %265

264:                                              ; preds = %250
  br label %265

265:                                              ; preds = %264, %262, %247, %193, %134, %116, %102
  %266 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %11, align 8
  %267 = call i32 @kfree(%struct.wlcore_scan_channels* %266)
  %268 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %269 = bitcast %struct.wl1271_cmd_sched_scan_config* %268 to %struct.wlcore_scan_channels*
  %270 = call i32 @kfree(%struct.wlcore_scan_channels* %269)
  %271 = load i32, i32* %14, align 4
  store i32 %271, i32* %5, align 4
  br label %272

272:                                              ; preds = %265, %34
  %273 = load i32, i32* %5, align 4
  ret i32 %273
}

declare dso_local i32 @wl1271_debug(i32, i8*, ...) #1

declare dso_local %struct.wlcore_scan_channels* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wlcore_scan_sched_scan_ssid_list(%struct.wl1271*, %struct.wl12xx_vif*, %struct.cfg80211_sched_scan_request*) #1

declare dso_local i32 @wlcore_set_scan_chan_params(%struct.wl1271*, %struct.wlcore_scan_channels*, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @wl12xx_adjust_channels(%struct.wlcore_scan_channels*, %struct.wlcore_scan_channels*) #1

declare dso_local i32 @wl12xx_cmd_build_probe_req(%struct.wl1271*, %struct.wl12xx_vif*, i32, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_dump(i32, i8*, %struct.wlcore_scan_channels*, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wlcore_scan_channels*, i32, i32) #1

declare dso_local i32 @kfree(%struct.wlcore_scan_channels*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
