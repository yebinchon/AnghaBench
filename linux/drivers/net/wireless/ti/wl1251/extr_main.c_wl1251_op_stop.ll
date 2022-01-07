; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_info = type { i32 }
%struct.ieee80211_hw = type { %struct.wl1251* }
%struct.wl1251 = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"down\00", align 1
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"mac80211 stop\00", align 1
@WL1251_STATE_ON = common dso_local global i64 0, align 8
@__const.wl1251_op_stop.info = private unnamed_addr constant %struct.cfg80211_scan_info { i32 1 }, align 4
@WL1251_STATE_OFF = common dso_local global i64 0, align 8
@MAX_BSS_TYPE = common dso_local global i32 0, align 4
@STATION_ACTIVE_MODE = common dso_local global i32 0, align 4
@WL1251_DEFAULT_POWER_LEVEL = common dso_local global i32 0, align 4
@WL1251_DEFAULT_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @wl1251_op_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_op_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  store %struct.wl1251* %7, %struct.wl1251** %3, align 8
  %8 = call i32 @wl1251_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @DEBUG_MAC80211, align 4
  %10 = call i32 @wl1251_debug(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %12 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %11, i32 0, i32 7
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %15 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WL1251_STATE_ON, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %22 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = bitcast %struct.cfg80211_scan_info* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.cfg80211_scan_info* @__const.wl1251_op_stop.info to i8*), i64 4, i1 false)
  %27 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %28 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %27, i32 0, i32 24
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ieee80211_scan_completed(i32 %29, %struct.cfg80211_scan_info* %4)
  %31 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %32 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %31, i32 0, i32 1
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %25, %1
  %34 = load i64, i64* @WL1251_STATE_OFF, align 8
  %35 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %36 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %38 = call i32 @wl1251_disable_interrupts(%struct.wl1251* %37)
  %39 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %40 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %39, i32 0, i32 7
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %43 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %42, i32 0, i32 23
  %44 = call i32 @cancel_work_sync(i32* %43)
  %45 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %46 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %45, i32 0, i32 22
  %47 = call i32 @cancel_work_sync(i32* %46)
  %48 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %49 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %48, i32 0, i32 21
  %50 = call i32 @cancel_delayed_work_sync(i32* %49)
  %51 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %52 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %51, i32 0, i32 7
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %55 = call i32 @wl1251_tx_flush(%struct.wl1251* %54)
  %56 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %57 = call i32 @wl1251_power_off(%struct.wl1251* %56)
  %58 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %59 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %58, i32 0, i32 20
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @eth_zero_addr(i32 %60)
  %62 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %63 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %62, i32 0, i32 2
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* @MAX_BSS_TYPE, align 4
  %65 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %66 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %65, i32 0, i32 19
  store i32 %64, i32* %66, align 8
  %67 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %68 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %67, i32 0, i32 18
  store i64 0, i64* %68, align 8
  %69 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %70 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %69, i32 0, i32 17
  store i64 0, i64* %70, align 8
  %71 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %72 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %71, i32 0, i32 16
  store i64 0, i64* %72, align 8
  %73 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %74 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %73, i32 0, i32 15
  store i64 0, i64* %74, align 8
  %75 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %76 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %75, i32 0, i32 14
  store i64 0, i64* %76, align 8
  %77 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %78 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %77, i32 0, i32 13
  store i64 0, i64* %78, align 8
  %79 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %80 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %79, i32 0, i32 3
  store i32 0, i32* %80, align 8
  %81 = load i32, i32* @STATION_ACTIVE_MODE, align 4
  %82 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %83 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %82, i32 0, i32 12
  store i32 %81, i32* %83, align 8
  %84 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %85 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %84, i32 0, i32 11
  store i64 0, i64* %85, align 8
  %86 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %87 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %86, i32 0, i32 4
  store i32 0, i32* %87, align 4
  %88 = load i32, i32* @WL1251_DEFAULT_POWER_LEVEL, align 4
  %89 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %90 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %89, i32 0, i32 10
  store i32 %88, i32* %90, align 8
  %91 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %92 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %91, i32 0, i32 9
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @WL1251_DEFAULT_CHANNEL, align 4
  %94 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %95 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %94, i32 0, i32 8
  store i32 %93, i32* %95, align 4
  %96 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %97 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %96, i32 0, i32 5
  store i32 0, i32* %97, align 8
  %98 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %99 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %98, i32 0, i32 6
  store i32 0, i32* %99, align 4
  %100 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %101 = call i32 @wl1251_debugfs_reset(%struct.wl1251* %100)
  %102 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %103 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %102, i32 0, i32 7
  %104 = call i32 @mutex_unlock(i32* %103)
  ret void
}

declare dso_local i32 @wl1251_info(i8*) #1

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee80211_scan_completed(i32, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @wl1251_disable_interrupts(%struct.wl1251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @wl1251_tx_flush(%struct.wl1251*) #1

declare dso_local i32 @wl1251_power_off(%struct.wl1251*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @wl1251_debugfs_reset(%struct.wl1251*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
