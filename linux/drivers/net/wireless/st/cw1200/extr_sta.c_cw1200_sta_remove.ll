; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_sta_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_sta_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.cw1200_common* }
%struct.cw1200_common = type { i64, i32, i32, i32, %struct.cw1200_link_entry* }
%struct.cw1200_link_entry = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.cw1200_sta_priv = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@CW1200_LINK_RESERVE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_sta_remove(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.cw1200_common*, align 8
  %9 = alloca %struct.cw1200_sta_priv*, align 8
  %10 = alloca %struct.cw1200_link_entry*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %12, align 8
  store %struct.cw1200_common* %13, %struct.cw1200_common** %8, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.cw1200_sta_priv*
  store %struct.cw1200_sta_priv* %16, %struct.cw1200_sta_priv** %9, align 8
  %17 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %18 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.cw1200_sta_priv*, %struct.cw1200_sta_priv** %9, align 8
  %24 = getelementptr inbounds %struct.cw1200_sta_priv, %struct.cw1200_sta_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %3
  store i32 0, i32* %4, align 4
  br label %67

28:                                               ; preds = %22
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %30 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %29, i32 0, i32 4
  %31 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %30, align 8
  %32 = load %struct.cw1200_sta_priv*, %struct.cw1200_sta_priv** %9, align 8
  %33 = getelementptr inbounds %struct.cw1200_sta_priv, %struct.cw1200_sta_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %31, i64 %36
  store %struct.cw1200_link_entry* %37, %struct.cw1200_link_entry** %10, align 8
  %38 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %39 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %38, i32 0, i32 2
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load i32, i32* @CW1200_LINK_RESERVE, align 4
  %42 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %10, align 8
  %43 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @jiffies, align 4
  %45 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %10, align 8
  %46 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %48 = call i32 @wsm_lock_tx_async(%struct.cw1200_common* %47)
  %49 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %50 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %53 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %52, i32 0, i32 3
  %54 = call i64 @queue_work(i32 %51, i32* %53)
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %28
  %57 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %58 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %57)
  br label %59

59:                                               ; preds = %56, %28
  %60 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %61 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %60, i32 0, i32 2
  %62 = call i32 @spin_unlock_bh(i32* %61)
  %63 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %64 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @flush_workqueue(i32 %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %59, %27
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @wsm_lock_tx_async(%struct.cw1200_common*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
