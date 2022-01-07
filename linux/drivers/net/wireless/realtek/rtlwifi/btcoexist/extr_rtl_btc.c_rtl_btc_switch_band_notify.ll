; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_switch_band_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_switch_band_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }
%struct.btc_coexist = type { i32 }

@BTC_NOT_SWITCH = common dso_local global i32 0, align 4
@BTC_SWITCH_TO_24G = common dso_local global i32 0, align 4
@BTC_SWITCH_TO_24G_NOFORSCAN = common dso_local global i32 0, align 4
@BTC_SWITCH_TO_5G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_btc_switch_band_notify(%struct.rtl_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.btc_coexist*, align 8
  %8 = alloca i32, align 4
  store %struct.rtl_priv* %0, %struct.rtl_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %10 = call %struct.btc_coexist* @rtl_btc_coexist(%struct.rtl_priv* %9)
  store %struct.btc_coexist* %10, %struct.btc_coexist** %7, align 8
  %11 = load i32, i32* @BTC_NOT_SWITCH, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %13 = icmp ne %struct.btc_coexist* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %35

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %27 [
    i32 129, label %17
    i32 128, label %25
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @BTC_SWITCH_TO_24G, align 4
  store i32 %21, i32* %8, align 4
  br label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @BTC_SWITCH_TO_24G_NOFORSCAN, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @BTC_SWITCH_TO_5G, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %15, %25, %24
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @BTC_NOT_SWITCH, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @exhalbtc_switch_band_notify(%struct.btc_coexist* %32, i32 %33)
  br label %35

35:                                               ; preds = %14, %31, %27
  ret void
}

declare dso_local %struct.btc_coexist* @rtl_btc_coexist(%struct.rtl_priv*) #1

declare dso_local i32 @exhalbtc_switch_band_notify(%struct.btc_coexist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
