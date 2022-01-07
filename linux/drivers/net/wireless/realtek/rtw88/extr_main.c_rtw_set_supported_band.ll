; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_set_supported_band.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_set_supported_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_2__*, %struct.rtw_dev* }
%struct.TYPE_2__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, i32 }
%struct.rtw_dev = type { i32 }
%struct.rtw_chip_info = type { i32, i64, i64 }

@RTW_BAND_2G = common dso_local global i32 0, align 4
@rtw_band_2ghz = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@RTW_BAND_5G = common dso_local global i32 0, align 4
@rtw_band_5ghz = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to set supported band\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.rtw_chip_info*)* @rtw_set_supported_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_set_supported_band(%struct.ieee80211_hw* %0, %struct.rtw_chip_info* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtw_chip_info*, align 8
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.rtw_chip_info* %1, %struct.rtw_chip_info** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 1
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  store %struct.rtw_dev* %9, %struct.rtw_dev** %5, align 8
  %10 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %11 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RTW_BAND_2G, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ieee80211_supported_band* @kmemdup(i32* @rtw_band_2ghz, i32 8, i32 %17)
  store %struct.ieee80211_supported_band* %18, %struct.ieee80211_supported_band** %6, align 8
  %19 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %20 = icmp ne %struct.ieee80211_supported_band* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %84

22:                                               ; preds = %16
  %23 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %24 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %29 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %29, i32 0, i32 1
  %31 = call i32 @rtw_init_ht_cap(%struct.rtw_dev* %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %37, align 8
  %39 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %40 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %38, i64 %39
  store %struct.ieee80211_supported_band* %33, %struct.ieee80211_supported_band** %40, align 8
  br label %41

41:                                               ; preds = %32, %2
  %42 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %43 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @RTW_BAND_5G, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %83

48:                                               ; preds = %41
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.ieee80211_supported_band* @kmemdup(i32* @rtw_band_5ghz, i32 8, i32 %49)
  store %struct.ieee80211_supported_band* %50, %struct.ieee80211_supported_band** %6, align 8
  %51 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %52 = icmp ne %struct.ieee80211_supported_band* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %84

54:                                               ; preds = %48
  %55 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %56 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %61 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %61, i32 0, i32 1
  %63 = call i32 @rtw_init_ht_cap(%struct.rtw_dev* %60, i32* %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %66 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %71 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %72 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %71, i32 0, i32 0
  %73 = call i32 @rtw_init_vht_cap(%struct.rtw_dev* %70, i32* %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %77 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %79, align 8
  %81 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %82 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %80, i64 %81
  store %struct.ieee80211_supported_band* %75, %struct.ieee80211_supported_band** %82, align 8
  br label %83

83:                                               ; preds = %74, %41
  br label %89

84:                                               ; preds = %53, %21
  %85 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %86 = call i32 @rtw_err(%struct.rtw_dev* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %88 = call i32 @kfree(%struct.ieee80211_supported_band* %87)
  br label %89

89:                                               ; preds = %84, %83
  ret void
}

declare dso_local %struct.ieee80211_supported_band* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @rtw_init_ht_cap(%struct.rtw_dev*, i32*) #1

declare dso_local i32 @rtw_init_vht_cap(%struct.rtw_dev*, i32*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @kfree(%struct.ieee80211_supported_band*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
