; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_sta_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_sta_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.cw1200_common* }
%struct.cw1200_common = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.cw1200_sta_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cw1200_sta_notify(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.cw1200_common*, align 8
  %10 = alloca %struct.cw1200_sta_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %8, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %12, align 8
  store %struct.cw1200_common* %13, %struct.cw1200_common** %9, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.cw1200_sta_priv*
  store %struct.cw1200_sta_priv* %16, %struct.cw1200_sta_priv** %10, align 8
  %17 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %18 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.cw1200_sta_priv*, %struct.cw1200_sta_priv** %10, align 8
  %24 = getelementptr inbounds %struct.cw1200_sta_priv, %struct.cw1200_sta_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__cw1200_sta_notify(%struct.ieee80211_hw* %20, %struct.ieee80211_vif* %21, i32 %22, i32 %25)
  %27 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %28 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_bh(i32* %28)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__cw1200_sta_notify(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
