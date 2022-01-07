; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_cfg80211.c_rtw_spt_band_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_cfg80211.c_rtw_spt_band_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i64 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@RTW_2G_CHANNELS_NUM = common dso_local global i32 0, align 4
@RTW_G_RATES_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_supported_band*)* @rtw_spt_band_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_spt_band_free(%struct.ieee80211_supported_band* %0) #0 {
  %2 = alloca %struct.ieee80211_supported_band*, align 8
  %3 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %5 = icmp ne %struct.ieee80211_supported_band* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %27

7:                                                ; preds = %1
  %8 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  %14 = load i32, i32* @RTW_2G_CHANNELS_NUM, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = add i64 8, %16
  %18 = load i32, i32* @RTW_G_RATES_NUM, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = add i64 %17, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %13, %7
  %24 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %25 = bitcast %struct.ieee80211_supported_band* %24 to i32*
  %26 = call i32 @kfree(i32* %25)
  br label %27

27:                                               ; preds = %23, %6
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
