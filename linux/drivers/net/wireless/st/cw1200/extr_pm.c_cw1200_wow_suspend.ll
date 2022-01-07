; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_pm.c_cw1200_wow_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_pm.c_cw1200_wow_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.ieee80211_hw = type { %struct.cw1200_common* }
%struct.cw1200_common = type { i64, i32, i32, %struct.TYPE_13__, i32, i32, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_10__*, i32, i32, i64, i64, %struct.TYPE_9__, %struct.cw1200_pm_state }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 (i32, i32)* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.cw1200_pm_state = type { %struct.cw1200_suspend_state*, i32, i32 }
%struct.cw1200_suspend_state = type { i64, i32, i8*, i8*, i8*, i8* }
%struct.cfg80211_wowlan = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@cw1200_udp_port_filter_on = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@cw1200_ether_type_filter_on = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CW1200_JOIN_STATUS_STA = common dso_local global i64 0, align 8
@WSM_PSM_PS = common dso_local global i64 0, align 8
@CW1200_BEACON_SKIPPING_MULTIPLIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"PM request failed: %d. WoW is disabled.\0A\00", align 1
@cw1200_udp_port_filter_off = common dso_local global i32 0, align 4
@cw1200_ether_type_filter_off = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_wow_suspend(%struct.ieee80211_hw* %0, %struct.cfg80211_wowlan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.cfg80211_wowlan*, align 8
  %6 = alloca %struct.cw1200_common*, align 8
  %7 = alloca %struct.cw1200_pm_state*, align 8
  %8 = alloca %struct.cw1200_suspend_state*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.cfg80211_wowlan* %1, %struct.cfg80211_wowlan** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.cw1200_common*, %struct.cw1200_common** %11, align 8
  store %struct.cw1200_common* %12, %struct.cw1200_common** %6, align 8
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %14 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %13, i32 0, i32 24
  store %struct.cw1200_pm_state* %14, %struct.cw1200_pm_state** %7, align 8
  %15 = load %struct.cw1200_pm_state*, %struct.cw1200_pm_state** %7, align 8
  %16 = getelementptr inbounds %struct.cw1200_pm_state, %struct.cw1200_pm_state* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.cw1200_pm_state*, %struct.cw1200_pm_state** %7, align 8
  %19 = getelementptr inbounds %struct.cw1200_pm_state, %struct.cw1200_pm_state* %18, i32 0, i32 2
  %20 = call i32 @timer_pending(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.cw1200_pm_state*, %struct.cw1200_pm_state** %7, align 8
  %22 = getelementptr inbounds %struct.cw1200_pm_state, %struct.cw1200_pm_state* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock_bh(i32* %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %303

29:                                               ; preds = %2
  %30 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %31 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %30, i32 0, i32 23
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %303

38:                                               ; preds = %29
  %39 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %40 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %39, i32 0, i32 2
  %41 = call i32 @mutex_trylock(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %303

46:                                               ; preds = %38
  %47 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %48 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %47, i32 0, i32 22
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %297

52:                                               ; preds = %46
  %53 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %54 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %53, i32 0, i32 21
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %297

58:                                               ; preds = %52
  %59 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %60 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = call i64 @down_trylock(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %297

65:                                               ; preds = %58
  %66 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %67 = call i32 @wsm_lock_tx_async(%struct.cw1200_common* %66)
  %68 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %69 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %68, i32 0, i32 20
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %72 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %71, i32 0, i32 19
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* @HZ, align 4
  %78 = sdiv i32 %77, 10
  %79 = call i64 @wait_event_timeout(i32 %70, i32 %76, i32 %78)
  %80 = icmp sle i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %65
  br label %290

82:                                               ; preds = %65
  %83 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %84 = call i32 @wsm_set_udp_port_filter(%struct.cw1200_common* %83, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cw1200_udp_port_filter_on, i32 0, i32 0))
  %85 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %86 = call i32 @wsm_set_ether_type_filter(%struct.cw1200_common* %85, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cw1200_ether_type_filter_on, i32 0, i32 0))
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.cw1200_suspend_state* @kzalloc(i32 48, i32 %87)
  store %struct.cw1200_suspend_state* %88, %struct.cw1200_suspend_state** %8, align 8
  %89 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %8, align 8
  %90 = icmp ne %struct.cw1200_suspend_state* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  br label %285

92:                                               ; preds = %82
  %93 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %94 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %93, i32 0, i32 18
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %142, label %99

99:                                               ; preds = %92
  %100 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %101 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @CW1200_JOIN_STATUS_STA, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %142

105:                                              ; preds = %99
  %106 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %107 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %106, i32 0, i32 17
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @WSM_PSM_PS, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %142

112:                                              ; preds = %105
  %113 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %114 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %113, i32 0, i32 17
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %8, align 8
  %118 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load i64, i64* @WSM_PSM_PS, align 8
  %120 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %121 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %120, i32 0, i32 17
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  %123 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %124 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %125 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %124, i32 0, i32 17
  %126 = call i32 @cw1200_set_pm(%struct.cw1200_common* %123, %struct.TYPE_15__* %125)
  %127 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %128 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %127, i32 0, i32 16
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %131 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %130, i32 0, i32 15
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* @HZ, align 4
  %137 = mul nsw i32 1, %136
  %138 = call i64 @wait_event_interruptible_timeout(i32 %129, i32 %135, i32 %137)
  %139 = icmp sle i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %112
  br label %282

141:                                              ; preds = %112
  br label %142

142:                                              ; preds = %141, %105, %99, %92
  %143 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %144 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %143, i32 0, i32 6
  %145 = call i8* @cw1200_suspend_work(i32* %144)
  %146 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %8, align 8
  %147 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %146, i32 0, i32 5
  store i8* %145, i8** %147, align 8
  %148 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %149 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %148, i32 0, i32 5
  %150 = call i8* @cw1200_suspend_work(i32* %149)
  %151 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %8, align 8
  %152 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %151, i32 0, i32 4
  store i8* %150, i8** %152, align 8
  %153 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %154 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = call i8* @cw1200_suspend_work(i32* %155)
  %157 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %8, align 8
  %158 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %157, i32 0, i32 3
  store i8* %156, i8** %158, align 8
  %159 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %160 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %159, i32 0, i32 4
  %161 = call i8* @cw1200_suspend_work(i32* %160)
  %162 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %8, align 8
  %163 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %162, i32 0, i32 2
  store i8* %161, i8** %163, align 8
  %164 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %165 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %164, i32 0, i32 14
  %166 = call i32 @cancel_delayed_work_sync(i32* %165)
  %167 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %168 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %167, i32 0, i32 13
  %169 = call i32 @atomic_set(i32* %168, i32 0)
  %170 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %171 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @CW1200_JOIN_STATUS_STA, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %198

175:                                              ; preds = %142
  %176 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %177 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %198

180:                                              ; preds = %175
  %181 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %182 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %181, i32 0, i32 12
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %198, label %185

185:                                              ; preds = %180
  %186 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %8, align 8
  %187 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %186, i32 0, i32 1
  store i32 1, i32* %187, align 8
  %188 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %189 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %190 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @CW1200_BEACON_SKIPPING_MULTIPLIER, align 4
  %193 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %194 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = mul nsw i32 %192, %195
  %197 = call i32 @wsm_set_beacon_wakeup_period(%struct.cw1200_common* %188, i32 %191, i32 %196)
  br label %198

198:                                              ; preds = %185, %180, %175, %142
  %199 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %200 = call i64 @cw1200_bh_suspend(%struct.cw1200_common* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  br label %252

203:                                              ; preds = %198
  %204 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %205 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %204, i32 0, i32 11
  %206 = call i32 @timer_pending(i32* %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  br label %248

210:                                              ; preds = %203
  %211 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %8, align 8
  %212 = load %struct.cw1200_pm_state*, %struct.cw1200_pm_state** %7, align 8
  %213 = getelementptr inbounds %struct.cw1200_pm_state, %struct.cw1200_pm_state* %212, i32 0, i32 0
  store %struct.cw1200_suspend_state* %211, %struct.cw1200_suspend_state** %213, align 8
  %214 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %215 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %214, i32 0, i32 10
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i32 (i32, i32)*, i32 (i32, i32)** %217, align 8
  %219 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %220 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %219, i32 0, i32 9
  %221 = load i32, i32* %220, align 8
  %222 = call i32 %218(i32 %221, i32 1)
  store i32 %222, i32* %9, align 4
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %210
  %226 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %227 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %226, i32 0, i32 8
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @wiphy_err(i32 %230, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %231)
  %233 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %234 = call i32 @cw1200_wow_resume(%struct.ieee80211_hw* %233)
  %235 = load i32, i32* @EBUSY, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %3, align 4
  br label %303

237:                                              ; preds = %210
  %238 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %239 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %238, i32 0, i32 7
  %240 = call i64 @atomic_read(i32* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %244 = call i32 @cw1200_wow_resume(%struct.ieee80211_hw* %243)
  %245 = load i32, i32* @EAGAIN, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %3, align 4
  br label %303

247:                                              ; preds = %237
  store i32 0, i32* %3, align 4
  br label %303

248:                                              ; preds = %209
  %249 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %250 = call i32 @cw1200_bh_resume(%struct.cw1200_common* %249)
  %251 = call i32 @WARN_ON(i32 %250)
  br label %252

252:                                              ; preds = %248, %202
  %253 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %254 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %255 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %254, i32 0, i32 6
  %256 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %8, align 8
  %257 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %256, i32 0, i32 5
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @cw1200_resume_work(%struct.cw1200_common* %253, i32* %255, i8* %258)
  %260 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %261 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %262 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %261, i32 0, i32 5
  %263 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %8, align 8
  %264 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %263, i32 0, i32 4
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @cw1200_resume_work(%struct.cw1200_common* %260, i32* %262, i8* %265)
  %267 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %268 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %269 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 1
  %271 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %8, align 8
  %272 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %271, i32 0, i32 3
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 @cw1200_resume_work(%struct.cw1200_common* %267, i32* %270, i8* %273)
  %275 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %276 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %277 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %276, i32 0, i32 4
  %278 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %8, align 8
  %279 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %278, i32 0, i32 2
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @cw1200_resume_work(%struct.cw1200_common* %275, i32* %277, i8* %280)
  br label %282

282:                                              ; preds = %252, %140
  %283 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %8, align 8
  %284 = call i32 @kfree(%struct.cw1200_suspend_state* %283)
  br label %285

285:                                              ; preds = %282, %91
  %286 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %287 = call i32 @wsm_set_udp_port_filter(%struct.cw1200_common* %286, i32* @cw1200_udp_port_filter_off)
  %288 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %289 = call i32 @wsm_set_ether_type_filter(%struct.cw1200_common* %288, i32* @cw1200_ether_type_filter_off)
  br label %290

290:                                              ; preds = %285, %81
  %291 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %292 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %291)
  %293 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %294 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %293, i32 0, i32 3
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = call i32 @up(i32* %295)
  br label %297

297:                                              ; preds = %290, %64, %57, %51
  %298 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %299 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %298, i32 0, i32 2
  %300 = call i32 @mutex_unlock(i32* %299)
  %301 = load i32, i32* @EBUSY, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %3, align 4
  br label %303

303:                                              ; preds = %297, %247, %242, %225, %43, %35, %26
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i32 @wsm_lock_tx_async(%struct.cw1200_common*) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @wsm_set_udp_port_filter(%struct.cw1200_common*, i32*) #1

declare dso_local i32 @wsm_set_ether_type_filter(%struct.cw1200_common*, i32*) #1

declare dso_local %struct.cw1200_suspend_state* @kzalloc(i32, i32) #1

declare dso_local i32 @cw1200_set_pm(%struct.cw1200_common*, %struct.TYPE_15__*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i8* @cw1200_suspend_work(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wsm_set_beacon_wakeup_period(%struct.cw1200_common*, i32, i32) #1

declare dso_local i64 @cw1200_bh_suspend(%struct.cw1200_common*) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @cw1200_wow_resume(%struct.ieee80211_hw*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cw1200_bh_resume(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_resume_work(%struct.cw1200_common*, i32*, i8*) #1

declare dso_local i32 @kfree(%struct.cw1200_suspend_state*) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
