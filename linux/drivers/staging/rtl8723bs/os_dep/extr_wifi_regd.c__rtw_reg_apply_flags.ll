; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_wifi_regd.c__rtw_reg_apply_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_wifi_regd.c__rtw_reg_apply_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }
%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@SCAN_PASSIVE = common dso_local global i64 0, align 8
@IEEE80211_CHAN_NO_IR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*)* @_rtw_reg_apply_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtw_reg_apply_flags(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.mlme_ext_priv*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  %13 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %14 = call %struct.adapter* @wiphy_to_adapter(%struct.wiphy* %13)
  store %struct.adapter* %14, %struct.adapter** %3, align 8
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  store %struct.mlme_ext_priv* %16, %struct.mlme_ext_priv** %4, align 8
  %17 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %18 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %5, align 8
  %20 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %21 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %63, %1
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %29 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %28, i32 0, i32 0
  %30 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %30, i64 %32
  %34 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %33, align 8
  store %struct.ieee80211_supported_band* %34, %struct.ieee80211_supported_band** %7, align 8
  %35 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %36 = icmp ne %struct.ieee80211_supported_band* %35, null
  br i1 %36, label %37, label %62

37:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %58, %37
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %46 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %45, i32 0, i32 1
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %47, i64 %49
  store %struct.ieee80211_channel* %50, %struct.ieee80211_channel** %8, align 8
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %52 = icmp ne %struct.ieee80211_channel* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i64, i64* @IEEE80211_CHAN_DISABLED, align 8
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %38

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61, %27
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %23

66:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %104, %66
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %67
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %80 = call i32 @rtw_ieee80211_channel_to_frequency(i32 %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %81, i32 %82)
  store %struct.ieee80211_channel* %83, %struct.ieee80211_channel** %8, align 8
  %84 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %85 = icmp ne %struct.ieee80211_channel* %84, null
  br i1 %85, label %86, label %103

86:                                               ; preds = %71
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SCAN_PASSIVE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load i64, i64* @IEEE80211_CHAN_NO_IR, align 8
  %97 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %98 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %102

99:                                               ; preds = %86
  %100 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %101 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %95
  br label %103

103:                                              ; preds = %102, %71
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %9, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %67

107:                                              ; preds = %67
  ret void
}

declare dso_local %struct.adapter* @wiphy_to_adapter(%struct.wiphy*) #1

declare dso_local i32 @rtw_ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
