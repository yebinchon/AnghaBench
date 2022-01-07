; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtw_dev* }
%struct.rtw_dev = type { i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtw_tx_pkt_info = type { i32 }

@RTW_FLAG_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @rtw_ops_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_ops_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rtw_dev*, align 8
  %8 = alloca %struct.rtw_tx_pkt_info, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %10, align 8
  store %struct.rtw_dev* %11, %struct.rtw_dev** %7, align 8
  %12 = bitcast %struct.rtw_tx_pkt_info* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %14 = load i32, i32* @RTW_FLAG_RUNNING, align 4
  %15 = call i32 @rtw_flag_check(%struct.rtw_dev* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %29

18:                                               ; preds = %3
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %20 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @rtw_tx_pkt_info_update(%struct.rtw_dev* %19, %struct.rtw_tx_pkt_info* %8, %struct.ieee80211_tx_control* %20, %struct.sk_buff* %21)
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i64 @rtw_hci_tx(%struct.rtw_dev* %23, %struct.rtw_tx_pkt_info* %8, %struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %29

28:                                               ; preds = %18
  br label %33

29:                                               ; preds = %27, %17
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %30, %struct.sk_buff* %31)
  br label %33

33:                                               ; preds = %29, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rtw_flag_check(%struct.rtw_dev*, i32) #2

declare dso_local i32 @rtw_tx_pkt_info_update(%struct.rtw_dev*, %struct.rtw_tx_pkt_info*, %struct.ieee80211_tx_control*, %struct.sk_buff*) #2

declare dso_local i64 @rtw_hci_tx(%struct.rtw_dev*, %struct.rtw_tx_pkt_info*, %struct.sk_buff*) #2

declare dso_local i32 @ieee80211_free_txskb(%struct.ieee80211_hw*, %struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
