; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt76_init_sband.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt76_init_sband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.ieee80211_supported_band = type { i32, i32, i32*, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_rate* }
%struct.ieee80211_sta_ht_cap = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_rate = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_GRN_FLD = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@IEEE80211_HT_MAX_AMPDU_64K = common dso_local global i32 0, align 4
@IEEE80211_HT_MPDU_DENSITY_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*, %struct.ieee80211_supported_band*, %struct.ieee80211_channel*, i32, %struct.ieee80211_rate*, i32)* @mt76_init_sband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_init_sband(%struct.mt7601u_dev* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_channel* %2, i32 %3, %struct.ieee80211_rate* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mt7601u_dev*, align 8
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_rate*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %8, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %9, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ieee80211_rate* %4, %struct.ieee80211_rate** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %8, align 8
  %22 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @devm_kmemdup(i32 %23, %struct.ieee80211_channel* %24, i32 %25, i32 %26)
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %90

33:                                               ; preds = %6
  %34 = load i8*, i8** %15, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %40 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %12, align 8
  %42 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %43 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %42, i32 0, i32 4
  store %struct.ieee80211_rate* %41, %struct.ieee80211_rate** %43, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %48 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %47, i32 0, i32 3
  store %struct.ieee80211_sta_ht_cap* %48, %struct.ieee80211_sta_ht_cap** %14, align 8
  %49 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %14, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %52 = load i32, i32* @IEEE80211_HT_CAP_GRN_FLD, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC_SHIFT, align 4
  %59 = shl i32 1, %58
  %60 = or i32 %57, %59
  %61 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %14, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %14, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 255, i32* %67, align 4
  %68 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %14, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32 1, i32* %72, align 4
  %73 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %74 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %14, align 8
  %75 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_64K, align 4
  %78 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %14, align 8
  %79 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @IEEE80211_HT_MPDU_DENSITY_2, align 4
  %81 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %14, align 8
  %82 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %84 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %8, align 8
  %88 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32* %86, i32** %89, align 8
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %33, %30
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i8* @devm_kmemdup(i32, %struct.ieee80211_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
