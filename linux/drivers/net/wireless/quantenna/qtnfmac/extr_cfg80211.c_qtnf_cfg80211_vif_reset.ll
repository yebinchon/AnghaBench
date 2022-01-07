; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_cfg80211_vif_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_cfg80211_vif_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qtnf_cfg80211_vif_reset(%struct.qtnf_vif* %0) #0 {
  %2 = alloca %struct.qtnf_vif*, align 8
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %2, align 8
  %3 = load %struct.qtnf_vif*, %struct.qtnf_vif** %2, align 8
  %4 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.qtnf_vif*, %struct.qtnf_vif** %2, align 8
  %11 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @cfg80211_disconnected(i32 %12, i32 %13, i32* null, i32 0, i32 1, i32 %14)
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.qtnf_vif*, %struct.qtnf_vif** %2, align 8
  %18 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @cfg80211_shutdown_all_interfaces(i32 %20)
  ret void
}

declare dso_local i32 @cfg80211_disconnected(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cfg80211_shutdown_all_interfaces(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
