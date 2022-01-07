; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_init.c_mt76x0_vht_cap_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_init.c_mt76x0_vht_cap_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { %struct.ieee80211_sta_vht_cap }
%struct.ieee80211_sta_vht_cap = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@IEEE80211_VHT_CAP_RXLDPC = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_SUPPORT_0_7 = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_supported_band*)* @mt76x0_vht_cap_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0_vht_cap_mask(%struct.ieee80211_supported_band* %0) #0 {
  %2 = alloca %struct.ieee80211_supported_band*, align 8
  %3 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %2, align 8
  %6 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %6, i32 0, i32 0
  store %struct.ieee80211_sta_vht_cap* %7, %struct.ieee80211_sta_vht_cap** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @IEEE80211_VHT_CAP_RXLDPC, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %35, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 2
  %24 = shl i32 %21, %23
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %34

27:                                               ; preds = %17
  %28 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 2
  %31 = shl i32 %28, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %20
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %14

38:                                               ; preds = %14
  %39 = load i32, i32* %4, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %3, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
