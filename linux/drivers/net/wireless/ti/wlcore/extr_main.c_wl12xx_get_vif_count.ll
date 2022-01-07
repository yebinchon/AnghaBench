; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_get_vif_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_get_vif_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.vif_counter_data = type { %struct.ieee80211_vif* }

@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@wl12xx_vif_count_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.vif_counter_data*)* @wl12xx_get_vif_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl12xx_get_vif_count(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.vif_counter_data* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.vif_counter_data*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.vif_counter_data* %2, %struct.vif_counter_data** %6, align 8
  %7 = load %struct.vif_counter_data*, %struct.vif_counter_data** %6, align 8
  %8 = call i32 @memset(%struct.vif_counter_data* %7, i32 0, i32 8)
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %10 = load %struct.vif_counter_data*, %struct.vif_counter_data** %6, align 8
  %11 = getelementptr inbounds %struct.vif_counter_data, %struct.vif_counter_data* %10, i32 0, i32 0
  store %struct.ieee80211_vif* %9, %struct.ieee80211_vif** %11, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %14 = load i32, i32* @wl12xx_vif_count_iter, align 4
  %15 = load %struct.vif_counter_data*, %struct.vif_counter_data** %6, align 8
  %16 = call i32 @ieee80211_iterate_active_interfaces(%struct.ieee80211_hw* %12, i32 %13, i32 %14, %struct.vif_counter_data* %15)
  ret void
}

declare dso_local i32 @memset(%struct.vif_counter_data*, i32, i32) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces(%struct.ieee80211_hw*, i32, i32, %struct.vif_counter_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
