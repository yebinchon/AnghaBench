; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_pci.c_mt76x0e_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_pci.c_mt76x0e_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt76x02_dev* }
%struct.mt76x02_dev = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @mt76x0e_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0e_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.mt76x02_dev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %14, align 8
  store %struct.mt76x02_dev* %15, %struct.mt76x02_dev** %12, align 8
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %12, align 8
  %17 = call i64 @is_mt7630(%struct.mt76x02_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %29

22:                                               ; preds = %5
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %27 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %28 = call i32 @mt76x02_set_key(%struct.ieee80211_hw* %23, i32 %24, %struct.ieee80211_vif* %25, %struct.ieee80211_sta* %26, %struct.ieee80211_key_conf* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i64 @is_mt7630(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_set_key(%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
