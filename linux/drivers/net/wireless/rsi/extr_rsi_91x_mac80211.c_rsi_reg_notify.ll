; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_reg_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_reg_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.regulatory_request = type { i32*, i32 }
%struct.ieee80211_hw = type { %struct.rsi_hw* }
%struct.rsi_hw = type { i32*, i32, %struct.rsi_common* }
%struct.rsi_common = type { i32, i32 }

@INFO_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"country = %s dfs_region = %d\0A\00", align 1
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"RSI region code = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.regulatory_request*)* @rsi_reg_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsi_reg_notify(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.rsi_hw*, align 8
  %9 = alloca %struct.rsi_common*, align 8
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %4, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %12 = call %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy* %11)
  store %struct.ieee80211_hw* %12, %struct.ieee80211_hw** %7, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.rsi_hw*, %struct.rsi_hw** %14, align 8
  store %struct.rsi_hw* %15, %struct.rsi_hw** %8, align 8
  %16 = load %struct.rsi_hw*, %struct.rsi_hw** %8, align 8
  %17 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %16, i32 0, i32 2
  %18 = load %struct.rsi_common*, %struct.rsi_common** %17, align 8
  store %struct.rsi_common* %18, %struct.rsi_common** %9, align 8
  %19 = load %struct.rsi_common*, %struct.rsi_common** %9, align 8
  %20 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* @INFO_ZONE, align 4
  %23 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %24 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = ptrtoint i32* %25 to i32
  %27 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %28 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, i32, ...) @rsi_dbg(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.rsi_common*, %struct.rsi_common** %9, align 8
  %32 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %80

35:                                               ; preds = %2
  %36 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %37 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %36, i32 0, i32 0
  %38 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %37, align 8
  %39 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %40 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %38, i64 %39
  %41 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %40, align 8
  store %struct.ieee80211_supported_band* %41, %struct.ieee80211_supported_band** %5, align 8
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %76, %35
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %42
  %49 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %49, i32 0, i32 1
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %51, i64 %53
  store %struct.ieee80211_channel* %54, %struct.ieee80211_channel** %6, align 8
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %76

62:                                               ; preds = %48
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %64 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %71 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %72 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %62
  br label %76

76:                                               ; preds = %75, %61
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %42

79:                                               ; preds = %42
  br label %80

80:                                               ; preds = %79, %2
  %81 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %82 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @rsi_map_region_code(i32 %83)
  %85 = load %struct.rsi_hw*, %struct.rsi_hw** %8, align 8
  %86 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @INFO_ZONE, align 4
  %88 = load %struct.rsi_hw*, %struct.rsi_hw** %8, align 8
  %89 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32, i8*, i32, ...) @rsi_dbg(i32 %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %93 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rsi_hw*, %struct.rsi_hw** %8, align 8
  %98 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %96, i32* %100, align 4
  %101 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %102 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.rsi_hw*, %struct.rsi_hw** %8, align 8
  %107 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 %105, i32* %109, align 4
  %110 = load %struct.rsi_common*, %struct.rsi_common** %9, align 8
  %111 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %110, i32 0, i32 1
  %112 = call i32 @mutex_unlock(i32* %111)
  ret void
}

declare dso_local %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rsi_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @rsi_map_region_code(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
