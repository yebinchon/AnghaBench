; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_start_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32*, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.wl12xx_vif = type { i32, i32, i32, %struct.TYPE_10__, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.wl12xx_cmd_role_start = type { i32, i8*, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i8*, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct.ieee80211_vif = type { %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i64, i32, i32, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cmd role start ap %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"got a null SSID from beacon/bss\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WL1271_AP_BSS_INDEX = common dso_local global i32 0, align 4
@WL1271_AP_DEF_BEACON_EXP = common dso_local global i32 0, align 4
@WL12XX_SSID_TYPE_PUBLIC = common dso_local global i32 0, align 4
@WL12XX_SSID_TYPE_HIDDEN = common dso_local global i32 0, align 4
@CONF_TX_ENABLED_RATES = common dso_local global i32 0, align 4
@CONF_TX_MCS_RATES = common dso_local global i32 0, align 4
@CONF_TX_CCK_RATES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"cmd role start ap with supported_rates 0x%08x\00", align 1
@WLCORE_BAND_2_4GHZ = common dso_local global i8* null, align 8
@WLCORE_BAND_5GHZ = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"ap start - unknown band: %d\00", align 1
@CMD_ROLE_START = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to initiate cmd role start ap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_role_start_ap(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca %struct.wl12xx_cmd_role_start*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  %10 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %11 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %10)
  store %struct.ieee80211_vif* %11, %struct.ieee80211_vif** %6, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 0
  store %struct.ieee80211_bss_conf* %13, %struct.ieee80211_bss_conf** %7, align 8
  %14 = load i32, i32* @DEBUG_CMD, align 4
  %15 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %16 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @wl1271_debug(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %20 = call i32 @ieee80211_vif_is_mesh(%struct.ieee80211_vif* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %2
  %23 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %24 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = call i32 @wl1271_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %298

36:                                               ; preds = %27, %22
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.wl12xx_cmd_role_start* @kzalloc(i32 128, i32 %38)
  store %struct.wl12xx_cmd_role_start* %39, %struct.wl12xx_cmd_role_start** %5, align 8
  %40 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %41 = icmp ne %struct.wl12xx_cmd_role_start* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %298

45:                                               ; preds = %37
  %46 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %47 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %48 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %49 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = call i32 @wl12xx_allocate_link(%struct.wl1271* %46, %struct.wl12xx_vif* %47, i64* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %295

55:                                               ; preds = %45
  %56 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %57 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %58 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %59 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = call i32 @wl12xx_allocate_link(%struct.wl1271* %56, %struct.wl12xx_vif* %57, i64* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %288

65:                                               ; preds = %55
  %66 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %67 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %66, i32 0, i32 11
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %70 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %73 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %68, i32* %77, align 4
  %78 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %79 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %82 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %84 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @cpu_to_le16(i32 %87)
  %89 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %90 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 15
  store i8* %88, i8** %91, align 8
  %92 = load i32, i32* @WL1271_AP_BSS_INDEX, align 4
  %93 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %94 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 14
  store i32 %92, i32* %95, align 8
  %96 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %97 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %101 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  %103 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %104 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %108 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  store i64 %106, i64* %109, align 8
  %110 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %111 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %114 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %120 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 13
  store i32 %118, i32* %121, align 4
  %122 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %123 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %126 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %132 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 12
  store i32 %130, i32* %133, align 8
  %134 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %135 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @cpu_to_le32(i32 %136)
  %138 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %139 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 11
  store i8* %137, i8** %140, align 8
  %141 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %142 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @cpu_to_le16(i32 %143)
  %145 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %146 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 10
  store i8* %144, i8** %147, align 8
  %148 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %149 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %152 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 9
  store i32 %150, i32* %153, align 4
  %154 = load i32, i32* @WL1271_AP_DEF_BEACON_EXP, align 4
  %155 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %156 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 8
  store i32 %154, i32* %157, align 8
  %158 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %159 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 2
  store i32 1, i32* %160, align 8
  %161 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %162 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %165 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 7
  store i32 %163, i32* %166, align 4
  %167 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %168 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %171 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 4
  %172 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %173 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @wlcore_get_native_channel_type(i32 %174)
  %176 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %177 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 8
  %178 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %179 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %204, label %182

182:                                              ; preds = %65
  %183 = load i32, i32* @WL12XX_SSID_TYPE_PUBLIC, align 4
  %184 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %185 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 6
  store i32 %183, i32* %186, align 8
  %187 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %188 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %191 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 5
  store i64 %189, i64* %192, align 8
  %193 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %194 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %198 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %201 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @memcpy(i32 %196, i32 %199, i64 %202)
  br label %226

204:                                              ; preds = %65
  %205 = load i32, i32* @WL12XX_SSID_TYPE_HIDDEN, align 4
  %206 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %207 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 6
  store i32 %205, i32* %208, align 8
  %209 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %210 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %213 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 5
  store i64 %211, i64* %214, align 8
  %215 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %216 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %220 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %223 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @memcpy(i32 %218, i32 %221, i64 %224)
  br label %226

226:                                              ; preds = %204, %182
  %227 = load i32, i32* @CONF_TX_ENABLED_RATES, align 4
  %228 = load i32, i32* @CONF_TX_MCS_RATES, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %231 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %232 = call i32 @wlcore_hw_ap_get_mimo_wide_rate_mask(%struct.wl1271* %230, %struct.wl12xx_vif* %231)
  %233 = or i32 %229, %232
  store i32 %233, i32* %8, align 4
  %234 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %235 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %226
  %239 = load i32, i32* @CONF_TX_CCK_RATES, align 4
  %240 = xor i32 %239, -1
  %241 = load i32, i32* %8, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* %8, align 4
  br label %243

243:                                              ; preds = %238, %226
  %244 = load i32, i32* @DEBUG_CMD, align 4
  %245 = load i32, i32* %8, align 4
  %246 = call i32 @wl1271_debug(i32 %244, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %245)
  %247 = load i32, i32* %8, align 4
  %248 = call i8* @cpu_to_le32(i32 %247)
  %249 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %250 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 3
  store i8* %248, i8** %251, align 8
  %252 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %253 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  switch i32 %254, label %263 [
    i32 129, label %255
    i32 128, label %259
  ]

255:                                              ; preds = %243
  %256 = load i8*, i8** @WLCORE_BAND_2_4GHZ, align 8
  %257 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %258 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %257, i32 0, i32 1
  store i8* %256, i8** %258, align 8
  br label %271

259:                                              ; preds = %243
  %260 = load i8*, i8** @WLCORE_BAND_5GHZ, align 8
  %261 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %262 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %261, i32 0, i32 1
  store i8* %260, i8** %262, align 8
  br label %271

263:                                              ; preds = %243
  %264 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %265 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @wl1271_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %266)
  %268 = load i8*, i8** @WLCORE_BAND_2_4GHZ, align 8
  %269 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %270 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %269, i32 0, i32 1
  store i8* %268, i8** %270, align 8
  br label %271

271:                                              ; preds = %263, %259, %255
  %272 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %273 = load i32, i32* @CMD_ROLE_START, align 4
  %274 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %275 = call i32 @wl1271_cmd_send(%struct.wl1271* %272, i32 %273, %struct.wl12xx_cmd_role_start* %274, i32 128, i32 0)
  store i32 %275, i32* %9, align 4
  %276 = load i32, i32* %9, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %271
  %279 = call i32 @wl1271_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %281

280:                                              ; preds = %271
  br label %295

281:                                              ; preds = %278
  %282 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %283 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %284 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %285 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 1
  %287 = call i32 @wl12xx_free_link(%struct.wl1271* %282, %struct.wl12xx_vif* %283, i64* %286)
  br label %288

288:                                              ; preds = %281, %64
  %289 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %290 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %291 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %292 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 0
  %294 = call i32 @wl12xx_free_link(%struct.wl1271* %289, %struct.wl12xx_vif* %290, i64* %293)
  br label %295

295:                                              ; preds = %288, %280, %54
  %296 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %297 = call i32 @kfree(%struct.wl12xx_cmd_role_start* %296)
  br label %298

298:                                              ; preds = %295, %42, %32
  %299 = load i32, i32* %9, align 4
  ret i32 %299
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @ieee80211_vif_is_mesh(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local %struct.wl12xx_cmd_role_start* @kzalloc(i32, i32) #1

declare dso_local i32 @wl12xx_allocate_link(%struct.wl1271*, %struct.wl12xx_vif*, i64*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wlcore_get_native_channel_type(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @wlcore_hw_ap_get_mimo_wide_rate_mask(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_role_start*, i32, i32) #1

declare dso_local i32 @wl12xx_free_link(%struct.wl1271*, %struct.wl12xx_vif*, i64*) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_role_start*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
