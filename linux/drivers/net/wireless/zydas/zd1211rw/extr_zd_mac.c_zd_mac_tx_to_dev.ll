; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_zd_mac_tx_to_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_zd_mac_tx_to_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.ieee80211_hw** }
%struct.ieee80211_hw = type { i32 }
%struct.zd_mac = type { i64, i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }

@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@ZD_MAC_MAX_ACK_WAITERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zd_mac_tx_to_dev(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.zd_mac*, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %9)
  store %struct.ieee80211_tx_info* %10, %struct.ieee80211_tx_info** %5, align 8
  %11 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %11, i32 0, i32 1
  %13 = load %struct.ieee80211_hw**, %struct.ieee80211_hw*** %12, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw*, %struct.ieee80211_hw** %13, i64 0
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %14, align 8
  store %struct.ieee80211_hw* %15, %struct.ieee80211_hw** %6, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %17 = call %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw* %16)
  store %struct.zd_mac* %17, %struct.zd_mac** %7, align 8
  %18 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %19 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i32 @skb_pull(%struct.sk_buff* %20, i32 4)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %24, %2
  %32 = phi i1 [ true, %2 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = call i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw* %37, %struct.sk_buff* %38)
  br label %70

40:                                               ; preds = %31
  %41 = load %struct.zd_mac*, %struct.zd_mac** %7, align 8
  %42 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %41, i32 0, i32 2
  store %struct.sk_buff_head* %42, %struct.sk_buff_head** %8, align 8
  %43 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call i32 @skb_queue_tail(%struct.sk_buff_head* %43, %struct.sk_buff* %44)
  br label %46

46:                                               ; preds = %64, %40
  %47 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %48 = call i64 @skb_queue_len(%struct.sk_buff_head* %47)
  %49 = load i64, i64* @ZD_MAC_MAX_ACK_WAITERS, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %53 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %54 = call i32 @skb_dequeue(%struct.sk_buff_head* %53)
  %55 = load %struct.zd_mac*, %struct.zd_mac** %7, align 8
  %56 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.zd_mac*, %struct.zd_mac** %7, align 8
  %61 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  br label %64

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i32 [ %62, %59 ], [ 0, %63 ]
  %66 = call i32 @zd_mac_tx_status(%struct.ieee80211_hw* %52, i32 %54, i32 %65, i32* null)
  %67 = load %struct.zd_mac*, %struct.zd_mac** %7, align 8
  %68 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  br label %46

69:                                               ; preds = %46
  br label %70

70:                                               ; preds = %69, %36
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i64 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local i32 @zd_mac_tx_status(%struct.ieee80211_hw*, i32, i32, i32*) #1

declare dso_local i32 @skb_dequeue(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
