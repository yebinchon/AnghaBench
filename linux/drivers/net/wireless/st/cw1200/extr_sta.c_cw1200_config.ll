; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.cw1200_common* }
%struct.ieee80211_conf = type { i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.cw1200_common = type { i32, i64, i32, %struct.TYPE_11__, i32, %struct.TYPE_10__, %struct.TYPE_9__*, i32, i32, %struct.TYPE_12__, %struct.TYPE_8__, %struct.ieee80211_channel*, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.wsm_switch_channel = type { i32 }
%struct.wsm_operational_mode = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"CONFIG CHANGED:  %08x\0A\00", align 1
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"[STA] TX power: %d\0A\00", align 1
@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"[STA] Freq %d (wsm ch: %d).\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@WSM_PSM_ACTIVE = common dso_local global i32 0, align 4
@WSM_PSM_PS = common dso_local global i32 0, align 4
@WSM_PSM_FAST_PS = common dso_local global i32 0, align 4
@CW1200_JOIN_STATUS_STA = common dso_local global i64 0, align 8
@IEEE80211_CONF_CHANGE_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_IDLE = common dso_local global i32 0, align 4
@cw1200_power_mode = common dso_local global i32 0, align 4
@CW1200_JOIN_STATUS_MONITOR = common dso_local global i64 0, align 8
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@CW1200_JOIN_STATUS_PASSIVE = common dso_local global i64 0, align 8
@IEEE80211_CONF_CHANGE_RETRY_LIMITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"[STA] Retry limits: %d (long), %d (short).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cw1200_common*, align 8
  %7 = alloca %struct.ieee80211_conf*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.wsm_switch_channel, align 4
  %10 = alloca %struct.wsm_operational_mode, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 1
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %12, align 8
  store %struct.cw1200_common* %13, %struct.cw1200_common** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  store %struct.ieee80211_conf* %15, %struct.ieee80211_conf** %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %19 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = call i32 @down(i32* %20)
  %22 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %23 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %22, i32 0, i32 4
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %2
  %30 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %34 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %36 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %40 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %41 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %42, 10
  %44 = call i32 @wsm_set_output_power(%struct.cw1200_common* %39, i32 %43)
  br label %45

45:                                               ; preds = %29, %2
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %110

50:                                               ; preds = %45
  %51 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %52 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %51, i32 0, i32 11
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %52, align 8
  %54 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %56, align 8
  %58 = icmp ne %struct.ieee80211_channel* %53, %57
  br i1 %58, label %59, label %110

59:                                               ; preds = %50
  %60 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %62, align 8
  store %struct.ieee80211_channel* %63, %struct.ieee80211_channel** %8, align 8
  %64 = getelementptr inbounds %struct.wsm_switch_channel, %struct.wsm_switch_channel* %9, i32 0, i32 0
  %65 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %66 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %64, align 4
  %68 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %69 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %72 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %73)
  %75 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %76 = call i32 @__cw1200_flush(%struct.cw1200_common* %75, i32 0)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %109, label %78

78:                                               ; preds = %59
  %79 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %80 = call i32 @wsm_switch_channel(%struct.cw1200_common* %79, %struct.wsm_switch_channel* %9)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %105, label %82

82:                                               ; preds = %78
  %83 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %84 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %87 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %86, i32 0, i32 12
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* @HZ, align 4
  %93 = mul nsw i32 3, %92
  %94 = call i32 @wait_event_timeout(i32 %85, i32 %91, i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %82
  %98 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %99 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %100 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %99, i32 0, i32 11
  store %struct.ieee80211_channel* %98, %struct.ieee80211_channel** %100, align 8
  store i32 0, i32* %5, align 4
  br label %104

101:                                              ; preds = %82
  %102 = load i32, i32* @ETIMEDOUT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %101, %97
  br label %108

105:                                              ; preds = %78
  %106 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %107 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %106)
  br label %108

108:                                              ; preds = %105, %104
  br label %109

109:                                              ; preds = %108, %59
  br label %110

110:                                              ; preds = %109, %50, %45
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %178

115:                                              ; preds = %110
  %116 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %117 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* @WSM_PSM_ACTIVE, align 4
  %124 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %125 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %124, i32 0, i32 9
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  br label %143

127:                                              ; preds = %115
  %128 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp sle i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i32, i32* @WSM_PSM_PS, align 4
  %134 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %135 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %134, i32 0, i32 9
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  br label %142

137:                                              ; preds = %127
  %138 = load i32, i32* @WSM_PSM_FAST_PS, align 4
  %139 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %140 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %139, i32 0, i32 9
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %137, %132
  br label %143

143:                                              ; preds = %142, %122
  %144 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %145 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp sge i32 %146, 128
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %150 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %149, i32 0, i32 9
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  store i32 255, i32* %151, align 8
  br label %160

152:                                              ; preds = %143
  %153 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %154 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = shl i32 %155, 1
  %157 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %158 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %157, i32 0, i32 9
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  br label %160

160:                                              ; preds = %152, %148
  %161 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %162 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @CW1200_JOIN_STATUS_STA, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %160
  %167 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %168 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %167, i32 0, i32 10
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %166
  %173 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %174 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %175 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %174, i32 0, i32 9
  %176 = call i32 @cw1200_set_pm(%struct.cw1200_common* %173, %struct.TYPE_12__* %175)
  br label %177

177:                                              ; preds = %172, %166, %160
  br label %178

178:                                              ; preds = %177, %110
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @IEEE80211_CONF_CHANGE_MONITOR, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %184

184:                                              ; preds = %183, %178
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @IEEE80211_CONF_CHANGE_IDLE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %223

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.wsm_operational_mode, %struct.wsm_operational_mode* %10, i32 0, i32 0
  store i32 1, i32* %190, align 4
  %191 = getelementptr inbounds %struct.wsm_operational_mode, %struct.wsm_operational_mode* %10, i32 0, i32 1
  %192 = load i32, i32* @cw1200_power_mode, align 4
  store i32 %192, i32* %191, align 4
  %193 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %194 = call i32 @wsm_lock_tx(%struct.cw1200_common* %193)
  %195 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %196 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @CW1200_JOIN_STATUS_MONITOR, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %218

200:                                              ; preds = %189
  %201 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %202 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %200
  %208 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %209 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %207
  %213 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %214 = call i32 @cw1200_disable_listening(%struct.cw1200_common* %213)
  %215 = load i64, i64* @CW1200_JOIN_STATUS_PASSIVE, align 8
  %216 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %217 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %216, i32 0, i32 1
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %212, %207, %200, %189
  %219 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %220 = call i32 @wsm_set_operational_mode(%struct.cw1200_common* %219, %struct.wsm_operational_mode* %10)
  %221 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %222 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %221)
  br label %223

