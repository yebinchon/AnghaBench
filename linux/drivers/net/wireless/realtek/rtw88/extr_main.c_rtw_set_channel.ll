; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info*, %struct.rtw_hal, %struct.ieee80211_hw* }
%struct.rtw_chip_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.rtw_dev*, i32, i32, i32)* }
%struct.rtw_hal = type { i32, i32, i64, i32* }
%struct.ieee80211_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rtw_channel_params = type { i64, i32, i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"Invalid channel\0A\00", align 1
@RTW_BAND_5G = common dso_local global i64 0, align 8
@RTW_BAND_2G = common dso_local global i64 0, align 8
@RTW_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@RTW_MAX_CHANNEL_WIDTH = common dso_local global i32 0, align 4
@COEX_SWITCH_TO_5G = common dso_local global i32 0, align 4
@RTW_FLAG_SCANNING = common dso_local global i32 0, align 4
@COEX_SWITCH_TO_24G = common dso_local global i32 0, align 4
@COEX_SWITCH_TO_24G_NOFORSCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_set_channel(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtw_hal*, align 8
  %5 = alloca %struct.rtw_chip_info*, align 8
  %6 = alloca %struct.rtw_channel_params, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 2
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  store %struct.ieee80211_hw* %13, %struct.ieee80211_hw** %3, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 1
  store %struct.rtw_hal* %15, %struct.rtw_hal** %4, align 8
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %17 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %16, i32 0, i32 0
  %18 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %17, align 8
  store %struct.rtw_chip_info* %18, %struct.rtw_chip_info** %5, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @rtw_get_channel_params(i32* %21, %struct.rtw_channel_params* %6)
  %23 = getelementptr inbounds %struct.rtw_channel_params, %struct.rtw_channel_params* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %113

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.rtw_channel_params, %struct.rtw_channel_params* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = getelementptr inbounds %struct.rtw_channel_params, %struct.rtw_channel_params* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = getelementptr inbounds %struct.rtw_channel_params, %struct.rtw_channel_params* %6, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.rtw_hal*, %struct.rtw_hal** %4, align 8
  %40 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.rtw_hal*, %struct.rtw_hal** %4, align 8
  %43 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 14
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i64, i64* @RTW_BAND_5G, align 8
  br label %50

48:                                               ; preds = %30
  %49 = load i64, i64* @RTW_BAND_2G, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ]
  %52 = load %struct.rtw_hal*, %struct.rtw_hal** %4, align 8
  %53 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* @RTW_CHANNEL_WIDTH_20, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %72, %50
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @RTW_MAX_CHANNEL_WIDTH, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.rtw_channel_params, %struct.rtw_channel_params* %6, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rtw_hal*, %struct.rtw_hal** %4, align 8
  %67 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %55

75:                                               ; preds = %55
  %76 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %77 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32 (%struct.rtw_dev*, i32, i32, i32)*, i32 (%struct.rtw_dev*, i32, i32, i32)** %79, align 8
  %81 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 %80(%struct.rtw_dev* %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.rtw_hal*, %struct.rtw_hal** %4, align 8
  %87 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @RTW_BAND_5G, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %75
  %92 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %93 = load i32, i32* @COEX_SWITCH_TO_5G, align 4
  %94 = call i32 @rtw_coex_switchband_notify(%struct.rtw_dev* %92, i32 %93)
  br label %109

95:                                               ; preds = %75
  %96 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %97 = load i32, i32* @RTW_FLAG_SCANNING, align 4
  %98 = call i64 @rtw_flag_check(%struct.rtw_dev* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %102 = load i32, i32* @COEX_SWITCH_TO_24G, align 4
  %103 = call i32 @rtw_coex_switchband_notify(%struct.rtw_dev* %101, i32 %102)
  br label %108

104:                                              ; preds = %95
  %105 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %106 = load i32, i32* @COEX_SWITCH_TO_24G_NOFORSCAN, align 4
  %107 = call i32 @rtw_coex_switchband_notify(%struct.rtw_dev* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %91
  %110 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @rtw_phy_set_tx_power_level(%struct.rtw_dev* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %29
  ret void
}

declare dso_local i32 @rtw_get_channel_params(i32*, %struct.rtw_channel_params*) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @rtw_coex_switchband_notify(%struct.rtw_dev*, i32) #1

declare dso_local i64 @rtw_flag_check(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_phy_set_tx_power_level(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
