; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_wiphy_setup_if_comb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_wiphy_setup_if_comb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i64, i32, %struct.ieee80211_iface_combination* }
%struct.ieee80211_iface_combination = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qtnf_mac_info = type { i64, i32, %struct.ieee80211_iface_combination* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.qtnf_mac_info*)* @qtnf_wiphy_setup_if_comb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_wiphy_setup_if_comb(%struct.wiphy* %0, %struct.qtnf_mac_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.qtnf_mac_info*, align 8
  %6 = alloca %struct.ieee80211_iface_combination*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.qtnf_mac_info* %1, %struct.qtnf_mac_info** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %5, align 8
  %12 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %11, i32 0, i32 2
  %13 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %12, align 8
  store %struct.ieee80211_iface_combination* %13, %struct.ieee80211_iface_combination** %6, align 8
  %14 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %5, align 8
  %15 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %6, align 8
  %18 = icmp ne %struct.ieee80211_iface_combination* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %75

25:                                               ; preds = %19
  store i64 0, i64* %9, align 8
  br label %26

26:                                               ; preds = %62, %25
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  %31 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %5, align 8
  %32 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %34, i64 %35
  %37 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %36, i32 0, i32 2
  store i32 %33, i32* %37, align 8
  store i64 0, i64* %10, align 8
  br label %38

38:                                               ; preds = %58, %30
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %6, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %40, i64 %41
  %43 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %39, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %38
  %47 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %47, i64 %48
  %50 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %46
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %10, align 8
  br label %38

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  br label %26

65:                                               ; preds = %26
  %66 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %6, align 8
  %67 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %68 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %67, i32 0, i32 2
  store %struct.ieee80211_iface_combination* %66, %struct.ieee80211_iface_combination** %68, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %71 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %74 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %65, %22
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
