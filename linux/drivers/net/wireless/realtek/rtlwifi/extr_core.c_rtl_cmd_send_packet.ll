; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_cmd_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_cmd_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*, i64)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, %struct.sk_buff*)* }
%struct.TYPE_4__ = type { i32 }
%struct.rtl_pci = type { %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i32, %struct.rtl_tx_desc* }
%struct.rtl_tx_desc = type { i32 }

@BEACON_QUEUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_cmd_send_packet(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_pci*, align 8
  %7 = alloca %struct.rtl8192_tx_ring*, align 8
  %8 = alloca %struct.rtl_tx_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %5, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_pci* @rtl_pcidev(i32 %14)
  store %struct.rtl_pci* %15, %struct.rtl_pci** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %16 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %17 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %16, i32 0, i32 0
  %18 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %17, align 8
  %19 = load i64, i64* @BEACON_QUEUE, align 8
  %20 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %18, i64 %19
  store %struct.rtl8192_tx_ring* %20, %struct.rtl8192_tx_ring** %7, align 8
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %27 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %26, i32 0, i32 0
  %28 = call %struct.sk_buff* @__skb_dequeue(i32* %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %33 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %32)
  br label %34

34:                                               ; preds = %31, %2
  %35 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %36 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %35, i32 0, i32 1
  %37 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %36, align 8
  %38 = getelementptr inbounds %struct.rtl_tx_desc, %struct.rtl_tx_desc* %37, i64 0
  store %struct.rtl_tx_desc* %38, %struct.rtl_tx_desc** %8, align 8
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32, %struct.sk_buff*)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, %struct.sk_buff*)** %44, align 8
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %47 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %8, align 8
  %48 = bitcast %struct.rtl_tx_desc* %47 to i32*
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i32 %45(%struct.ieee80211_hw* %46, i32* %48, i32 1, i32 1, %struct.sk_buff* %49)
  %51 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %52 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %51, i32 0, i32 0
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @__skb_queue_tail(i32* %52, %struct.sk_buff* %53)
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %56 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %61 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32 (%struct.ieee80211_hw*, i64)*, i32 (%struct.ieee80211_hw*, i64)** %65, align 8
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %68 = load i64, i64* @BEACON_QUEUE, align 8
  %69 = call i32 %66(%struct.ieee80211_hw* %67, i64 %68)
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
