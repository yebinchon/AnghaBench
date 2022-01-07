; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_return_beacon_queue_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_return_beacon_queue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_hw*, i32*, i32, i32)* }
%struct.rtl_pci = type { i32, %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i64, i32, i32, %struct.rtl_tx_desc* }
%struct.rtl_tx_desc = type { i32 }
%struct.sk_buff = type { i32 }

@BEACON_QUEUE = common dso_local global i64 0, align 8
@HW_DESC_TXBUFF_ADDR = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl88ee_return_beacon_queue_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl88ee_return_beacon_queue_skb(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  %5 = alloca %struct.rtl8192_tx_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtl_tx_desc*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_pci* @rtl_pcidev(i32 %12)
  store %struct.rtl_pci* %13, %struct.rtl_pci** %4, align 8
  %14 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %15 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %14, i32 0, i32 1
  %16 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %15, align 8
  %17 = load i64, i64* @BEACON_QUEUE, align 8
  %18 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %16, i64 %17
  store %struct.rtl8192_tx_ring* %18, %struct.rtl8192_tx_ring** %5, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  br label %24

24:                                               ; preds = %29, %1
  %25 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %5, align 8
  %26 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %25, i32 0, i32 2
  %27 = call i64 @skb_queue_len(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %24
  %30 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %5, align 8
  %31 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %30, i32 0, i32 3
  %32 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %31, align 8
  %33 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %5, align 8
  %34 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.rtl_tx_desc, %struct.rtl_tx_desc* %32, i64 %35
  store %struct.rtl_tx_desc* %36, %struct.rtl_tx_desc** %7, align 8
  %37 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %5, align 8
  %38 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %37, i32 0, i32 2
  %39 = call %struct.sk_buff* @__skb_dequeue(i32* %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %8, align 8
  %40 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %41 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32)** %48, align 8
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %51 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %7, align 8
  %52 = bitcast %struct.rtl_tx_desc* %51 to i32*
  %53 = load i32, i32* @HW_DESC_TXBUFF_ADDR, align 4
  %54 = call i32 %49(%struct.ieee80211_hw* %50, i32* %52, i32 1, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %59 = call i32 @pci_unmap_single(i32 %42, i32 %54, i32 %57, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call i32 @kfree_skb(%struct.sk_buff* %60)
  %62 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %5, align 8
  %63 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  %66 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %5, align 8
  %67 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = urem i64 %65, %69
  %71 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %5, align 8
  %72 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %24

73:                                               ; preds = %24
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %75 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
