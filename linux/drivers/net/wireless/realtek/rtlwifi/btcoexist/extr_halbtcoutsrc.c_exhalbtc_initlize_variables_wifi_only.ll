; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_initlize_variables_wifi_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_initlize_variables_wifi_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wifi_only_cfg = type { %struct.wifi_only_haldata, i32, %struct.rtl_priv* }
%struct.wifi_only_haldata = type { i64, i32, i32, i32, i32 }

@WIFIONLY_INTF_PCI = common dso_local global i32 0, align 4
@WIFIONLY_INTF_USB = common dso_local global i32 0, align 4
@WIFIONLY_INTF_UNKNOWN = common dso_local global i32 0, align 4
@CUSTOMER_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exhalbtc_initlize_variables_wifi_only(%struct.rtl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.wifi_only_cfg*, align 8
  %5 = alloca %struct.wifi_only_haldata*, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %3, align 8
  %6 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %7 = call %struct.wifi_only_cfg* @rtl_btc_wifi_only(%struct.rtl_priv* %6)
  store %struct.wifi_only_cfg* %7, %struct.wifi_only_cfg** %4, align 8
  %8 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %4, align 8
  %9 = icmp ne %struct.wifi_only_cfg* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

11:                                               ; preds = %1
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %4, align 8
  %14 = getelementptr inbounds %struct.wifi_only_cfg, %struct.wifi_only_cfg* %13, i32 0, i32 2
  store %struct.rtl_priv* %12, %struct.rtl_priv** %14, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %27 [
    i32 129, label %19
    i32 128, label %23
  ]

19:                                               ; preds = %11
  %20 = load i32, i32* @WIFIONLY_INTF_PCI, align 4
  %21 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.wifi_only_cfg, %struct.wifi_only_cfg* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %31

23:                                               ; preds = %11
  %24 = load i32, i32* @WIFIONLY_INTF_USB, align 4
  %25 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.wifi_only_cfg, %struct.wifi_only_cfg* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  br label %31

27:                                               ; preds = %11
  %28 = load i32, i32* @WIFIONLY_INTF_UNKNOWN, align 4
  %29 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %4, align 8
  %30 = getelementptr inbounds %struct.wifi_only_cfg, %struct.wifi_only_cfg* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %23, %19
  %32 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %4, align 8
  %33 = getelementptr inbounds %struct.wifi_only_cfg, %struct.wifi_only_cfg* %32, i32 0, i32 0
  store %struct.wifi_only_haldata* %33, %struct.wifi_only_haldata** %5, align 8
  %34 = load i32, i32* @CUSTOMER_NORMAL, align 4
  %35 = load %struct.wifi_only_haldata*, %struct.wifi_only_haldata** %5, align 8
  %36 = getelementptr inbounds %struct.wifi_only_haldata, %struct.wifi_only_haldata* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = call i32 @rtl_get_hwpg_ant_num(%struct.rtl_priv* %37)
  %39 = load %struct.wifi_only_haldata*, %struct.wifi_only_haldata** %5, align 8
  %40 = getelementptr inbounds %struct.wifi_only_haldata, %struct.wifi_only_haldata* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %42 = call i32 @rtl_get_hwpg_single_ant_path(%struct.rtl_priv* %41)
  %43 = load %struct.wifi_only_haldata*, %struct.wifi_only_haldata** %5, align 8
  %44 = getelementptr inbounds %struct.wifi_only_haldata, %struct.wifi_only_haldata* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %46 = call i32 @rtl_get_hwpg_rfe_type(%struct.rtl_priv* %45)
  %47 = load %struct.wifi_only_haldata*, %struct.wifi_only_haldata** %5, align 8
  %48 = getelementptr inbounds %struct.wifi_only_haldata, %struct.wifi_only_haldata* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.wifi_only_haldata*, %struct.wifi_only_haldata** %5, align 8
  %50 = getelementptr inbounds %struct.wifi_only_haldata, %struct.wifi_only_haldata* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %31, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.wifi_only_cfg* @rtl_btc_wifi_only(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_get_hwpg_ant_num(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_get_hwpg_single_ant_path(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_get_hwpg_rfe_type(%struct.rtl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
