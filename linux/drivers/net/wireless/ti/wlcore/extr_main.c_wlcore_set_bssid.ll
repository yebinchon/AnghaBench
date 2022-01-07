; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_set_bssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_set_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__*, %struct.wl12xx_vif* }
%struct.TYPE_2__ = type { i32 (%struct.wl1271*, %struct.wl12xx_vif*)* }
%struct.wl12xx_vif = type { i32, i32, i8*, i8*, i32, i32 }
%struct.ieee80211_bss_conf = type { i64, i32, i32, i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"changed_bssid: %pM, aid: %d, bcn_int: %d, brates: 0x%x sta_rate_set: 0x%x\00", align 1
@WLVIF_FLAG_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_bss_conf*, i64)* @wlcore_set_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_set_bssid(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.ieee80211_bss_conf* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca %struct.wl12xx_vif*, align 8
  %8 = alloca %struct.ieee80211_bss_conf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %7, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @DEBUG_MAC80211, align 4
  %13 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %8, align 8
  %14 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %8, align 8
  %17 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %8, align 8
  %23 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @wl1271_debug(i32 %12, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i64 %24, i64 %25)
  %27 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %31 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %38 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @wl1271_tx_enabled_rates_get(%struct.wl1271* %35, i64 %36, i32 %39)
  %41 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %42 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %44 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %45 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %43, i8* %46)
  %48 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %49 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %4
  %53 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %56 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @wl1271_tx_enabled_rates_get(%struct.wl1271* %53, i64 %54, i32 %57)
  %59 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %60 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %52, %4
  %62 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %63 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %62, i32 0, i32 1
  %64 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %63, align 8
  %65 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %66 = icmp eq %struct.wl12xx_vif* %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %69 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32 (%struct.wl1271*, %struct.wl12xx_vif*)*, i32 (%struct.wl1271*, %struct.wl12xx_vif*)** %71, align 8
  %73 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %74 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %75 = call i32 %72(%struct.wl1271* %73, %struct.wl12xx_vif* %74)
  br label %76

76:                                               ; preds = %67, %61
  %77 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %78 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %79 = call i32 @wl1271_acx_sta_rate_policies(%struct.wl1271* %77, %struct.wl12xx_vif* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %109

84:                                               ; preds = %76
  %85 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %86 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %87 = call i32 @wl12xx_cmd_build_null_data(%struct.wl1271* %85, %struct.wl12xx_vif* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %5, align 4
  br label %109

92:                                               ; preds = %84
  %93 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %94 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %95 = call i32 @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %94)
  %96 = call i32 @wl1271_build_qos_null_data(%struct.wl1271* %93, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %5, align 4
  br label %109

101:                                              ; preds = %92
  %102 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %103 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %104 = call i32 @wlcore_set_ssid(%struct.wl1271* %102, %struct.wl12xx_vif* %103)
  %105 = load i32, i32* @WLVIF_FLAG_IN_USE, align 4
  %106 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %107 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %106, i32 0, i32 0
  %108 = call i32 @set_bit(i32 %105, i32* %107)
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %101, %99, %90, %82
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32, i32, i64, i64) #1

declare dso_local i8* @wl1271_tx_enabled_rates_get(%struct.wl1271*, i64, i32) #1

declare dso_local i32 @wl1271_tx_min_rate_get(%struct.wl1271*, i8*) #1

declare dso_local i32 @wl1271_acx_sta_rate_policies(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_cmd_build_null_data(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_build_qos_null_data(%struct.wl1271*, i32) #1

declare dso_local i32 @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local i32 @wlcore_set_ssid(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
