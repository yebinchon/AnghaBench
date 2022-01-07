; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_regd.c_rtw_regd_apply_beaconing_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_regd.c_rtw_regd_apply_beaconing_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ieee80211_reg_rule = type { i32 }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@NL80211_RRF_NO_IR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, i32)* @rtw_regd_apply_beaconing_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_regd_apply_beaconing_flags(%struct.wiphy* %0, i32 %1) #0 {
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

10:                                               ; preds = %80, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %83

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
  br label %80

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

32:                                               ; preds = %76, %24
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %32
  %39 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %39, i32 0, i32 1
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %41, i64 %43
  store %struct.ieee80211_channel* %44, %struct.ieee80211_channel** %8, align 8
  %45 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %47 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @MHZ_TO_KHZ(i32 %48)
  %50 = call %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy* %45, i32 %49)
  store %struct.ieee80211_reg_rule* %50, %struct.ieee80211_reg_rule** %7, align 8
  %51 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %52 = call i64 @IS_ERR(%struct.ieee80211_reg_rule* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  br label %76

55:                                               ; preds = %38
  %56 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %59 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NL80211_RRF_NO_IR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %55
  %69 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %72 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %68, %55
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %32

79:                                               ; preds = %32
  br label %80

80:                                               ; preds = %79, %23
  %81 = load i32, i32* %5, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %10

83:                                               ; preds = %10
  ret void
}

declare dso_local %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy*, i32) #1

declare dso_local i32 @MHZ_TO_KHZ(i32) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_reg_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
