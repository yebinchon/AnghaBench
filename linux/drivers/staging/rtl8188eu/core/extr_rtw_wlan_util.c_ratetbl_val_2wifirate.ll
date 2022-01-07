; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_ratetbl_val_2wifirate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_ratetbl_val_2wifirate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_CCK_RATE_1MB = common dso_local global i8 0, align 1
@IEEE80211_CCK_RATE_2MB = common dso_local global i8 0, align 1
@IEEE80211_CCK_RATE_5MB = common dso_local global i8 0, align 1
@IEEE80211_CCK_RATE_11MB = common dso_local global i8 0, align 1
@IEEE80211_OFDM_RATE_6MB = common dso_local global i8 0, align 1
@IEEE80211_OFDM_RATE_9MB = common dso_local global i8 0, align 1
@IEEE80211_OFDM_RATE_12MB = common dso_local global i8 0, align 1
@IEEE80211_OFDM_RATE_18MB = common dso_local global i8 0, align 1
@IEEE80211_OFDM_RATE_24MB = common dso_local global i8 0, align 1
@IEEE80211_OFDM_RATE_36MB = common dso_local global i8 0, align 1
@IEEE80211_OFDM_RATE_48MB = common dso_local global i8 0, align 1
@IEEE80211_OFDM_RATE_54MB = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8)* @ratetbl_val_2wifirate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @ratetbl_val_2wifirate(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = and i32 %5, 127
  switch i32 %6, label %31 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
    i32 4, label %15
    i32 5, label %17
    i32 6, label %19
    i32 7, label %21
    i32 8, label %23
    i32 9, label %25
    i32 10, label %27
    i32 11, label %29
  ]

7:                                                ; preds = %1
  %8 = load i8, i8* @IEEE80211_CCK_RATE_1MB, align 1
  store i8 %8, i8* %2, align 1
  br label %32

9:                                                ; preds = %1
  %10 = load i8, i8* @IEEE80211_CCK_RATE_2MB, align 1
  store i8 %10, i8* %2, align 1
  br label %32

11:                                               ; preds = %1
  %12 = load i8, i8* @IEEE80211_CCK_RATE_5MB, align 1
  store i8 %12, i8* %2, align 1
  br label %32

13:                                               ; preds = %1
  %14 = load i8, i8* @IEEE80211_CCK_RATE_11MB, align 1
  store i8 %14, i8* %2, align 1
  br label %32

15:                                               ; preds = %1
  %16 = load i8, i8* @IEEE80211_OFDM_RATE_6MB, align 1
  store i8 %16, i8* %2, align 1
  br label %32

17:                                               ; preds = %1
  %18 = load i8, i8* @IEEE80211_OFDM_RATE_9MB, align 1
  store i8 %18, i8* %2, align 1
  br label %32

19:                                               ; preds = %1
  %20 = load i8, i8* @IEEE80211_OFDM_RATE_12MB, align 1
  store i8 %20, i8* %2, align 1
  br label %32

21:                                               ; preds = %1
  %22 = load i8, i8* @IEEE80211_OFDM_RATE_18MB, align 1
  store i8 %22, i8* %2, align 1
  br label %32

23:                                               ; preds = %1
  %24 = load i8, i8* @IEEE80211_OFDM_RATE_24MB, align 1
  store i8 %24, i8* %2, align 1
  br label %32

25:                                               ; preds = %1
  %26 = load i8, i8* @IEEE80211_OFDM_RATE_36MB, align 1
  store i8 %26, i8* %2, align 1
  br label %32

27:                                               ; preds = %1
  %28 = load i8, i8* @IEEE80211_OFDM_RATE_48MB, align 1
  store i8 %28, i8* %2, align 1
  br label %32

29:                                               ; preds = %1
  %30 = load i8, i8* @IEEE80211_OFDM_RATE_54MB, align 1
  store i8 %30, i8* %2, align 1
  br label %32

31:                                               ; preds = %1
  store i8 0, i8* %2, align 1
  br label %32

32:                                               ; preds = %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7
  %33 = load i8, i8* %2, align 1
  ret i8 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
