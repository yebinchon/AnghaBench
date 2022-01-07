; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723com/extr_fw_common.c_rtl8723_cmd_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723com/extr_fw_common.c_rtl8723_cmd_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*, i64)*, i32 (%struct.ieee80211_hw*, i64*, i32, i32, %struct.sk_buff*)*, i64 (%struct.ieee80211_hw*, i64*, i32, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.rtl_pci = type { %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i32, %struct.rtl_tx_desc* }
%struct.rtl_tx_desc = type { i32 }

@BEACON_QUEUE = common dso_local global i64 0, align 8
@HW_DESC_OWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8723_cmd_send_packet(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_pci*, align 8
  %7 = alloca %struct.rtl8192_tx_ring*, align 8
  %8 = alloca %struct.rtl_tx_desc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %5, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_pci* @rtl_pcidev(i32 %15)
  store %struct.rtl_pci* %16, %struct.rtl_pci** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %17 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %18 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %17, i32 0, i32 0
  %19 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %18, align 8
  %20 = load i64, i64* @BEACON_QUEUE, align 8
  %21 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %19, i64 %20
  store %struct.rtl8192_tx_ring* %21, %struct.rtl8192_tx_ring** %7, align 8
  %22 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %23 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %22, i32 0, i32 0
  %24 = call %struct.sk_buff* @__skb_dequeue(i32* %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %9, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = call i32 @kfree_skb(%struct.sk_buff* %25)
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %33 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %32, i32 0, i32 1
  %34 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %33, align 8
  %35 = getelementptr inbounds %struct.rtl_tx_desc, %struct.rtl_tx_desc* %34, i64 0
  store %struct.rtl_tx_desc* %35, %struct.rtl_tx_desc** %8, align 8
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %37 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i64 (%struct.ieee80211_hw*, i64*, i32, i32)*, i64 (%struct.ieee80211_hw*, i64*, i32, i32)** %41, align 8
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %44 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %8, align 8
  %45 = bitcast %struct.rtl_tx_desc* %44 to i64*
  %46 = load i32, i32* @HW_DESC_OWN, align 4
  %47 = call i64 %42(%struct.ieee80211_hw* %43, i64* %45, i32 1, i32 %46)
  store i64 %47, i64* %10, align 8
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %49 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32 (%struct.ieee80211_hw*, i64*, i32, i32, %struct.sk_buff*)*, i32 (%struct.ieee80211_hw*, i64*, i32, i32, %struct.sk_buff*)** %53, align 8
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %56 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %8, align 8
  %57 = bitcast %struct.rtl_tx_desc* %56 to i64*
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 %54(%struct.ieee80211_hw* %55, i64* %57, i32 1, i32 1, %struct.sk_buff* %58)
  %60 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %61 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %60, i32 0, i32 0
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i32 @__skb_queue_tail(i32* %61, %struct.sk_buff* %62)
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %65 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %70 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32 (%struct.ieee80211_hw*, i64)*, i32 (%struct.ieee80211_hw*, i64)** %74, align 8
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %77 = load i64, i64* @BEACON_QUEUE, align 8
  %78 = call i32 %75(%struct.ieee80211_hw* %76, i64 %77)
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
