; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_regd.c_rtw_regd_apply_hw_cap_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_regd.c_rtw_regd_apply_hw_cap_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_hw = type { %struct.rtw_dev* }
%struct.rtw_dev = type { %struct.rtw_efuse }
%struct.rtw_efuse = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RTW_CHANNEL_WIDTH_80 = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_CHAN_NO_80MHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*)* @rtw_regd_apply_hw_cap_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_regd_apply_hw_cap_flags(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_supported_band*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.rtw_dev*, align 8
  %7 = alloca %struct.rtw_efuse*, align 8
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  %9 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %10 = call %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy* %9)
  store %struct.ieee80211_hw* %10, %struct.ieee80211_hw** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %12, align 8
  store %struct.rtw_dev* %13, %struct.rtw_dev** %6, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 0
  store %struct.rtw_efuse* %15, %struct.rtw_efuse** %7, align 8
  %16 = load %struct.rtw_efuse*, %struct.rtw_efuse** %7, align 8
  %17 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RTW_CHANNEL_WIDTH_80, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %90

25:                                               ; preds = %1
  %26 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %27 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %26, i32 0, i32 0
  %28 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %27, align 8
  %29 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %30 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %28, i64 %29
  %31 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %30, align 8
  store %struct.ieee80211_supported_band* %31, %struct.ieee80211_supported_band** %4, align 8
  %32 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %33 = icmp ne %struct.ieee80211_supported_band* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %58

35:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %54, %35
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %43, i32 0, i32 1
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %45, i64 %47
  store %struct.ieee80211_channel* %48, %struct.ieee80211_channel** %5, align 8
  %49 = load i32, i32* @IEEE80211_CHAN_NO_80MHZ, align 4
  %50 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %36

57:                                               ; preds = %36
  br label %58

58:                                               ; preds = %57, %34
  %59 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %60 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %59, i32 0, i32 0
  %61 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %60, align 8
  %62 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %63 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %61, i64 %62
  %64 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %63, align 8
  store %struct.ieee80211_supported_band* %64, %struct.ieee80211_supported_band** %4, align 8
  %65 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %66 = icmp ne %struct.ieee80211_supported_band* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %90

68:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %87, %68
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %69
  %76 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %77 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %76, i32 0, i32 1
  %78 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %78, i64 %80
  store %struct.ieee80211_channel* %81, %struct.ieee80211_channel** %5, align 8
  %82 = load i32, i32* @IEEE80211_CHAN_NO_80MHZ, align 4
  %83 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %69

90:                                               ; preds = %24, %67, %69
  ret void
}

declare dso_local %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
