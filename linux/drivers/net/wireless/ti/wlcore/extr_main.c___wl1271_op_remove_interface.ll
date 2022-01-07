; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c___wl1271_op_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c___wl1271_op_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_info = type { i32 }
%struct.wl1271 = type { i64, i64, i32, %struct.TYPE_10__, i64, i32, i32, i32, %struct.wl12xx_vif*, i32, i32, %struct.ieee80211_vif*, %struct.wl12xx_vif*, %struct.TYPE_6__, %struct.wl12xx_vif* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32*, i32 }
%struct.wl12xx_vif = type { i64, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_8__, i32, i32*, %struct.TYPE_7__, i8*, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32, i32, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i8* }
%struct.ieee80211_vif = type { i32 }

@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"mac80211 remove interface\00", align 1
@WLVIF_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@WLCORE_STATE_OFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@WL1271_SCAN_STATE_IDLE = common dso_local global i64 0, align 8
@__const.__wl1271_op_remove_interface.info = private unnamed_addr constant %struct.cfg80211_scan_info { i32 1 }, align 4
@WL1271_FLAG_RECOVERY_IN_PROGRESS = common dso_local global i32 0, align 4
@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@BSS_TYPE_IBSS = common dso_local global i64 0, align 8
@WL12XX_INVALID_LINK_ID = common dso_local global i8* null, align 8
@CONF_TX_MAX_AC_COUNT = common dso_local global i32 0, align 4
@WL12XX_INVALID_ROLE_ID = common dso_local global i8* null, align 8
@WL1271_FLAG_INTENDED_FW_RECOVERY = common dso_local global i32 0, align 4
@WL1271_PSM_ILLEGAL = common dso_local global i64 0, align 8
@WL1271_PSM_ELP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.ieee80211_vif*, i32)* @__wl1271_op_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wl1271_op_remove_interface(%struct.wl1271* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl12xx_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cfg80211_scan_info, align 4
  %12 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %13)
  store %struct.wl12xx_vif* %14, %struct.wl12xx_vif** %7, align 8
  %15 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %16 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @DEBUG_MAC80211, align 4
  %22 = call i32 @wl1271_debug(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @WLVIF_FLAG_INITIALIZED, align 4
  %24 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %25 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %24, i32 0, i32 15
  %26 = call i32 @test_and_clear_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %382

29:                                               ; preds = %3
  %30 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @WLCORE_STATE_OFF, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %382

36:                                               ; preds = %29
  %37 = call i32 @wl1271_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %39 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %38, i32 0, i32 13
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @WL1271_SCAN_STATE_IDLE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %36
  %45 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %46 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %45, i32 0, i32 14
  %47 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %46, align 8
  %48 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %49 = icmp eq %struct.wl12xx_vif* %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %44
  %51 = bitcast %struct.cfg80211_scan_info* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 bitcast (%struct.cfg80211_scan_info* @__const.__wl1271_op_remove_interface.info to i8*), i64 4, i1 false)
  %52 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %53 = call i32 @wl12xx_rearm_tx_watchdog_locked(%struct.wl1271* %52)
  %54 = load i64, i64* @WL1271_SCAN_STATE_IDLE, align 8
  %55 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %56 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %55, i32 0, i32 13
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %59 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %58, i32 0, i32 13
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memset(i32 %61, i32 0, i32 4)
  %63 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %64 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %63, i32 0, i32 14
  store %struct.wl12xx_vif* null, %struct.wl12xx_vif** %64, align 8
  %65 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %66 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %65, i32 0, i32 13
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32* null, i32** %67, align 8
  %68 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %69 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ieee80211_scan_completed(i32 %70, %struct.cfg80211_scan_info* %11)
  br label %72

72:                                               ; preds = %50, %44, %36
  %73 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %74 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %73, i32 0, i32 12
  %75 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %74, align 8
  %76 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %77 = icmp eq %struct.wl12xx_vif* %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %80 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %79, i32 0, i32 12
  store %struct.wl12xx_vif* null, %struct.wl12xx_vif** %80, align 8
  br label %81

81:                                               ; preds = %78, %72
  %82 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %83 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %82, i32 0, i32 11
  %84 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %83, align 8
  %85 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %86 = icmp eq %struct.ieee80211_vif* %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %89 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %88, i32 0, i32 11
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %89, align 8
  %90 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %91 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ieee80211_remain_on_channel_expired(i32 %92)
  br label %94

