; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_start_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_ap_settings = type { i32, i32, i32, i32 }
%struct.wilc_vif = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Error in setting channel\0A\00", align 1
@WILC_AP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_ap_settings*)* @start_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_ap(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_ap_settings* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfg80211_ap_settings*, align 8
  %7 = alloca %struct.wilc_vif*, align 8
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.cfg80211_ap_settings* %2, %struct.cfg80211_ap_settings** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %9)
  store %struct.wilc_vif* %10, %struct.wilc_vif** %7, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %12 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %6, align 8
  %13 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %12, i32 0, i32 3
  %14 = call i32 @set_channel(%struct.wiphy* %11, i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call i32 @netdev_err(%struct.net_device* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @WILC_AP_MODE, align 4
  %26 = call i32 @wilc_wlan_set_bssid(%struct.net_device* %21, i32 %24, i32 %25)
  %27 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %28 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %6, align 8
  %29 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %6, align 8
  %32 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %6, align 8
  %35 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %34, i32 0, i32 0
  %36 = call i32 @wilc_add_beacon(%struct.wilc_vif* %27, i32 %30, i32 %33, i32* %35)
  ret i32 %36
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_channel(%struct.wiphy*, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @wilc_wlan_set_bssid(%struct.net_device*, i32, i32) #1

declare dso_local i32 @wilc_add_beacon(%struct.wilc_vif*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
