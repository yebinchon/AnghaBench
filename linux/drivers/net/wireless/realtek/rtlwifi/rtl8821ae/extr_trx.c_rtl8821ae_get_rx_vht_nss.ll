; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_rtl8821ae_get_rx_vht_nss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_rtl8821ae_get_rx_vht_nss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@DESC_RATEVHT1SS_MCS0 = common dso_local global i64 0, align 8
@DESC_RATEVHT1SS_MCS9 = common dso_local global i64 0, align 8
@DESC_RATEVHT2SS_MCS0 = common dso_local global i64 0, align 8
@DESC_RATEVHT2SS_MCS9 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_hw*, i32*)* @rtl8821ae_get_rx_vht_nss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtl8821ae_get_rx_vht_nss(%struct.ieee80211_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @get_rx_desc_rxmcs(i32* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @DESC_RATEVHT1SS_MCS0, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @DESC_RATEVHT1SS_MCS9, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i64 1, i64* %6, align 8
  br label %27

17:                                               ; preds = %12, %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @DESC_RATEVHT2SS_MCS0, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @DESC_RATEVHT2SS_MCS9, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i64 2, i64* %6, align 8
  br label %26

26:                                               ; preds = %25, %21, %17
  br label %27

27:                                               ; preds = %26, %16
  %28 = load i64, i64* %6, align 8
  ret i64 %28
}

declare dso_local i64 @get_rx_desc_rxmcs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
