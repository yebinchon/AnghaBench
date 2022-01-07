; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl12xx/extr_main.c_wl12xx_identify_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl12xx/extr_main.c_wl12xx_identify_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.wl1271 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i8*, i8*, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"chip id 0x%x (1271 PG10) support is obsolete\00", align 1
@WLCORE_QUIRK_LEGACY_NVS = common dso_local global i32 0, align 4
@WLCORE_QUIRK_DUAL_PROBE_TMPL = common dso_local global i32 0, align 4
@WLCORE_QUIRK_TKIP_HEADER_SPACE = common dso_local global i32 0, align 4
@WLCORE_QUIRK_START_STA_FAILS = common dso_local global i32 0, align 4
@WLCORE_QUIRK_AP_ZERO_SESSION_ID = common dso_local global i32 0, align 4
@WL127X_FW_NAME_SINGLE = common dso_local global i8* null, align 8
@WL127X_FW_NAME_MULTI = common dso_local global i8* null, align 8
@wl12xx_default_priv_conf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@wl127x_prepare_read = common dso_local global i8* null, align 8
@WL127X_CHIP_VER = common dso_local global i32 0, align 4
@WL127X_IFTYPE_SR_VER = common dso_local global i32 0, align 4
@WL127X_MAJOR_SR_VER = common dso_local global i32 0, align 4
@WL127X_SUBTYPE_SR_VER = common dso_local global i32 0, align 4
@WL127X_MINOR_SR_VER = common dso_local global i32 0, align 4
@WL127X_IFTYPE_MR_VER = common dso_local global i32 0, align 4
@WL127X_MAJOR_MR_VER = common dso_local global i32 0, align 4
@WL127X_SUBTYPE_MR_VER = common dso_local global i32 0, align 4
@WL127X_MINOR_MR_VER = common dso_local global i32 0, align 4
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"chip id 0x%x (1271 PG20)\00", align 1
@WL127X_PLT_FW_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"chip id 0x%x (1283 PG20)\00", align 1
@WL128X_PLT_FW_NAME = common dso_local global i32 0, align 4
@WL128X_FW_NAME_SINGLE = common dso_local global i8* null, align 8
@WL128X_FW_NAME_MULTI = common dso_local global i8* null, align 8
@WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN = common dso_local global i32 0, align 4
@WL128X_CHIP_VER = common dso_local global i32 0, align 4
@WL128X_IFTYPE_SR_VER = common dso_local global i32 0, align 4
@WL128X_MAJOR_SR_VER = common dso_local global i32 0, align 4
@WL128X_SUBTYPE_SR_VER = common dso_local global i32 0, align 4
@WL128X_MINOR_SR_VER = common dso_local global i32 0, align 4
@WL128X_IFTYPE_MR_VER = common dso_local global i32 0, align 4
@WL128X_MAJOR_MR_VER = common dso_local global i32 0, align 4
@WL128X_SUBTYPE_MR_VER = common dso_local global i32 0, align 4
@WL128X_MINOR_MR_VER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"unsupported chip id: 0x%x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CMD_TEMPL_APP_PROBE_REQ_2_4_LEGACY = common dso_local global i32 0, align 4
@CMD_TEMPL_APP_PROBE_REQ_5_LEGACY = common dso_local global i32 0, align 4
@CMD_TEMPL_CFG_PROBE_REQ_2_4 = common dso_local global i32 0, align 4
@CMD_TEMPL_CFG_PROBE_REQ_5 = common dso_local global i32 0, align 4
@WL12XX_MAX_CHANNELS_5GHZ = common dso_local global i32 0, align 4
@WL12XX_RX_BA_MAX_SESSIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wl12xx_identify_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_identify_chip(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %5 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %4, i32 0, i32 9
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %143 [
    i32 131, label %8
    i32 130, label %53
    i32 128, label %102
    i32 129, label %142
  ]

8:                                                ; preds = %1
  %9 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %10 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @wl1271_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @WLCORE_QUIRK_LEGACY_NVS, align 4
  %15 = load i32, i32* @WLCORE_QUIRK_DUAL_PROBE_TMPL, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WLCORE_QUIRK_TKIP_HEADER_SPACE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @WLCORE_QUIRK_START_STA_FAILS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @WLCORE_QUIRK_AP_ZERO_SESSION_ID, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i8*, i8** @WL127X_FW_NAME_SINGLE, align 8
  %28 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %29 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %28, i32 0, i32 11
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @WL127X_FW_NAME_MULTI, align 8
  %31 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 10
  store i8* %30, i8** %32, align 8
  %33 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %34 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %33, i32 0, i32 14
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @memcpy(i32* %35, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wl12xx_default_priv_conf, i32 0, i32 0), i32 4)
  %37 = load i8*, i8** @wl127x_prepare_read, align 8
  %38 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %39 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %38, i32 0, i32 13
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i8* %37, i8** %41, align 8
  %42 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %43 = load i32, i32* @WL127X_CHIP_VER, align 4
  %44 = load i32, i32* @WL127X_IFTYPE_SR_VER, align 4
  %45 = load i32, i32* @WL127X_MAJOR_SR_VER, align 4
  %46 = load i32, i32* @WL127X_SUBTYPE_SR_VER, align 4
  %47 = load i32, i32* @WL127X_MINOR_SR_VER, align 4
  %48 = load i32, i32* @WL127X_IFTYPE_MR_VER, align 4
  %49 = load i32, i32* @WL127X_MAJOR_MR_VER, align 4
  %50 = load i32, i32* @WL127X_SUBTYPE_MR_VER, align 4
  %51 = load i32, i32* @WL127X_MINOR_MR_VER, align 4
  %52 = call i32 @wlcore_set_min_fw_ver(%struct.wl1271* %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  br label %151

53:                                               ; preds = %1
  %54 = load i32, i32* @DEBUG_BOOT, align 4
  %55 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %56 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %55, i32 0, i32 9
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @wl1271_debug(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @WLCORE_QUIRK_LEGACY_NVS, align 4
  %61 = load i32, i32* @WLCORE_QUIRK_DUAL_PROBE_TMPL, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @WLCORE_QUIRK_TKIP_HEADER_SPACE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @WLCORE_QUIRK_START_STA_FAILS, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @WLCORE_QUIRK_AP_ZERO_SESSION_ID, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %70 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* @WL127X_PLT_FW_NAME, align 4
  %74 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %75 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %74, i32 0, i32 12
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** @WL127X_FW_NAME_SINGLE, align 8
  %77 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %78 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %77, i32 0, i32 11
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @WL127X_FW_NAME_MULTI, align 8
  %80 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %81 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %80, i32 0, i32 10
  store i8* %79, i8** %81, align 8
  %82 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %83 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %82, i32 0, i32 14
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @memcpy(i32* %84, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wl12xx_default_priv_conf, i32 0, i32 0), i32 4)
  %86 = load i8*, i8** @wl127x_prepare_read, align 8
  %87 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %88 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %87, i32 0, i32 13
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i8* %86, i8** %90, align 8
  %91 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %92 = load i32, i32* @WL127X_CHIP_VER, align 4
  %93 = load i32, i32* @WL127X_IFTYPE_SR_VER, align 4
  %94 = load i32, i32* @WL127X_MAJOR_SR_VER, align 4
  %95 = load i32, i32* @WL127X_SUBTYPE_SR_VER, align 4
  %96 = load i32, i32* @WL127X_MINOR_SR_VER, align 4
  %97 = load i32, i32* @WL127X_IFTYPE_MR_VER, align 4
  %98 = load i32, i32* @WL127X_MAJOR_MR_VER, align 4
  %99 = load i32, i32* @WL127X_SUBTYPE_MR_VER, align 4
  %100 = load i32, i32* @WL127X_MINOR_MR_VER, align 4
  %101 = call i32 @wlcore_set_min_fw_ver(%struct.wl1271* %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  br label %151

102:                                              ; preds = %1
  %103 = load i32, i32* @DEBUG_BOOT, align 4
  %104 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %105 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %104, i32 0, i32 9
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @wl1271_debug(i32 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @WL128X_PLT_FW_NAME, align 4
  %110 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %111 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %110, i32 0, i32 12
  store i32 %109, i32* %111, align 8
  %112 = load i8*, i8** @WL128X_FW_NAME_SINGLE, align 8
  %113 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %114 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %113, i32 0, i32 11
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** @WL128X_FW_NAME_MULTI, align 8
  %116 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %117 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %116, i32 0, i32 10
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* @WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN, align 4
  %119 = load i32, i32* @WLCORE_QUIRK_DUAL_PROBE_TMPL, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @WLCORE_QUIRK_TKIP_HEADER_SPACE, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @WLCORE_QUIRK_START_STA_FAILS, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @WLCORE_QUIRK_AP_ZERO_SESSION_ID, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %128 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %132 = load i32, i32* @WL128X_CHIP_VER, align 4
  %133 = load i32, i32* @WL128X_IFTYPE_SR_VER, align 4
  %134 = load i32, i32* @WL128X_MAJOR_SR_VER, align 4
  %135 = load i32, i32* @WL128X_SUBTYPE_SR_VER, align 4
  %136 = load i32, i32* @WL128X_MINOR_SR_VER, align 4
  %137 = load i32, i32* @WL128X_IFTYPE_MR_VER, align 4
  %138 = load i32, i32* @WL128X_MAJOR_MR_VER, align 4
  %139 = load i32, i32* @WL128X_SUBTYPE_MR_VER, align 4
  %140 = load i32, i32* @WL128X_MINOR_MR_VER, align 4
  %141 = call i32 @wlcore_set_min_fw_ver(%struct.wl1271* %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  br label %151

142:                                              ; preds = %1
  br label %143

143:                                              ; preds = %1, %142
  %144 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %145 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @wl1271_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @ENODEV, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %174

151:                                              ; preds = %102, %53, %8
  %152 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %153 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %152, i32 0, i32 1
  store i32 256, i32* %153, align 4
  %154 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %155 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %154, i32 0, i32 2
  store i32 33554432, i32* %155, align 8
  %156 = load i32, i32* @CMD_TEMPL_APP_PROBE_REQ_2_4_LEGACY, align 4
  %157 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %158 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %157, i32 0, i32 8
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* @CMD_TEMPL_APP_PROBE_REQ_5_LEGACY, align 4
  %160 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %161 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %160, i32 0, i32 7
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @CMD_TEMPL_CFG_PROBE_REQ_2_4, align 4
  %163 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %164 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* @CMD_TEMPL_CFG_PROBE_REQ_5, align 4
  %166 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %167 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %166, i32 0, i32 5
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @WL12XX_MAX_CHANNELS_5GHZ, align 4
  %169 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %170 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* @WL12XX_RX_BA_MAX_SESSIONS, align 4
  %172 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %173 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %151, %143
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wlcore_set_min_fw_ver(%struct.wl1271*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
