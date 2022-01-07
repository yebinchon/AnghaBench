; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.c_set_supported_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.c_set_supported_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NDIS_802_11_LENGTH_RATES_EX = common dso_local global i32 0, align 4
@WIFI_CCKRATES = common dso_local global i32 0, align 4
@IEEE80211_CCK_RATE_LEN = common dso_local global i32 0, align 4
@WIFI_OFDMRATES = common dso_local global i32 0, align 4
@IEEE80211_NUM_OFDM_RATESLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @set_supported_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_supported_rate(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @NDIS_802_11_LENGTH_RATES_EX, align 4
  %7 = call i32 @memset(i32* %5, i32 0, i32 %6)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %31 [
    i32 130, label %9
    i32 128, label %14
    i32 131, label %14
    i32 129, label %19
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @WIFI_CCKRATES, align 4
  %12 = load i32, i32* @IEEE80211_CCK_RATE_LEN, align 4
  %13 = call i32 @memcpy(i32* %10, i32 %11, i32 %12)
  br label %31

14:                                               ; preds = %2, %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @WIFI_OFDMRATES, align 4
  %17 = load i32, i32* @IEEE80211_NUM_OFDM_RATESLEN, align 4
  %18 = call i32 @memcpy(i32* %15, i32 %16, i32 %17)
  br label %31

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @WIFI_CCKRATES, align 4
  %22 = load i32, i32* @IEEE80211_CCK_RATE_LEN, align 4
  %23 = call i32 @memcpy(i32* %20, i32 %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @IEEE80211_CCK_RATE_LEN, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* @WIFI_OFDMRATES, align 4
  %29 = load i32, i32* @IEEE80211_NUM_OFDM_RATESLEN, align 4
  %30 = call i32 @memcpy(i32* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %2, %19, %14, %9
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
