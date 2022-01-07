; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_regd.c__rtl_reg_apply_active_scan_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_regd.c__rtl_reg_apply_active_scan_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ieee80211_reg_rule = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i32 0, align 4
@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@NL80211_RRF_PASSIVE_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, i32)* @_rtl_reg_apply_active_scan_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_reg_apply_active_scan_flags(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.ieee80211_reg_rule*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %9 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %9, align 8
  %11 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %12 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, i64 %11
  %13 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %14 = icmp ne %struct.ieee80211_supported_band* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %135

16:                                               ; preds = %2
  %17 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %18 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %18, align 8
  %20 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %21 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, i64 %20
  %22 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %21, align 8
  store %struct.ieee80211_supported_band* %22, %struct.ieee80211_supported_band** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %16
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %27, i32 0, i32 0
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %28, align 8
  %30 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %29, i64 11
  store %struct.ieee80211_channel* %30, %struct.ieee80211_channel** %6, align 8
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %37, %26
  %45 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %45, i32 0, i32 0
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %46, align 8
  %48 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %47, i64 12
  store %struct.ieee80211_channel* %48, %struct.ieee80211_channel** %6, align 8
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %44
  %56 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %55, %44
  br label %135

63:                                               ; preds = %16
  %64 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %64, i32 0, i32 0
  %66 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %65, align 8
  %67 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %66, i64 11
  store %struct.ieee80211_channel* %67, %struct.ieee80211_channel** %6, align 8
  %68 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy* %68, i32 %71)
  store %struct.ieee80211_reg_rule* %72, %struct.ieee80211_reg_rule** %7, align 8
  %73 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %74 = call i32 @IS_ERR(%struct.ieee80211_reg_rule* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %99, label %76

76:                                               ; preds = %63
  %77 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %78 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @NL80211_RRF_PASSIVE_SCAN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %76
  %84 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %85 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %94 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %90, %83
  br label %98

98:                                               ; preds = %97, %76
  br label %99

99:                                               ; preds = %98, %63
  %100 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %101 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %100, i32 0, i32 0
  %102 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %101, align 8
  %103 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %102, i64 12
  store %struct.ieee80211_channel* %103, %struct.ieee80211_channel** %6, align 8
  %104 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %105 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %106 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy* %104, i32 %107)
  store %struct.ieee80211_reg_rule* %108, %struct.ieee80211_reg_rule** %7, align 8
  %109 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %110 = call i32 @IS_ERR(%struct.ieee80211_reg_rule* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %135, label %112

112:                                              ; preds = %99
  %113 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %114 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @NL80211_RRF_PASSIVE_SCAN, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %134, label %119

119:                                              ; preds = %112
  %120 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %121 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  %127 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %130 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %126, %119
  br label %134

134:                                              ; preds = %133, %112
  br label %135

135:                                              ; preds = %15, %62, %134, %99
  ret void
}

declare dso_local %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy*, i32) #1

declare dso_local i32 @IS_ERR(%struct.ieee80211_reg_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
