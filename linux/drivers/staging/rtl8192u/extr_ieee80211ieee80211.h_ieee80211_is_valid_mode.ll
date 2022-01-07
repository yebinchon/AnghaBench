; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_ieee80211ieee80211.h_ieee80211_is_valid_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_ieee80211ieee80211.h_ieee80211_is_valid_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32 }

@IEEE_A = common dso_local global i32 0, align 4
@IEEE80211_OFDM_MODULATION = common dso_local global i32 0, align 4
@IEEE80211_52GHZ_BAND = common dso_local global i32 0, align 4
@IEEE_G = common dso_local global i32 0, align 4
@IEEE80211_24GHZ_BAND = common dso_local global i32 0, align 4
@IEEE_B = common dso_local global i32 0, align 4
@IEEE80211_CCK_MODULATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_device*, i32)* @ieee80211_is_valid_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_is_valid_mode(%struct.ieee80211_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IEEE_A, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IEEE80211_OFDM_MODULATION, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IEEE80211_52GHZ_BAND, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %66

25:                                               ; preds = %17, %10, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @IEEE_G, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_OFDM_MODULATION, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IEEE80211_24GHZ_BAND, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %66

45:                                               ; preds = %37, %30, %25
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @IEEE_B, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IEEE80211_CCK_MODULATION, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IEEE80211_24GHZ_BAND, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %66

65:                                               ; preds = %57, %50, %45
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %44, %24
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
