; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_rx_to_mac80211.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_rx_to_mac80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.ieee80211_rx_status = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*, i32)* @_rtl_pci_rx_to_mac80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_pci_rx_to_mac80211(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_rx_status, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %4, i32 0, i32 0
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call i32 @rtl_action_proc(%struct.ieee80211_hw* %9, %struct.sk_buff* %10, i32 0)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %18)
  br label %51

20:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 128
  %25 = call %struct.sk_buff* @dev_alloc_skb(i64 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %7, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call i64 @likely(%struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call i32 @IEEE80211_SKB_RXCB(%struct.sk_buff* %30)
  %32 = call i32 @memcpy(i32 %31, %struct.ieee80211_rx_status* %4, i32 4)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @skb_put_data(%struct.sk_buff* %33, i32 %36, i64 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %41)
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = call i32 @ieee80211_rx_irqsafe(%struct.ieee80211_hw* %43, %struct.sk_buff* %44)
  br label %50

46:                                               ; preds = %20
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @ieee80211_rx_irqsafe(%struct.ieee80211_hw* %47, %struct.sk_buff* %48)
  br label %50

50:                                               ; preds = %46, %29
  br label %51

51:                                               ; preds = %50, %17
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rtl_action_proc(%struct.ieee80211_hw*, %struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @ieee80211_rx_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
