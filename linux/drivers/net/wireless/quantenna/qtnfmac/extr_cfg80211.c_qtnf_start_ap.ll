; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_start_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_ap_settings = type { i32 }
%struct.qtnf_vif = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"VIF%u.%u: failed to start AP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_ap_settings*)* @qtnf_start_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_start_ap(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_ap_settings* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfg80211_ap_settings*, align 8
  %7 = alloca %struct.qtnf_vif*, align 8
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.cfg80211_ap_settings* %2, %struct.cfg80211_ap_settings** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device* %9)
  store %struct.qtnf_vif* %10, %struct.qtnf_vif** %7, align 8
  %11 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %12 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %6, align 8
  %13 = call i32 @qtnf_cmd_send_start_ap(%struct.qtnf_vif* %11, %struct.cfg80211_ap_settings* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %18 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %23 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %16, %3
  %27 = load i32, i32* %8, align 4
  ret i32 %27
}

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @qtnf_cmd_send_start_ap(%struct.qtnf_vif*, %struct.cfg80211_ap_settings*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
