; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_event.c_wl18xx_process_mailbox_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_event.c_wl18xx_process_mailbox_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__*, i32, i32, i64, %struct.wl18xx_event_mailbox* }
%struct.TYPE_4__ = type { i64*, i32, %struct.wl12xx_vif* }
%struct.wl12xx_vif = type { i64 }
%struct.wl18xx_event_mailbox = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.ieee80211_sta = type { i64 }

@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MBOX vector: 0x%x\00", align 1
@SCAN_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"scan results: %d\00", align 1
@TIME_SYNC_EVENT_ID = common dso_local global i32 0, align 4
@RADAR_DETECTED_EVENT_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"radar event: channel %d type %s\00", align 1
@PERIODIC_SCAN_REPORT_EVENT_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"PERIODIC_SCAN_REPORT_EVENT (results %d)\00", align 1
@PERIODIC_SCAN_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4
@RSSI_SNR_TRIGGER_0_EVENT_ID = common dso_local global i32 0, align 4
@BA_SESSION_RX_CONSTRAINT_EVENT_ID = common dso_local global i32 0, align 4
@BSS_LOSS_EVENT_ID = common dso_local global i32 0, align 4
@CHANNEL_SWITCH_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4
@DUMMY_PACKET_EVENT_ID = common dso_local global i32 0, align 4
@MAX_TX_FAILURE_EVENT_ID = common dso_local global i32 0, align 4
@INACTIVE_STA_EVENT_ID = common dso_local global i32 0, align 4
@REMAIN_ON_CHANNEL_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4
@SMART_CONFIG_SYNC_EVENT_ID = common dso_local global i32 0, align 4
@SMART_CONFIG_DECODE_EVENT_ID = common dso_local global i32 0, align 4
@FW_LOGGER_INDICATION = common dso_local global i32 0, align 4
@RX_BA_WIN_SIZE_CHANGE_EVENT_ID = common dso_local global i32 0, align 4
@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl18xx_process_mailbox_events(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.wl18xx_event_mailbox*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %11 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 4
  %13 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %12, align 8
  store %struct.wl18xx_event_mailbox* %13, %struct.wl18xx_event_mailbox** %3, align 8
  %14 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %15 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %14, i32 0, i32 23
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le32_to_cpu(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @DEBUG_EVENT, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @wl1271_debug(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SCAN_COMPLETE_EVENT_ID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %1
  %26 = load i32, i32* @DEBUG_EVENT, align 4
  %27 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %28 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @wl1271_debug(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %37 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %38 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @wl18xx_scan_completed(%struct.wl1271* %36, i64 %39)
  br label %41

41:                                               ; preds = %35, %25
  br label %42

42:                                               ; preds = %41, %1
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @TIME_SYNC_EVENT_ID, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %49 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %50 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %49, i32 0, i32 22
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %53 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %52, i32 0, i32 21
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %56 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %55, i32 0, i32 20
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %59 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %58, i32 0, i32 19
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wlcore_event_time_sync(%struct.wl1271* %48, i32 %51, i32 %54, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %47, %42
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @RADAR_DETECTED_EVENT_ID, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %62
  %68 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %69 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %68, i32 0, i32 18
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %72 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %71, i32 0, i32 17
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @wl18xx_radar_type_decode(i32 %73)
  %75 = call i32 @wl1271_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %74)
  %76 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %77 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %67
  %81 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %82 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ieee80211_radar_detected(i32 %83)
  br label %85

85:                                               ; preds = %80, %67
  br label %86

86:                                               ; preds = %85, %62
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @PERIODIC_SCAN_REPORT_EVENT_ID, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load i32, i32* @DEBUG_EVENT, align 4
  %93 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %94 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @wl1271_debug(i32 %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %98 = call i32 @wlcore_scan_sched_scan_results(%struct.wl1271* %97)
  br label %99

99:                                               ; preds = %91, %86
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @PERIODIC_SCAN_COMPLETE_EVENT_ID, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %106 = call i32 @wlcore_event_sched_scan_completed(%struct.wl1271* %105, i32 1)
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @RSSI_SNR_TRIGGER_0_EVENT_ID, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %114 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %115 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %114, i32 0, i32 16
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @wlcore_event_rssi_trigger(%struct.wl1271* %113, i32 %116)
  br label %118

118:                                              ; preds = %112, %107
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @BA_SESSION_RX_CONSTRAINT_EVENT_ID, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %118
  %124 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %125 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %126 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %125, i32 0, i32 15
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le16_to_cpu(i32 %127)
  %129 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %130 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %129, i32 0, i32 14
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @le16_to_cpu(i32 %131)
  %133 = call i32 @wlcore_event_ba_rx_constraint(%struct.wl1271* %124, i32 %128, i32 %132)
  br label %134

134:                                              ; preds = %123, %118
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @BSS_LOSS_EVENT_ID, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %141 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %142 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %141, i32 0, i32 13
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @le16_to_cpu(i32 %143)
  %145 = call i32 @wlcore_event_beacon_loss(%struct.wl1271* %140, i32 %144)
  br label %146

146:                                              ; preds = %139, %134
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @CHANNEL_SWITCH_COMPLETE_EVENT_ID, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %153 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %154 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %153, i32 0, i32 12
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @le16_to_cpu(i32 %155)
  %157 = call i32 @wlcore_event_channel_switch(%struct.wl1271* %152, i32 %156, i32 1)
  br label %158

158:                                              ; preds = %151, %146
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @DUMMY_PACKET_EVENT_ID, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %165 = call i32 @wlcore_event_dummy_packet(%struct.wl1271* %164)
  br label %166

166:                                              ; preds = %163, %158
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @MAX_TX_FAILURE_EVENT_ID, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %173 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %174 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %173, i32 0, i32 11
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @le16_to_cpu(i32 %175)
  %177 = call i32 @wlcore_event_max_tx_failure(%struct.wl1271* %172, i32 %176)
  br label %178

178:                                              ; preds = %171, %166
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @INACTIVE_STA_EVENT_ID, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %178
  %184 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %185 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %186 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %185, i32 0, i32 10
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @le16_to_cpu(i32 %187)
  %189 = call i32 @wlcore_event_inactive_sta(%struct.wl1271* %184, i32 %188)
  br label %190

190:                                              ; preds = %183, %178
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @REMAIN_ON_CHANNEL_COMPLETE_EVENT_ID, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %197 = call i32 @wlcore_event_roc_complete(%struct.wl1271* %196)
  br label %198

198:                                              ; preds = %195, %190
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* @SMART_CONFIG_SYNC_EVENT_ID, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %198
  %204 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %205 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %206 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %205, i32 0, i32 9
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %209 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @wlcore_smart_config_sync_event(%struct.wl1271* %204, i32 %207, i32 %210)
  br label %212

212:                                              ; preds = %203, %198
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* @SMART_CONFIG_DECODE_EVENT_ID, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %232

217:                                              ; preds = %212
  %218 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %219 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %220 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %223 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %226 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %229 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @wlcore_smart_config_decode_event(%struct.wl1271* %218, i32 %221, i32 %224, i32 %227, i32 %230)
  br label %232

232:                                              ; preds = %217, %212
  %233 = load i32, i32* %4, align 4
  %234 = load i32, i32* @FW_LOGGER_INDICATION, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %239 = call i32 @wlcore_event_fw_logger(%struct.wl1271* %238)
  br label %240

240:                                              ; preds = %237, %232
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* @RX_BA_WIN_SIZE_CHANGE_EVENT_ID, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %300

245:                                              ; preds = %240
  %246 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %247 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %8, align 8
  %249 = load %struct.wl18xx_event_mailbox*, %struct.wl18xx_event_mailbox** %3, align 8
  %250 = getelementptr inbounds %struct.wl18xx_event_mailbox, %struct.wl18xx_event_mailbox* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %9, align 8
  %252 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %253 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %252, i32 0, i32 0
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %253, align 8
  %255 = load i64, i64* %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 2
  %258 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %257, align 8
  store %struct.wl12xx_vif* %258, %struct.wl12xx_vif** %5, align 8
  %259 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %260 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %259)
  store %struct.ieee80211_vif* %260, %struct.ieee80211_vif** %6, align 8
  %261 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %262 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %265 = icmp ne i64 %263, %264
  br i1 %265, label %266, label %271

266:                                              ; preds = %245
  %267 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %268 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 0
  %270 = load i64*, i64** %269, align 8
  store i64* %270, i64** %10, align 8
  br label %279

271:                                              ; preds = %245
  %272 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %273 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %272, i32 0, i32 0
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %273, align 8
  %275 = load i64, i64* %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load i64*, i64** %277, align 8
  store i64* %278, i64** %10, align 8
  br label %279

279:                                              ; preds = %271, %266
  %280 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %281 = load i64*, i64** %10, align 8
  %282 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %280, i64* %281)
  store %struct.ieee80211_sta* %282, %struct.ieee80211_sta** %7, align 8
  %283 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %284 = icmp ne %struct.ieee80211_sta* %283, null
  br i1 %284, label %285, label %299

285:                                              ; preds = %279
  %286 = load i64, i64* %9, align 8
  %287 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %288 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %287, i32 0, i32 0
  store i64 %286, i64* %288, align 8
  %289 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %290 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %291 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %290, i32 0, i32 0
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %291, align 8
  %293 = load i64, i64* %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = load i64*, i64** %10, align 8
  %298 = call i32 @ieee80211_stop_rx_ba_session(%struct.ieee80211_vif* %289, i32 %296, i64* %297)
  br label %299

299:                                              ; preds = %285, %279
  br label %300

300:                                              ; preds = %299, %240
  ret i32 0
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @wl18xx_scan_completed(%struct.wl1271*, i64) #1

declare dso_local i32 @wlcore_event_time_sync(%struct.wl1271*, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_info(i8*, i32, i32) #1

declare dso_local i32 @wl18xx_radar_type_decode(i32) #1

declare dso_local i32 @ieee80211_radar_detected(i32) #1

declare dso_local i32 @wlcore_scan_sched_scan_results(%struct.wl1271*) #1

declare dso_local i32 @wlcore_event_sched_scan_completed(%struct.wl1271*, i32) #1

declare dso_local i32 @wlcore_event_rssi_trigger(%struct.wl1271*, i32) #1

declare dso_local i32 @wlcore_event_ba_rx_constraint(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @wlcore_event_beacon_loss(%struct.wl1271*, i32) #1

declare dso_local i32 @wlcore_event_channel_switch(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @wlcore_event_dummy_packet(%struct.wl1271*) #1

declare dso_local i32 @wlcore_event_max_tx_failure(%struct.wl1271*, i32) #1

declare dso_local i32 @wlcore_event_inactive_sta(%struct.wl1271*, i32) #1

declare dso_local i32 @wlcore_event_roc_complete(%struct.wl1271*) #1

declare dso_local i32 @wlcore_smart_config_sync_event(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @wlcore_smart_config_decode_event(%struct.wl1271*, i32, i32, i32, i32) #1

declare dso_local i32 @wlcore_event_fw_logger(%struct.wl1271*) #1

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i64*) #1

declare dso_local i32 @ieee80211_stop_rx_ba_session(%struct.ieee80211_vif*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
