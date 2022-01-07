; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_switch_band_notify_wifionly.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_switch_band_notify_wifionly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }
%struct.wifi_only_cfg = type { i32 }

@BAND_ON_5G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_btc_switch_band_notify_wifionly(%struct.rtl_priv* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wifi_only_cfg*, align 8
  %8 = alloca i64, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %10 = call %struct.wifi_only_cfg* @rtl_btc_wifi_only(%struct.rtl_priv* %9)
  store %struct.wifi_only_cfg* %10, %struct.wifi_only_cfg** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @BAND_ON_5G, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  %16 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %7, align 8
  %17 = icmp ne %struct.wifi_only_cfg* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @exhalbtc_switch_band_notify_wifi_only(%struct.wifi_only_cfg* %20, i64 %21)
  br label %23

23:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.wifi_only_cfg* @rtl_btc_wifi_only(%struct.rtl_priv*) #1

declare dso_local i32 @exhalbtc_switch_band_notify_wifi_only(%struct.wifi_only_cfg*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
