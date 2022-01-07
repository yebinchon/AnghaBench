; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_regd.c__rtl_reg_apply_beaconing_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_regd.c__rtl_reg_apply_beaconing_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i64, i32 }
%struct.ieee80211_reg_rule = type { i32 }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i32 0, align 4
@NL80211_RRF_NO_IBSS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IBSS = common dso_local global i32 0, align 4
@NL80211_RRF_PASSIVE_SCAN = common dso_local global i32 0, align 4
@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, i32)* @_rtl_reg_apply_beaconing_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_reg_apply_beaconing_flags(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.ieee80211_reg_rule*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %121, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %124

14:                                               ; preds = %10
  %15 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %16 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %15, i32 0, i32 0
  %17 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, i64 %19
  %21 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %20, align 8
  %22 = icmp ne %struct.ieee80211_supported_band* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %121

24:                                               ; preds = %14
  %25 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %26 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %25, i32 0, i32 0
  %27 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %27, i64 %29
  %31 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %30, align 8
  store %struct.ieee80211_supported_band* %31, %struct.ieee80211_supported_band** %6, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %117, %24
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %120

38:                                               ; preds = %32
  %39 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %39, i32 0, i32 1
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %41, i64 %43
  store %struct.ieee80211_channel* %44, %struct.ieee80211_channel** %8, align 8
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %46 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @_rtl_is_radar_freq(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %38
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %52 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50, %38
  br label %117

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %101

62:                                               ; preds = %58
  %63 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %64 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %65 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy* %63, i32 %66)
  store %struct.ieee80211_reg_rule* %67, %struct.ieee80211_reg_rule** %7, align 8
  %68 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %69 = call i64 @IS_ERR(%struct.ieee80211_reg_rule* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %117

72:                                               ; preds = %62
  %73 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %74 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @NL80211_RRF_NO_IBSS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @IEEE80211_CHAN_NO_IBSS, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %83 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %79, %72
  %87 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %88 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NL80211_RRF_PASSIVE_SCAN, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %86
  %94 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %97 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %93, %86
  br label %116

101:                                              ; preds = %58
  %102 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %103 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i32, i32* @IEEE80211_CHAN_NO_IBSS, align 4
  %108 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %109 = or i32 %107, %108
  %110 = xor i32 %109, -1
  %111 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %112 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %106, %101
  br label %116

116:                                              ; preds = %115, %100
  br label %117

117:                                              ; preds = %116, %71, %57
  %118 = load i32, i32* %9, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %32

120:                                              ; preds = %32
  br label %121

121:                                              ; preds = %120, %23
  %122 = load i32, i32* %5, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %10

124:                                              ; preds = %10
  ret void
}

declare dso_local i64 @_rtl_is_radar_freq(i32) #1

declare dso_local %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_reg_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
