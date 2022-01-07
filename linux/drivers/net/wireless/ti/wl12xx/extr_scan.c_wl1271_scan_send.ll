; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl1271_scan_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl1271_scan_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.wl12xx_vif = type { i64, i64 }
%struct.ieee80211_vif = type { i32 }
%struct.wl1271_cmd_scan = type { i8*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.wl1271_cmd_trigger_scan_to = type { i8*, %struct.TYPE_6__, i32, i32 }

@WL1271_NOTHING_TO_SCAN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WL1271_SCAN_OPT_SPLIT_SCAN = common dso_local global i32 0, align 4
@WL1271_SCAN_OPT_PASSIVE = common dso_local global i32 0, align 4
@WL12XX_INVALID_ROLE_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CONF_TX_AC_ANY_TID = common dso_local global i32 0, align 4
@WL1271_SCAN_DEFAULT_TAG = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@WL1271_SCAN_BAND_2_4_GHZ = common dso_local global i32 0, align 4
@WL1271_SCAN_BAND_5_GHZ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"PROBE request template failed\00", align 1
@CMD_TRIGGER_SCAN_TO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"trigger scan to failed for hw scan\00", align 1
@DEBUG_SCAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"SCAN: \00", align 1
@CMD_SCAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"SCAN failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i64)* @wl1271_scan_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_scan_send(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ieee80211_vif*, align 8
  %13 = alloca %struct.wl1271_cmd_scan*, align 8
  %14 = alloca %struct.wl1271_cmd_trigger_scan_to*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %18 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %17)
  store %struct.ieee80211_vif* %18, %struct.ieee80211_vif** %12, align 8
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %5
  %22 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @WL1271_NOTHING_TO_SCAN, align 4
  store i32 %30, i32* %6, align 4
  br label %263

31:                                               ; preds = %21, %5
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.wl1271_cmd_trigger_scan_to* @kzalloc(i32 72, i32 %32)
  %34 = bitcast %struct.wl1271_cmd_trigger_scan_to* %33 to %struct.wl1271_cmd_scan*
  store %struct.wl1271_cmd_scan* %34, %struct.wl1271_cmd_scan** %13, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.wl1271_cmd_trigger_scan_to* @kzalloc(i32 72, i32 %35)
  store %struct.wl1271_cmd_trigger_scan_to* %36, %struct.wl1271_cmd_trigger_scan_to** %14, align 8
  %37 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %38 = icmp ne %struct.wl1271_cmd_scan* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.wl1271_cmd_trigger_scan_to*, %struct.wl1271_cmd_trigger_scan_to** %14, align 8
  %41 = icmp ne %struct.wl1271_cmd_trigger_scan_to* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39, %31
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %15, align 4
  br label %256

