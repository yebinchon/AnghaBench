; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_event.c_wl1251_event_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_event.c_wl1251_event_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.event_mailbox = type { i32, i32 }

@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vector: 0x%x\00", align 1
@SCAN_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4
@BSS_LOSE_EVENT_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"BSS_LOSE_EVENT\00", align 1
@STATION_ACTIVE_MODE = common dso_local global i64 0, align 8
@PS_REPORT_EVENT_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"PS_REPORT_EVENT\00", align 1
@SYNCHRONIZATION_TIMEOUT_EVENT_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"SYNCHRONIZATION_TIMEOUT_EVENT\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@REGAINED_BSS_EVENT_ID = common dso_local global i32 0, align 4
@STATION_POWER_SAVE_MODE = common dso_local global i64 0, align 8
@ROAMING_TRIGGER_LOW_RSSI_EVENT_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"ROAMING_TRIGGER_LOW_RSSI_EVENT\00", align 1
@NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ROAMING_TRIGGER_REGAINED_RSSI_EVENT_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"ROAMING_TRIGGER_REGAINED_RSSI_EVENT\00", align 1
@NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*, %struct.event_mailbox*)* @wl1251_event_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_event_process(%struct.wl1251* %0, %struct.event_mailbox* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca %struct.event_mailbox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store %struct.event_mailbox* %1, %struct.event_mailbox** %5, align 8
  %8 = load %struct.event_mailbox*, %struct.event_mailbox** %5, align 8
  %9 = call i32 @wl1251_event_mbox_dump(%struct.event_mailbox* %8)
  %10 = load %struct.event_mailbox*, %struct.event_mailbox** %5, align 8
  %11 = getelementptr inbounds %struct.event_mailbox, %struct.event_mailbox* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.event_mailbox*, %struct.event_mailbox** %5, align 8
  %14 = getelementptr inbounds %struct.event_mailbox, %struct.event_mailbox* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @DEBUG_EVENT, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SCAN_COMPLETE_EVENT_ID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %27 = load %struct.event_mailbox*, %struct.event_mailbox** %5, align 8
  %28 = call i32 @wl1251_event_scan_complete(%struct.wl1251* %26, %struct.event_mailbox* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %164

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @BSS_LOSE_EVENT_ID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load i32, i32* @DEBUG_EVENT, align 4
  %41 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %43 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %48 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @STATION_ACTIVE_MODE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %54 = load i64, i64* @STATION_ACTIVE_MODE, align 8
  %55 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %53, i64 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %164

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %46, %39
  br label %62

62:                                               ; preds = %61, %34
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @PS_REPORT_EVENT_ID, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load i32, i32* @DEBUG_EVENT, align 4
  %69 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %71 = load %struct.event_mailbox*, %struct.event_mailbox** %5, align 8
  %72 = call i32 @wl1251_event_ps_report(%struct.wl1251* %70, %struct.event_mailbox* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %164

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %62
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @SYNCHRONIZATION_TIMEOUT_EVENT_ID, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %78
  %84 = load i32, i32* @DEBUG_EVENT, align 4
  %85 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %87 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = icmp ne %struct.TYPE_3__* %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %83
  %91 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %92 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %91, i32 0, i32 1
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %90
  %99 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %100 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = call i32 @ieee80211_beacon_loss(%struct.TYPE_3__* %101)
  br label %103

103:                                              ; preds = %98, %90, %83
  br label %104

104:                                              ; preds = %103, %78
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @REGAINED_BSS_EVENT_ID, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %104
  %110 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %111 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %116 = load i64, i64* @STATION_POWER_SAVE_MODE, align 8
  %117 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %115, i64 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %3, align 4
  br label %164

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %109
  br label %124

124:                                              ; preds = %123, %104
  %125 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %126 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = icmp ne %struct.TYPE_3__* %127, null
  br i1 %128, label %129, label %163

129:                                              ; preds = %124
  %130 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %131 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %163

134:                                              ; preds = %129
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @ROAMING_TRIGGER_LOW_RSSI_EVENT_ID, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load i32, i32* @DEBUG_EVENT, align 4
  %141 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %142 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %143 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %142, i32 0, i32 1
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW, align 4
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = call i32 @ieee80211_cqm_rssi_notify(%struct.TYPE_3__* %144, i32 %145, i32 0, i32 %146)
  br label %148

148:                                              ; preds = %139, %134
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @ROAMING_TRIGGER_REGAINED_RSSI_EVENT_ID, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = load i32, i32* @DEBUG_EVENT, align 4
  %155 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %154, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %156 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %157 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %156, i32 0, i32 1
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH, align 4
  %160 = load i32, i32* @GFP_KERNEL, align 4
  %161 = call i32 @ieee80211_cqm_rssi_notify(%struct.TYPE_3__* %158, i32 %159, i32 0, i32 %160)
  br label %162

162:                                              ; preds = %153, %148
  br label %163

163:                                              ; preds = %162, %129, %124
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %120, %75, %58, %31
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @wl1251_event_mbox_dump(%struct.event_mailbox*) #1

declare dso_local i32 @wl1251_debug(i32, i8*, ...) #1

declare dso_local i32 @wl1251_event_scan_complete(%struct.wl1251*, %struct.event_mailbox*) #1

declare dso_local i32 @wl1251_ps_set_mode(%struct.wl1251*, i64) #1

declare dso_local i32 @wl1251_event_ps_report(%struct.wl1251*, %struct.event_mailbox*) #1

declare dso_local i32 @ieee80211_beacon_loss(%struct.TYPE_3__*) #1

declare dso_local i32 @ieee80211_cqm_rssi_notify(%struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
