; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt76_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt76_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7601u_dev* }
%struct.mt7601u_dev = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_ampdu_params = type { i32, i64, i64, %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32, i64 }
%struct.mt76_sta = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_ampdu_params*)* @mt76_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_ampdu_params* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_ampdu_params*, align 8
  %7 = alloca %struct.mt7601u_dev*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mt76_sta*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_ampdu_params* %2, %struct.ieee80211_ampdu_params** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %14, align 8
  store %struct.mt7601u_dev* %15, %struct.mt7601u_dev** %7, align 8
  %16 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %16, i32 0, i32 3
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  store %struct.ieee80211_sta* %18, %struct.ieee80211_sta** %8, align 8
  %19 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.mt76_sta*
  store %struct.mt76_sta* %31, %struct.mt76_sta** %12, align 8
  %32 = load %struct.mt76_sta*, %struct.mt76_sta** %12, align 8
  %33 = getelementptr inbounds %struct.mt76_sta, %struct.mt76_sta* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @GROUP_WCID(i32 0)
  %37 = icmp sgt i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %102 [
    i32 134, label %41
    i32 133, label %54
    i32 132, label %67
    i32 129, label %80
    i32 128, label %80
    i32 131, label %81
    i32 130, label %95
  ]

41:                                               ; preds = %3
  %42 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %43 = load %struct.mt76_sta*, %struct.mt76_sta** %12, align 8
  %44 = getelementptr inbounds %struct.mt76_sta, %struct.mt76_sta* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @MT_WCID_ADDR(i64 %46)
  %48 = add nsw i32 %47, 4
  %49 = load i64, i64* %10, align 8
  %50 = add i64 16, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @BIT(i32 %51)
  %53 = call i32 @mt76_set(%struct.mt7601u_dev* %42, i32 %48, i32 %52)
  br label %102

54:                                               ; preds = %3
  %55 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %56 = load %struct.mt76_sta*, %struct.mt76_sta** %12, align 8
  %57 = getelementptr inbounds %struct.mt76_sta, %struct.mt76_sta* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @MT_WCID_ADDR(i64 %59)
  %61 = add nsw i32 %60, 4
  %62 = load i64, i64* %10, align 8
  %63 = add i64 16, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @BIT(i32 %64)
  %66 = call i32 @mt76_clear(%struct.mt7601u_dev* %55, i32 %61, i32 %65)
  br label %102

67:                                               ; preds = %3
  %68 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %69 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.mt76_sta*, %struct.mt76_sta** %12, align 8
  %74 = getelementptr inbounds %struct.mt76_sta, %struct.mt76_sta* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @ieee80211_send_bar(%struct.ieee80211_vif* %68, i32 %71, i64 %72, i64 %78)
  br label %102

80:                                               ; preds = %3, %3
  br label %102

81:                                               ; preds = %3
  %82 = load i64, i64* %11, align 8
  %83 = shl i64 %82, 4
  %84 = load %struct.mt76_sta*, %struct.mt76_sta** %12, align 8
  %85 = getelementptr inbounds %struct.mt76_sta, %struct.mt76_sta* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  store i64 %83, i64* %88, align 8
  %89 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %90 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %91 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %89, i32 %92, i64 %93)
  br label %102

95:                                               ; preds = %3
  %96 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %97 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %98 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %96, i32 %99, i64 %100)
  br label %102

102:                                              ; preds = %3, %95, %81, %80, %67, %54, %41
  ret i32 0
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @GROUP_WCID(i32) #1

declare dso_local i32 @mt76_set(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @MT_WCID_ADDR(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76_clear(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @ieee80211_send_bar(%struct.ieee80211_vif*, i32, i64, i64) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