45:                                               ; preds = %39
  %46 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @WL1271_SCAN_OPT_SPLIT_SCAN, align 4
  %54 = load i32, i32* %16, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* @WL1271_SCAN_OPT_PASSIVE, align 4
  %61 = load i32, i32* %16, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %59, %56
  %64 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %65 = call i64 @wlcore_is_p2p_mgmt(%struct.wl12xx_vif* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %69 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %72 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  br label %81

74:                                               ; preds = %63
  %75 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %76 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %79 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  br label %81

81:                                               ; preds = %74, %67
  %82 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %83 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @WL12XX_INVALID_ROLE_ID, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @WARN_ON(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %15, align 4
  br label %256

94:                                               ; preds = %81
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @cpu_to_le16(i32 %95)
  %97 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %98 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 9
  store i32 %96, i32* %99, align 8
  %100 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %101 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %102 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %106 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i64 @wl1271_get_scan_channels(%struct.wl1271* %100, %struct.TYPE_10__* %104, i32 %107, i32 %108, i32 %109)
  %111 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %112 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  store i64 %110, i64* %113, align 8
  %114 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %115 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %94
  %120 = load i32, i32* @WL1271_NOTHING_TO_SCAN, align 4
  store i32 %120, i32* %15, align 4
  br label %256

121:                                              ; preds = %94
  %122 = load i64, i64* %11, align 8
  %123 = call i8* @cpu_to_le32(i64 %122)
  %124 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %125 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 8
  store i8* %123, i8** %126, align 8
  %127 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %128 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %133 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 7
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* @CONF_TX_AC_ANY_TID, align 4
  %136 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %137 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 6
  store i32 %135, i32* %138, align 8
  %139 = load i32, i32* @WL1271_SCAN_DEFAULT_TAG, align 4
  %140 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %141 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 5
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %121
  %147 = load i32, i32* @WL1271_SCAN_BAND_2_4_GHZ, align 4
  %148 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %149 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 4
  store i32 %147, i32* %150, align 8
  br label %156

151:                                              ; preds = %121
  %152 = load i32, i32* @WL1271_SCAN_BAND_5_GHZ, align 4
  %153 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %154 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 4
  store i32 %152, i32* %155, align 8
  br label %156

156:                                              ; preds = %151, %146
  %157 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %158 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %183

162:                                              ; preds = %156
  %163 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %164 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %168 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  store i32 %166, i32* %169, align 4
  %170 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %171 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %175 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %179 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @memcpy(i32 %173, i32 %177, i32 %181)
  br label %183

183:                                              ; preds = %162, %156
  %184 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %185 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %12, align 8
  %188 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @ETH_ALEN, align 4
  %191 = call i32 @memcpy(i32 %186, i32 %189, i32 %190)
  %192 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %193 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %194 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %195 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %200 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %204 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %208 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %214 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @wl12xx_cmd_build_probe_req(%struct.wl1271* %192, %struct.wl12xx_vif* %193, i64 %197, i32 %198, i32 %202, i32 %206, i32 %212, i32 %218, i32* null, i32 0, i32 0)
  store i32 %219, i32* %15, align 4
  %220 = load i32, i32* %15, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %183
  %223 = call i32 @wl1271_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %256

224:                                              ; preds = %183
  %225 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %226 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = call i8* @cpu_to_le32(i64 %229)
  %231 = load %struct.wl1271_cmd_trigger_scan_to*, %struct.wl1271_cmd_trigger_scan_to** %14, align 8
  %232 = getelementptr inbounds %struct.wl1271_cmd_trigger_scan_to, %struct.wl1271_cmd_trigger_scan_to* %231, i32 0, i32 0
  store i8* %230, i8** %232, align 8
  %233 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %234 = load i32, i32* @CMD_TRIGGER_SCAN_TO, align 4
  %235 = load %struct.wl1271_cmd_trigger_scan_to*, %struct.wl1271_cmd_trigger_scan_to** %14, align 8
  %236 = call i32 @wl1271_cmd_send(%struct.wl1271* %233, i32 %234, %struct.wl1271_cmd_trigger_scan_to* %235, i32 72, i32 0)
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* %15, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %224
  %240 = call i32 @wl1271_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %256

241:                                              ; preds = %224
  %242 = load i32, i32* @DEBUG_SCAN, align 4
  %243 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %244 = bitcast %struct.wl1271_cmd_scan* %243 to %struct.wl1271_cmd_trigger_scan_to*
  %245 = call i32 @wl1271_dump(i32 %242, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.wl1271_cmd_trigger_scan_to* %244, i32 72)
  %246 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %247 = load i32, i32* @CMD_SCAN, align 4
  %248 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %249 = bitcast %struct.wl1271_cmd_scan* %248 to %struct.wl1271_cmd_trigger_scan_to*
  %250 = call i32 @wl1271_cmd_send(%struct.wl1271* %246, i32 %247, %struct.wl1271_cmd_trigger_scan_to* %249, i32 72, i32 0)
  store i32 %250, i32* %15, align 4
  %251 = load i32, i32* %15, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %241
  %254 = call i32 @wl1271_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %256

255:                                              ; preds = %241
  br label %256

256:                                              ; preds = %255, %253, %239, %222, %119, %91, %42
  %257 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %258 = bitcast %struct.wl1271_cmd_scan* %257 to %struct.wl1271_cmd_trigger_scan_to*
  %259 = call i32 @kfree(%struct.wl1271_cmd_trigger_scan_to* %258)
  %260 = load %struct.wl1271_cmd_trigger_scan_to*, %struct.wl1271_cmd_trigger_scan_to** %14, align 8
  %261 = call i32 @kfree(%struct.wl1271_cmd_trigger_scan_to* %260)
  %262 = load i32, i32* %15, align 4
  store i32 %262, i32* %6, align 4
  br label %263

263:                                              ; preds = %256, %29
  %264 = load i32, i32* %6, align 4
  ret i32 %264
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local %struct.wl1271_cmd_trigger_scan_to* @kzalloc(i32, i32) #1

declare dso_local i64 @wlcore_is_p2p_mgmt(%struct.wl12xx_vif*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @wl1271_get_scan_channels(%struct.wl1271*, %struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wl12xx_cmd_build_probe_req(%struct.wl1271*, %struct.wl12xx_vif*, i64, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl1271_cmd_trigger_scan_to*, i32, i32) #1

declare dso_local i32 @wl1271_dump(i32, i8*, %struct.wl1271_cmd_trigger_scan_to*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_cmd_trigger_scan_to*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
