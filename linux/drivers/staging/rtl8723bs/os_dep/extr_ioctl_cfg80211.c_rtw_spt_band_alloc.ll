; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_cfg80211.c_rtw_spt_band_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_cfg80211.c_rtw_spt_band_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32, i32, i32, %struct.ieee80211_rate*, %struct.ieee80211_channel* }
%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_channel = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@RTW_2G_CHANNELS_NUM = common dso_local global i32 0, align 4
@RTW_G_RATES_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_supported_band* (i32)* @rtw_spt_band_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_supported_band* @rtw_spt_band_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_supported_band*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.ieee80211_supported_band* null, %struct.ieee80211_supported_band** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @RTW_2G_CHANNELS_NUM, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @RTW_G_RATES_NUM, align 4
  store i32 %11, i32* %5, align 4
  br label %13

12:                                               ; preds = %1
  br label %67

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = add i64 32, %16
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = add i64 %17, %20
  %22 = trunc i64 %21 to i32
  %23 = call %struct.ieee80211_supported_band* @rtw_zmalloc(i32 %22)
  store %struct.ieee80211_supported_band* %23, %struct.ieee80211_supported_band** %3, align 8
  %24 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %25 = icmp ne %struct.ieee80211_supported_band* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  br label %67

27:                                               ; preds = %13
  %28 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %29 = bitcast %struct.ieee80211_supported_band* %28 to i32*
  %30 = getelementptr inbounds i32, i32* %29, i64 32
  %31 = bitcast i32* %30 to %struct.ieee80211_channel*
  %32 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %32, i32 0, i32 4
  store %struct.ieee80211_channel* %31, %struct.ieee80211_channel** %33, align 8
  %34 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %34, i32 0, i32 4
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %35, align 8
  %37 = bitcast %struct.ieee80211_channel* %36 to i32*
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = bitcast i32* %41 to %struct.ieee80211_rate*
  %43 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %43, i32 0, i32 3
  store %struct.ieee80211_rate* %42, %struct.ieee80211_rate** %44, align 8
  %45 = load i32, i32* %2, align 4
  %46 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %50 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %53 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %27
  %58 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %59 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %58, i32 0, i32 4
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %59, align 8
  %61 = call i32 @rtw_2g_channels_init(%struct.ieee80211_channel* %60)
  %62 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %63 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %62, i32 0, i32 3
  %64 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %63, align 8
  %65 = call i32 @rtw_2g_rates_init(%struct.ieee80211_rate* %64)
  br label %66

66:                                               ; preds = %57, %27
  br label %67

67:                                               ; preds = %66, %26, %12
  %68 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  ret %struct.ieee80211_supported_band* %68
}

declare dso_local %struct.ieee80211_supported_band* @rtw_zmalloc(i32) #1

declare dso_local i32 @rtw_2g_channels_init(%struct.ieee80211_channel*) #1

declare dso_local i32 @rtw_2g_rates_init(%struct.ieee80211_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
