; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_tx_ap_update_inconnection_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_tx_ap_update_inconnection_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@WLCORE_PEND_AUTH_ROC_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl12xx_vif*, %struct.sk_buff*)* @wl1271_tx_ap_update_inconnection_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_tx_ap_update_inconnection_sta(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %10, 4
  %12 = inttoptr i64 %11 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %12, %struct.ieee80211_hdr** %7, align 8
  %13 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ieee80211_is_auth(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %43

19:                                               ; preds = %3
  %20 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %21 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %22 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wl1271_acx_set_inconnection_sta(%struct.wl1271* %20, %struct.wl12xx_vif* %21, i32 %24)
  %26 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %27 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %28 = call i32 @wlcore_update_inconn_sta(%struct.wl1271* %26, %struct.wl12xx_vif* %27, i32* null, i32 1)
  %29 = load i32, i32* @jiffies, align 4
  %30 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %31 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %33 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %32, i32 0, i32 0
  %34 = call i32 @cancel_delayed_work(i32* %33)
  %35 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %36 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %39 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %38, i32 0, i32 0
  %40 = load i32, i32* @WLCORE_PEND_AUTH_ROC_TIMEOUT, align 4
  %41 = call i32 @msecs_to_jiffies(i32 %40)
  %42 = call i32 @ieee80211_queue_delayed_work(i32 %37, i32* %39, i32 %41)
  br label %43

43:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @ieee80211_is_auth(i32) #1

declare dso_local i32 @wl1271_acx_set_inconnection_sta(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wlcore_update_inconn_sta(%struct.wl1271*, %struct.wl12xx_vif*, i32*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
