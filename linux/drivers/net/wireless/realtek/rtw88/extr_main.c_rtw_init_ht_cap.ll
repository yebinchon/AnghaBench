; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_init_ht_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_init_ht_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_efuse }
%struct.rtw_efuse = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ieee80211_sta_ht_cap = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32*, i8*, i32 }

@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC_SHIFT = common dso_local global i32 0, align 4
@RTW_CHANNEL_WIDTH_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_DSSSCCK40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_MAX_AMPDU_64K = common dso_local global i32 0, align 4
@IEEE80211_HT_MPDU_DENSITY_16 = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.ieee80211_sta_ht_cap*)* @rtw_init_ht_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_init_ht_cap(%struct.rtw_dev* %0, %struct.ieee80211_sta_ht_cap* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %5 = alloca %struct.rtw_efuse*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.ieee80211_sta_ht_cap* %1, %struct.ieee80211_sta_ht_cap** %4, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 0
  store %struct.rtw_efuse* %7, %struct.rtw_efuse** %5, align 8
  %8 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %13 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC_SHIFT, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  %20 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %25 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RTW_CHANNEL_WIDTH_40, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %2
  %33 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %34 = load i32, i32* @IEEE80211_HT_CAP_DSSSCCK40, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %32, %2
  %43 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_64K, align 4
  %44 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @IEEE80211_HT_MPDU_DENSITY_16, align 4
  %47 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %50 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %54 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %78

58:                                               ; preds = %42
  %59 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 255, i32* %63, align 4
  %64 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 255, i32* %68, align 4
  %69 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  store i32 1, i32* %73, align 4
  %74 = call i8* @cpu_to_le16(i32 300)
  %75 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  br label %98

78:                                               ; preds = %42
  %79 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %80 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 255, i32* %83, align 4
  %84 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 0, i32* %88, align 4
  %89 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %90 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  store i32 1, i32* %93, align 4
  %94 = call i8* @cpu_to_le16(i32 150)
  %95 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %96 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i8* %94, i8** %97, align 8
  br label %98

98:                                               ; preds = %78, %58
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