223:                                              ; preds = %218, %184
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* @IEEE80211_CONF_CHANGE_RETRY_LIMITS, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %269

228:                                              ; preds = %223
  %229 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %230 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %233 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %231, i32 %234)
  %236 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %237 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = call i32 @spin_lock_bh(i32* %238)
  %240 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %241 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %244 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %243, i32 0, i32 7
  store i32 %242, i32* %244, align 8
  %245 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %246 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = icmp slt i32 %247, 15
  br i1 %248, label %249, label %253

249:                                              ; preds = %228
  %250 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %251 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  br label %254

253:                                              ; preds = %228
  br label %254

254:                                              ; preds = %253, %249
  %255 = phi i32 [ %252, %249 ], [ 15, %253 ]
  %256 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %257 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 8
  %258 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %259 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %262 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %261, i32 0, i32 6
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  store i32 %260, i32* %264, align 4
  %265 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %266 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %265, i32 0, i32 5
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = call i32 @spin_unlock_bh(i32* %267)
  br label %269

269:                                              ; preds = %254, %223
  %270 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %271 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %270, i32 0, i32 4
  %272 = call i32 @mutex_unlock(i32* %271)
  %273 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %274 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = call i32 @up(i32* %275)
  %277 = load i32, i32* %5, align 4
  ret i32 %277
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wsm_set_output_power(%struct.cw1200_common*, i32) #1

declare dso_local i32 @__cw1200_flush(%struct.cw1200_common*, i32) #1

declare dso_local i32 @wsm_switch_channel(%struct.cw1200_common*, %struct.wsm_switch_channel*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_set_pm(%struct.cw1200_common*, %struct.TYPE_12__*) #1

declare dso_local i32 @wsm_lock_tx(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_disable_listening(%struct.cw1200_common*) #1

declare dso_local i32 @wsm_set_operational_mode(%struct.cw1200_common*, %struct.wsm_operational_mode*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
