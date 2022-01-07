; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_ps.c_wl12xx_ps_link_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_ps.c_wl12xx_ps_link_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_vif = type { i32 }

@DEBUG_PSM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"end mac80211 PSM on hlid %d\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"could not find sta %pM for ending ps\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl12xx_ps_link_end(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %10 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %9)
  store %struct.ieee80211_vif* %10, %struct.ieee80211_vif** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %13 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %12, i32 0, i32 1
  %14 = call i32 @test_bit(i64 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %51

17:                                               ; preds = %3
  %18 = load i32, i32* @DEBUG_PSM, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @wl1271_debug(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 1
  %24 = call i32 @__clear_bit(i64 %21, i32* %23)
  %25 = call i32 (...) @rcu_read_lock()
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %27 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %28 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %26, i32 %33)
  store %struct.ieee80211_sta* %34, %struct.ieee80211_sta** %7, align 8
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %36 = icmp ne %struct.ieee80211_sta* %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %17
  %38 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %39 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @wl1271_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %49

46:                                               ; preds = %17
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %48 = call i32 @ieee80211_sta_ps_transition_ni(%struct.ieee80211_sta* %47, i32 0)
  br label %49

49:                                               ; preds = %46, %37
  %50 = call i32 (...) @rcu_read_unlock()
  br label %51

51:                                               ; preds = %49, %16
  ret void
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local i32 @test_bit(i64, i32*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i64) #1

declare dso_local i32 @__clear_bit(i64, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @wl1271_error(i8*, i32) #1

declare dso_local i32 @ieee80211_sta_ps_transition_ni(%struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
