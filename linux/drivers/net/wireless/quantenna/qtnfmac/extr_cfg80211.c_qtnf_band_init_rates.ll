; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_band_init_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_band_init_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32, i8*, i32* }

@qtnf_rates_2g = common dso_local global i8* null, align 8
@qtnf_rates_5g = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qtnf_band_init_rates(%struct.ieee80211_supported_band* %0) #0 {
  %2 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %2, align 8
  %3 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %24 [
    i32 129, label %6
    i32 128, label %15
  ]

6:                                                ; preds = %1
  %7 = load i8*, i8** @qtnf_rates_2g, align 8
  %8 = bitcast i8* %7 to i32*
  %9 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %9, i32 0, i32 2
  store i32* %8, i32** %10, align 8
  %11 = load i8*, i8** @qtnf_rates_2g, align 8
  %12 = call i8* @ARRAY_SIZE(i8* %11)
  %13 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  br label %29

15:                                               ; preds = %1
  %16 = load i8*, i8** @qtnf_rates_5g, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load i8*, i8** @qtnf_rates_5g, align 8
  %21 = call i8* @ARRAY_SIZE(i8* %20)
  %22 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %23 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %26 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %28 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %27, i32 0, i32 1
  store i8* null, i8** %28, align 8
  br label %29

29:                                               ; preds = %24, %15, %6
  ret void
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
