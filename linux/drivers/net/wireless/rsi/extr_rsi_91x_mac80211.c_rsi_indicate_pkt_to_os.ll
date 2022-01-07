; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_indicate_pkt_to_os.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_indicate_pkt_to_os.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_common = type { i64, %struct.rsi_hw* }
%struct.rsi_hw = type { i32, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsi_indicate_pkt_to_os(%struct.rsi_common* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rsi_common*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rsi_hw*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  store %struct.rsi_common* %0, %struct.rsi_common** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %9 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %8, i32 0, i32 1
  %10 = load %struct.rsi_hw*, %struct.rsi_hw** %9, align 8
  store %struct.rsi_hw* %10, %struct.rsi_hw** %5, align 8
  %11 = load %struct.rsi_hw*, %struct.rsi_hw** %5, align 8
  %12 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %11, i32 0, i32 1
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  store %struct.ieee80211_hw* %13, %struct.ieee80211_hw** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %14)
  store %struct.ieee80211_rx_status* %15, %struct.ieee80211_rx_status** %7, align 8
  %16 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %17 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.rsi_hw*, %struct.rsi_hw** %5, align 8
  %22 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @dev_kfree_skb(%struct.sk_buff* %26)
  br label %37

28:                                               ; preds = %20
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %32 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %33 = call i32 @rsi_fill_rx_status(%struct.ieee80211_hw* %29, %struct.sk_buff* %30, %struct.rsi_common* %31, %struct.ieee80211_rx_status* %32)
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i32 @ieee80211_rx_irqsafe(%struct.ieee80211_hw* %34, %struct.sk_buff* %35)
  br label %37

37:                                               ; preds = %28, %25
  ret void
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rsi_fill_rx_status(%struct.ieee80211_hw*, %struct.sk_buff*, %struct.rsi_common*, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @ieee80211_rx_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
