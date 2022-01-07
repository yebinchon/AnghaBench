; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_ampdu_params = type { i32, i32, %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_ampdu_params*)* @rtw_ops_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_ops_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_ampdu_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_ampdu_params*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_ampdu_params* %2, %struct.ieee80211_ampdu_params** %7, align 8
  %10 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %11 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %10, i32 0, i32 2
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  store %struct.ieee80211_sta* %12, %struct.ieee80211_sta** %8, align 8
  %13 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %34 [
    i32 131, label %19
    i32 130, label %26
    i32 129, label %26
    i32 128, label %26
    i32 132, label %33
    i32 134, label %33
    i32 133, label %33
  ]

19:                                               ; preds = %3
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %20, i32 %23, i32 %24)
  br label %38

26:                                               ; preds = %3, %3, %3
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %27, i32 %30, i32 %31)
  br label %38

33:                                               ; preds = %3, %3, %3
  br label %38

34:                                               ; preds = %3
  %35 = call i32 @WARN_ON(i32 1)
  %36 = load i32, i32* @ENOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %33, %26, %19
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