94:                                               ; preds = %87, %81
  %95 = load i32, i32* @WL1271_FLAG_RECOVERY_IN_PROGRESS, align 4
  %96 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %97 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %96, i32 0, i32 7
  %98 = call i64 @test_bit(i32 %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %164, label %100

100:                                              ; preds = %94
  %101 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %102 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @pm_runtime_get_sync(i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %109 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @pm_runtime_put_noidle(i32 %110)
  br label %165

112:                                              ; preds = %100
  %113 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %114 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %120 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @BSS_TYPE_IBSS, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %118, %112
  %125 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %126 = call i64 @wl12xx_dev_role_started(%struct.wl12xx_vif* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %130 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %131 = call i32 @wl12xx_stop_dev(%struct.wl1271* %129, %struct.wl12xx_vif* %130)
  br label %132

132:                                              ; preds = %128, %124
  br label %133

133:                                              ; preds = %132, %118
  %134 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %135 = call i32 @wlcore_is_p2p_mgmt(%struct.wl12xx_vif* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %133
  %138 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %139 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %140 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %139, i32 0, i32 9
  %141 = call i32 @wl12xx_cmd_role_disable(%struct.wl1271* %138, i8** %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %165

145:                                              ; preds = %137
  br label %155

146:                                              ; preds = %133
  %147 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %148 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %149 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %148, i32 0, i32 8
  %150 = call i32 @wl12xx_cmd_role_disable(%struct.wl1271* %147, i8** %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %165

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %145
  %156 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %157 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @pm_runtime_mark_last_busy(i32 %158)
  %160 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %161 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @pm_runtime_put_autosuspend(i32 %162)
  br label %164

164:                                              ; preds = %155, %94
  br label %165

165:                                              ; preds = %164, %153, %144, %107
  %166 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %167 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %168 = call i32 @wl12xx_tx_reset_wlvif(%struct.wl1271* %166, %struct.wl12xx_vif* %167)
  %169 = load i8*, i8** @WL12XX_INVALID_LINK_ID, align 8
  %170 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %171 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %170, i32 0, i32 14
  store i8* %169, i8** %171, align 8
  %172 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %173 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %183, label %177

177:                                              ; preds = %165
  %178 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %179 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @BSS_TYPE_IBSS, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %208

183:                                              ; preds = %177, %165
  %184 = load i8*, i8** @WL12XX_INVALID_LINK_ID, align 8
  %185 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %186 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %185, i32 0, i32 13
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 4
  store i8* %184, i8** %187, align 8
  %188 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %189 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %190 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %189, i32 0, i32 13
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 3
  %192 = call i32 @wl12xx_free_rate_policy(%struct.wl1271* %188, i32* %191)
  %193 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %194 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %195 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %194, i32 0, i32 13
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 2
  %197 = call i32 @wl12xx_free_rate_policy(%struct.wl1271* %193, i32* %196)
  %198 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %199 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %200 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %199, i32 0, i32 13
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = call i32 @wl12xx_free_rate_policy(%struct.wl1271* %198, i32* %201)
  %203 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %204 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %205 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %204, i32 0, i32 13
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = call i32 @wlcore_free_klv_template(%struct.wl1271* %203, i32* %206)
  br label %248

208:                                              ; preds = %177
  %209 = load i8*, i8** @WL12XX_INVALID_LINK_ID, align 8
  %210 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %211 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %210, i32 0, i32 10
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 5
  store i8* %209, i8** %212, align 8
  %213 = load i8*, i8** @WL12XX_INVALID_LINK_ID, align 8
  %214 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %215 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %214, i32 0, i32 10
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 4
  store i8* %213, i8** %216, align 8
  %217 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %218 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %219 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %218, i32 0, i32 10
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 3
  %221 = call i32 @wl12xx_free_rate_policy(%struct.wl1271* %217, i32* %220)
  %222 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %223 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %224 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %223, i32 0, i32 10
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 2
  %226 = call i32 @wl12xx_free_rate_policy(%struct.wl1271* %222, i32* %225)
  store i32 0, i32* %8, align 4
  br label %227

227:                                              ; preds = %241, %208
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* @CONF_TX_MAX_AC_COUNT, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %244

231:                                              ; preds = %227
  %232 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %233 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %234 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %233, i32 0, i32 10
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = call i32 @wl12xx_free_rate_policy(%struct.wl1271* %232, i32* %239)
  br label %241

241:                                              ; preds = %231
  %242 = load i32, i32* %8, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %8, align 4
  br label %227

244:                                              ; preds = %227
  %245 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %246 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %247 = call i32 @wl1271_free_ap_keys(%struct.wl1271* %245, %struct.wl12xx_vif* %246)
  br label %248

248:                                              ; preds = %244, %183
  %249 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %250 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %249, i32 0, i32 12
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @dev_kfree_skb(i32* %251)
  %253 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %254 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %253, i32 0, i32 12
  store i32* null, i32** %254, align 8
  %255 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %256 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %255, i32 0, i32 8
  %257 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %256, align 8
  %258 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %259 = icmp eq %struct.wl12xx_vif* %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %248
  %261 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %262 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %261, i32 0, i32 8
  store %struct.wl12xx_vif* null, %struct.wl12xx_vif** %262, align 8
  br label %263

263:                                              ; preds = %260, %248
  %264 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %265 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %264, i32 0, i32 11
  %266 = call i32 @list_del(i32* %265)
  %267 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %268 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %267, i32 0, i32 10
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @memset(i32 %270, i32 0, i32 4)
  %272 = load i8*, i8** @WL12XX_INVALID_ROLE_ID, align 8
  %273 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %274 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %273, i32 0, i32 9
  store i8* %272, i8** %274, align 8
  %275 = load i8*, i8** @WL12XX_INVALID_ROLE_ID, align 8
  %276 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %277 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %276, i32 0, i32 8
  store i8* %275, i8** %277, align 8
  %278 = load i32, i32* %10, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %263
  %281 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %282 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %283, -1
  store i64 %284, i64* %282, align 8
  br label %290

285:                                              ; preds = %263
  %286 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %287 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %286, i32 0, i32 4
  %288 = load i64, i64* %287, align 8
  %289 = add nsw i64 %288, -1
  store i64 %289, i64* %287, align 8
  br label %290

290:                                              ; preds = %285, %280
  %291 = load i32, i32* @WL1271_FLAG_RECOVERY_IN_PROGRESS, align 4
  %292 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %293 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %292, i32 0, i32 7
  %294 = call i64 @test_bit(i32 %291, i32* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %290
  %297 = load i32, i32* @WL1271_FLAG_INTENDED_FW_RECOVERY, align 4
  %298 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %299 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %298, i32 0, i32 7
  %300 = call i64 @test_bit(i32 %297, i32* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %303, label %302

302:                                              ; preds = %296
  br label %354

303:                                              ; preds = %296, %290
  %304 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %305 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %322

308:                                              ; preds = %303
  %309 = load i32, i32* %10, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %322

311:                                              ; preds = %308
  %312 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %313 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 8
  %315 = xor i32 %314, -1
  %316 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %317 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %316, i32 0, i32 6
  %318 = load i32, i32* %317, align 4
  %319 = and i32 %318, %315
  store i32 %319, i32* %317, align 4
  %320 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %321 = call i32 @wl1271_event_unmask(%struct.wl1271* %320)
  br label %322

322:                                              ; preds = %311, %308, %303
  %323 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %324 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %353

327:                                              ; preds = %322
  %328 = load i32, i32* %10, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %353

330:                                              ; preds = %327
  %331 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %332 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %331, i32 0, i32 4
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %353

335:                                              ; preds = %330
  %336 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %337 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %336, i32 0, i32 3
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %12, align 8
  %341 = load i64, i64* %12, align 8
  %342 = load i64, i64* @WL1271_PSM_ILLEGAL, align 8
  %343 = icmp ne i64 %341, %342
  br i1 %343, label %344, label %348

344:                                              ; preds = %335
  %345 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %346 = load i64, i64* %12, align 8
  %347 = call i32 @wl1271_acx_sleep_auth(%struct.wl1271* %345, i64 %346)
  br label %352

348:                                              ; preds = %335
  %349 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %350 = load i64, i64* @WL1271_PSM_ELP, align 8
  %351 = call i32 @wl1271_acx_sleep_auth(%struct.wl1271* %349, i64 %350)
  br label %352

352:                                              ; preds = %348, %344
  br label %353

353:                                              ; preds = %352, %330, %327, %322
  br label %354

354:                                              ; preds = %353, %302
  %355 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %356 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %355, i32 0, i32 2
  %357 = call i32 @mutex_unlock(i32* %356)
  %358 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %359 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %358, i32 0, i32 7
  %360 = call i32 @del_timer_sync(i32* %359)
  %361 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %362 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %361, i32 0, i32 6
  %363 = call i32 @cancel_work_sync(i32* %362)
  %364 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %365 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %364, i32 0, i32 5
  %366 = call i32 @cancel_work_sync(i32* %365)
  %367 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %368 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %367, i32 0, i32 4
  %369 = call i32 @cancel_work_sync(i32* %368)
  %370 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %371 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %370, i32 0, i32 3
  %372 = call i32 @cancel_delayed_work_sync(i32* %371)
  %373 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %374 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %373, i32 0, i32 2
  %375 = call i32 @cancel_delayed_work_sync(i32* %374)
  %376 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %377 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %376, i32 0, i32 1
  %378 = call i32 @cancel_delayed_work_sync(i32* %377)
  %379 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %380 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %379, i32 0, i32 2
  %381 = call i32 @mutex_lock(i32* %380)
  br label %382

382:                                              ; preds = %354, %35, %28
  ret void
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wl1271_info(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wl12xx_rearm_tx_watchdog_locked(%struct.wl1271*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ieee80211_scan_completed(i32, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @ieee80211_remain_on_channel_expired(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i64 @wl12xx_dev_role_started(%struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_stop_dev(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wlcore_is_p2p_mgmt(%struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_cmd_role_disable(%struct.wl1271*, i8**) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @wl12xx_tx_reset_wlvif(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_free_rate_policy(%struct.wl1271*, i32*) #1

declare dso_local i32 @wlcore_free_klv_template(%struct.wl1271*, i32*) #1

declare dso_local i32 @wl1271_free_ap_keys(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @wl1271_event_unmask(%struct.wl1271*) #1

declare dso_local i32 @wl1271_acx_sleep_auth(%struct.wl1271*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
