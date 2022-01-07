; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_virtual_intf_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_virtual_intf_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qtnf_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.qtnf_wmac = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qtnf_virtual_intf_cleanup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.qtnf_vif*, align 8
  %4 = alloca %struct.qtnf_wmac*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device* %5)
  store %struct.qtnf_vif* %6, %struct.qtnf_vif** %3, align 8
  %7 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %8 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.qtnf_wmac* @wiphy_priv(i32 %10)
  store %struct.qtnf_wmac* %11, %struct.qtnf_wmac** %4, align 8
  %12 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %13 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %20 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %25 = call i32 @qtnf_disconnect(i32 %22, %struct.net_device* %23, i32 %24)
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %28 = call i32 @qtnf_scan_done(%struct.qtnf_wmac* %27, i32 1)
  ret void
}

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device*) #1

declare dso_local %struct.qtnf_wmac* @wiphy_priv(i32) #1

declare dso_local i32 @qtnf_disconnect(i32, %struct.net_device*, i32) #1

declare dso_local i32 @qtnf_scan_done(%struct.qtnf_wmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
