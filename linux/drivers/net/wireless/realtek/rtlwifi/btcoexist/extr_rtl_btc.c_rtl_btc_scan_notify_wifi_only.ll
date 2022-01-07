; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_scan_notify_wifi_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_scan_notify_wifi_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64 }
%struct.wifi_only_cfg = type { i32 }

@BAND_ON_5G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_btc_scan_notify_wifi_only(%struct.rtl_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca %struct.wifi_only_cfg*, align 8
  %7 = alloca i32, align 4
  store %struct.rtl_priv* %0, %struct.rtl_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %8)
  store %struct.rtl_hal* %9, %struct.rtl_hal** %5, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = call %struct.wifi_only_cfg* @rtl_btc_wifi_only(%struct.rtl_priv* %10)
  store %struct.wifi_only_cfg* %11, %struct.wifi_only_cfg** %6, align 8
  %12 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %13 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BAND_ON_5G, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %6, align 8
  %19 = icmp ne %struct.wifi_only_cfg* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @exhalbtc_scan_notify_wifi_only(%struct.wifi_only_cfg* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.wifi_only_cfg* @rtl_btc_wifi_only(%struct.rtl_priv*) #1

declare dso_local i32 @exhalbtc_scan_notify_wifi_only(%struct.wifi_only_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
