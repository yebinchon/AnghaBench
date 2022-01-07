; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_scan.c_wl18xx_scan_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_scan.c_wl18xx_scan_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wl12xx_vif = type { i64, i64 }
%struct.cfg80211_scan_request = type { i32, i32, i32, %struct.TYPE_6__*, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.wl18xx_cmd_scan_params = type { i64, i32, i32, i64, i64*, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i32, i64, i32 }
%struct.wlcore_scan_channels = type { i64, i32, i32, i64, i64*, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WL12XX_INVALID_ROLE_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SCAN_TYPE_SEARCH = common dso_local global i32 0, align 4
@SCAN_BSS_TYPE_ANY = common dso_local global i32 0, align 4
@WL18XX_SCAN_RATE_6 = common dso_local global i32 0, align 4
@WL1271_SCAN_DEFAULT_TAG = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"2.4GHz PROBE request template failed\00", align 1
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"5GHz PROBE request template failed\00", align 1
@DEBUG_SCAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"SCAN: \00", align 1
@CMD_SCAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"SCAN failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.cfg80211_scan_request*)* @wl18xx_scan_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_scan_send(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.cfg80211_scan_request* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.cfg80211_scan_request*, align 8
  %7 = alloca %struct.wl18xx_cmd_scan_params*, align 8
  %8 = alloca %struct.wlcore_scan_channels*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store %struct.cfg80211_scan_request* %2, %struct.cfg80211_scan_request** %6, align 8
  store %struct.wlcore_scan_channels* null, %struct.wlcore_scan_channels** %8, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.wlcore_scan_channels* @kzalloc(i32 128, i32 %12)
  %14 = bitcast %struct.wlcore_scan_channels* %13 to %struct.wl18xx_cmd_scan_params*
  store %struct.wl18xx_cmd_scan_params* %14, %struct.wl18xx_cmd_scan_params** %7, align 8
  %15 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %16 = icmp ne %struct.wl18xx_cmd_scan_params* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %279

20:                                               ; preds = %3
  %21 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %22 = call i64 @wlcore_is_p2p_mgmt(%struct.wl12xx_vif* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %26 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %29 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %36

30:                                               ; preds = %20
  %31 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %32 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %35 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %38 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @WL12XX_INVALID_ROLE_ID, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %279

48:                                               ; preds = %36
  %49 = load i32, i32* @SCAN_TYPE_SEARCH, align 4
  %50 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %51 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %50, i32 0, i32 18
  store i32 %49, i32* %51, align 8
  %52 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %53 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %52, i32 0, i32 1
  store i32 -127, i32* %53, align 8
  %54 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %55 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %54, i32 0, i32 17
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @SCAN_BSS_TYPE_ANY, align 4
  %57 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %58 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %57, i32 0, i32 16
  store i32 %56, i32* %58, align 8
  %59 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %60 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %59, i32 0, i32 15
  store i64 0, i64* %60, align 8
  %61 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %62 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %61, i32 0, i32 14
  store i64 0, i64* %62, align 8
  %63 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %64 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %63, i32 0, i32 13
  store i64 0, i64* %64, align 8
  %65 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %66 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %65, i32 0, i32 12
  store i64 0, i64* %66, align 8
  %67 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %68 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %67, i32 0, i32 11
  store i64 0, i64* %68, align 8
  %69 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %70 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %75 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %74, i32 0, i32 10
  store i32 %73, i32* %75, align 8
  %76 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %77 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %76, i32 0, i32 9
  store i64 0, i64* %77, align 8
  %78 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %79 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 1
  %82 = zext i1 %81 to i32
  %83 = call i64 @WARN_ON(i32 %82)
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.wlcore_scan_channels* @kzalloc(i32 128, i32 %84)
  store %struct.wlcore_scan_channels* %85, %struct.wlcore_scan_channels** %8, align 8
  %86 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %8, align 8
  %87 = icmp ne %struct.wlcore_scan_channels* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %48
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %9, align 4
  br label %279

91:                                               ; preds = %48
  %92 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %93 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %8, align 8
  %94 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %95 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %98 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %101 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SCAN_TYPE_SEARCH, align 4
  %104 = call i32 @wlcore_set_scan_chan_params(%struct.wl1271* %92, %struct.wlcore_scan_channels* %93, i32 %96, i32 %99, i32 %102, i32 %103)
  %105 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %106 = bitcast %struct.wl18xx_cmd_scan_params* %105 to %struct.wlcore_scan_channels*
  %107 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %8, align 8
  %108 = call i32 @wl18xx_adjust_channels(%struct.wlcore_scan_channels* %106, %struct.wlcore_scan_channels* %107)
  %109 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %110 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %109, i32 0, i32 2
  store i32 1, i32* %110, align 4
  %111 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %112 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %91
  %116 = load i32, i32* @WL18XX_SCAN_RATE_6, align 4
  %117 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %118 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %117, i32 0, i32 8
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %115, %91
  %120 = load i32, i32* @WL1271_SCAN_DEFAULT_TAG, align 4
  %121 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %122 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %121, i32 0, i32 7
  store i32 %120, i32* %122, align 8
  %123 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %124 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %149

127:                                              ; preds = %119
  %128 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %129 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %128, i32 0, i32 3
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %135 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 8
  %136 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %137 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %140 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %139, i32 0, i32 3
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %146 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @memcpy(i32 %138, i32* %144, i32 %147)
  br label %149

149:                                              ; preds = %127, %119
  %150 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %151 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %150, i32 0, i32 4
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %204

156:                                              ; preds = %149
  %157 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  store i32 %157, i32* %10, align 4
  %158 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %159 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %160 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %161 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %165 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %164, i32 0, i32 3
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = icmp ne %struct.TYPE_6__* %166, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %156
  %169 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %170 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %169, i32 0, i32 3
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  br label %176

175:                                              ; preds = %156
  br label %176

176:                                              ; preds = %175, %168
  %177 = phi i32* [ %174, %168 ], [ null, %175 ]
  %178 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %179 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %178, i32 0, i32 3
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = icmp ne %struct.TYPE_6__* %180, null
  br i1 %181, label %182, label %189

182:                                              ; preds = %176
  %183 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %184 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %183, i32 0, i32 3
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  br label %190

189:                                              ; preds = %176
  br label %190

190:                                              ; preds = %189, %182
  %191 = phi i32 [ %188, %182 ], [ 0, %189 ]
  %192 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %193 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %196 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @wl12xx_cmd_build_probe_req(%struct.wl1271* %158, %struct.wl12xx_vif* %159, i64 %162, i32 %163, i32* %177, i32 %191, i32 %194, i32 %197, i32* null, i32 0, i32 0)
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %9, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %190
  %202 = call i32 @wl1271_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %279

203:                                              ; preds = %190
  br label %204

204:                                              ; preds = %203, %149
  %205 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %206 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %205, i32 0, i32 4
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %204
  %212 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %213 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %264

216:                                              ; preds = %211, %204
  %217 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  store i32 %217, i32* %11, align 4
  %218 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %219 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %220 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %221 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i32, i32* %11, align 4
  %224 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %225 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %224, i32 0, i32 3
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = icmp ne %struct.TYPE_6__* %226, null
  br i1 %227, label %228, label %235

228:                                              ; preds = %216
  %229 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %230 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %229, i32 0, i32 3
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i64 0
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  br label %236

235:                                              ; preds = %216
  br label %236

236:                                              ; preds = %235, %228
  %237 = phi i32* [ %234, %228 ], [ null, %235 ]
  %238 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %239 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %238, i32 0, i32 3
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = icmp ne %struct.TYPE_6__* %240, null
  br i1 %241, label %242, label %249

242:                                              ; preds = %236
  %243 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %244 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %243, i32 0, i32 3
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i64 0
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  br label %250

249:                                              ; preds = %236
  br label %250

250:                                              ; preds = %249, %242
  %251 = phi i32 [ %248, %242 ], [ 0, %249 ]
  %252 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %253 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %256 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @wl12xx_cmd_build_probe_req(%struct.wl1271* %218, %struct.wl12xx_vif* %219, i64 %222, i32 %223, i32* %237, i32 %251, i32 %254, i32 %257, i32* null, i32 0, i32 0)
  store i32 %258, i32* %9, align 4
  %259 = load i32, i32* %9, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %250
  %262 = call i32 @wl1271_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %279

263:                                              ; preds = %250
  br label %264

264:                                              ; preds = %263, %211
  %265 = load i32, i32* @DEBUG_SCAN, align 4
  %266 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %267 = bitcast %struct.wl18xx_cmd_scan_params* %266 to %struct.wlcore_scan_channels*
  %268 = call i32 @wl1271_dump(i32 %265, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.wlcore_scan_channels* %267, i32 128)
  %269 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %270 = load i32, i32* @CMD_SCAN, align 4
  %271 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %272 = bitcast %struct.wl18xx_cmd_scan_params* %271 to %struct.wlcore_scan_channels*
  %273 = call i32 @wl1271_cmd_send(%struct.wl1271* %269, i32 %270, %struct.wlcore_scan_channels* %272, i32 128, i32 0)
  store i32 %273, i32* %9, align 4
  %274 = load i32, i32* %9, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %264
  %277 = call i32 @wl1271_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %279

278:                                              ; preds = %264
  br label %279

279:                                              ; preds = %278, %276, %261, %201, %88, %45, %17
  %280 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %8, align 8
  %281 = call i32 @kfree(%struct.wlcore_scan_channels* %280)
  %282 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %7, align 8
  %283 = bitcast %struct.wl18xx_cmd_scan_params* %282 to %struct.wlcore_scan_channels*
  %284 = call i32 @kfree(%struct.wlcore_scan_channels* %283)
  %285 = load i32, i32* %9, align 4
  ret i32 %285
}

declare dso_local %struct.wlcore_scan_channels* @kzalloc(i32, i32) #1

declare dso_local i64 @wlcore_is_p2p_mgmt(%struct.wl12xx_vif*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wlcore_set_scan_chan_params(%struct.wl1271*, %struct.wlcore_scan_channels*, i32, i32, i32, i32) #1

declare dso_local i32 @wl18xx_adjust_channels(%struct.wlcore_scan_channels*, %struct.wlcore_scan_channels*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @wl12xx_cmd_build_probe_req(%struct.wl1271*, %struct.wl12xx_vif*, i64, i32, i32*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @wl1271_dump(i32, i8*, %struct.wlcore_scan_channels*, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wlcore_scan_channels*, i32, i32) #1

declare dso_local i32 @kfree(%struct.wlcore_scan_channels*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
