; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_ps.c_wl12xx_ps_link_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_ps.c_wl12xx_ps_link_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wl12xx_vif = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_vif = type { i32 }

@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@DEBUG_PSM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"start mac80211 PSM on hlid %d pkts %d clean_queues %d\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"could not find sta %pM for starting ps\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl12xx_ps_link_start(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_vif*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %12 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %11)
  store %struct.ieee80211_vif* %12, %struct.ieee80211_vif** %10, align 8
  %13 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %14 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON_ONCE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %86

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %25 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @test_bit(i64 %23, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i64 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %22
  br label %86

37:                                               ; preds = %30
  %38 = load i32, i32* @DEBUG_PSM, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %41 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @wl1271_debug(i32 %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %39, i32 %46, i32 %47)
  %49 = call i32 (...) @rcu_read_lock()
  %50 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %51 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %52 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %50, i32 %57)
  store %struct.ieee80211_sta* %58, %struct.ieee80211_sta** %9, align 8
  %59 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %60 = icmp ne %struct.ieee80211_sta* %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %37
  %62 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %63 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @wl1271_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = call i32 (...) @rcu_read_unlock()
  br label %86

71:                                               ; preds = %37
  %72 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %73 = call i32 @ieee80211_sta_ps_transition_ni(%struct.ieee80211_sta* %72, i32 1)
  %74 = call i32 (...) @rcu_read_unlock()
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @wl1271_ps_filter_frames(%struct.wl1271* %78, i64 %79)
  br label %81

81:                                               ; preds = %77, %71
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %84 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %83, i32 0, i32 0
  %85 = call i32 @__set_bit(i64 %82, i32* %84)
  br label %86

86:                                               ; preds = %81, %61, %36, %21
  ret void
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @wl1271_error(i8*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_sta_ps_transition_ni(%struct.ieee80211_sta*, i32) #1

declare dso_local i32 @wl1271_ps_filter_frames(%struct.wl1271*, i64) #1

declare dso_local i32 @__set_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
