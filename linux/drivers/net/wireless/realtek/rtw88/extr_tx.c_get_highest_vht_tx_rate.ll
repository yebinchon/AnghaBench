; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_tx.c_get_highest_vht_tx_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_tx.c_get_highest_vht_tx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_efuse }
%struct.rtw_efuse = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DESC_RATEVHT1SS_MCS7 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS8 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS9 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS7 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS8 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, %struct.ieee80211_sta*)* @get_highest_vht_tx_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_highest_vht_tx_rate(%struct.rtw_dev* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.rtw_efuse*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  store %struct.rtw_efuse* %9, %struct.rtw_efuse** %5, align 8
  %10 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %17 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 3
  switch i32 %23, label %28 [
    i32 130, label %24
    i32 129, label %26
    i32 128, label %29
  ]

24:                                               ; preds = %21
  %25 = load i32, i32* @DESC_RATEVHT1SS_MCS7, align 4
  store i32 %25, i32* %6, align 4
  br label %31

26:                                               ; preds = %21
  %27 = load i32, i32* @DESC_RATEVHT1SS_MCS8, align 4
  store i32 %27, i32* %6, align 4
  br label %31

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %21, %28
  %30 = load i32, i32* @DESC_RATEVHT1SS_MCS9, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %26, %24
  br label %53

32:                                               ; preds = %2
  %33 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %34 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 2
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 12
  %41 = ashr i32 %40, 2
  switch i32 %41, label %46 [
    i32 130, label %42
    i32 129, label %44
    i32 128, label %47
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* @DESC_RATEVHT2SS_MCS7, align 4
  store i32 %43, i32* %6, align 4
  br label %49

44:                                               ; preds = %38
  %45 = load i32, i32* @DESC_RATEVHT2SS_MCS8, align 4
  store i32 %45, i32* %6, align 4
  br label %49

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %38, %46
  %48 = load i32, i32* @DESC_RATEVHT2SS_MCS9, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %44, %42
  br label %52

50:                                               ; preds = %32
  %51 = load i32, i32* @DESC_RATEVHT1SS_MCS9, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %49
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
