; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c__rtl92s_cmd_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c__rtl92s_cmd_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_hw*, i64*, i32, i32, %struct.sk_buff*)* }
%struct.rtl_pci = type { %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i64, i64, i32, %struct.rtl_tx_desc* }
%struct.rtl_tx_desc = type { i32 }

@TXCMD_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.sk_buff*, i64)* @_rtl92s_cmd_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92s_cmd_send_packet(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_pci*, align 8
  %9 = alloca %struct.rtl8192_tx_ring*, align 8
  %10 = alloca %struct.rtl_tx_desc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %7, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_pci* @rtl_pcidev(i32 %16)
  store %struct.rtl_pci* %17, %struct.rtl_pci** %8, align 8
  store i64 0, i64* %12, align 8
  %18 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %19 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %18, i32 0, i32 0
  %20 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %19, align 8
  %21 = load i64, i64* @TXCMD_QUEUE, align 8
  %22 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %20, i64 %21
  store %struct.rtl8192_tx_ring* %22, %struct.rtl8192_tx_ring** %9, align 8
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %9, align 8
  %29 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %9, align 8
  %32 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %31, i32 0, i32 2
  %33 = call i64 @skb_queue_len(i32* %32)
  %34 = add i64 %30, %33
  %35 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %9, align 8
  %36 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = urem i64 %34, %37
  store i64 %38, i64* %12, align 8
  %39 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %9, align 8
  %40 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %39, i32 0, i32 3
  %41 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds %struct.rtl_tx_desc, %struct.rtl_tx_desc* %41, i64 %42
  store %struct.rtl_tx_desc* %43, %struct.rtl_tx_desc** %10, align 8
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.ieee80211_hw*, i64*, i32, i32, %struct.sk_buff*)*, i32 (%struct.ieee80211_hw*, i64*, i32, i32, %struct.sk_buff*)** %49, align 8
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %52 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %10, align 8
  %53 = bitcast %struct.rtl_tx_desc* %52 to i64*
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i32 %50(%struct.ieee80211_hw* %51, i64* %53, i32 1, i32 1, %struct.sk_buff* %54)
  %56 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %9, align 8
  %57 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %56, i32 0, i32 2
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i32 @__skb_queue_tail(i32* %57, %struct.sk_buff* %58)
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %61 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
