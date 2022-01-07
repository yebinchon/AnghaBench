; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_tx.c_rtw_rsvd_page_pkt_info_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_tx.c_rtw_rsvd_page_pkt_info_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info* }
%struct.rtw_chip_info = type { i32 }
%struct.rtw_tx_pkt_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32 }

@TX_DESC_QSEL_MGMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_rsvd_page_pkt_info_update(%struct.rtw_dev* %0, %struct.rtw_tx_pkt_info* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.rtw_tx_pkt_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rtw_chip_info*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.rtw_tx_pkt_info* %1, %struct.rtw_tx_pkt_info** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %11 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %10, i32 0, i32 0
  %12 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %11, align 8
  store %struct.rtw_chip_info* %12, %struct.rtw_chip_info** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %8, align 8
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @is_broadcast_ether_addr(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @is_multicast_ether_addr(i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %22, %3
  %29 = phi i1 [ true, %3 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %5, align 8
  %32 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %5, align 8
  %34 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %33, i32 0, i32 1
  store i32 6, i32* %34, align 4
  %35 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %5, align 8
  %36 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %35, i32 0, i32 2
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %5, align 8
  %39 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %5, align 8
  %44 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %46 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %5, align 8
  %49 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @TX_DESC_QSEL_MGMT, align 4
  %51 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %5, align 8
  %52 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %5, align 8
  %54 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %53, i32 0, i32 4
  store i32 1, i32* %54, align 4
  ret void
}

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
