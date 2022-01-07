; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_event.c_wl1251_event_scan_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_event.c_wl1251_event_scan_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.event_mailbox = type { i32, i32 }
%struct.cfg80211_scan_info = type { i32 }

@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"status: 0x%x, channels: %d\00", align 1
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"mac80211 hw scan completed\00", align 1
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@STATION_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*, %struct.event_mailbox*)* @wl1251_event_scan_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_event_scan_complete(%struct.wl1251* %0, %struct.event_mailbox* %1) #0 {
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.event_mailbox*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  store %struct.event_mailbox* %1, %struct.event_mailbox** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @DEBUG_EVENT, align 4
  %8 = load %struct.event_mailbox*, %struct.event_mailbox** %4, align 8
  %9 = getelementptr inbounds %struct.event_mailbox, %struct.event_mailbox* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.event_mailbox*, %struct.event_mailbox** %4, align 8
  %12 = getelementptr inbounds %struct.event_mailbox, %struct.event_mailbox* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %16 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = bitcast %struct.cfg80211_scan_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %22 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @ieee80211_scan_completed(%struct.TYPE_4__* %23, %struct.cfg80211_scan_info* %6)
  %25 = load i32, i32* @DEBUG_MAC80211, align 4
  %26 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %28 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %30 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %19
  %39 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %40 = load i32, i32* @STATION_IDLE, align 4
  %41 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %19
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @wl1251_debug(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ieee80211_scan_completed(%struct.TYPE_4__*, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @wl1251_ps_set_mode(%struct.wl1251*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
