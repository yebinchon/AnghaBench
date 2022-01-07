; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_prepare_bcn_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_prepare_bcn_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_hdr*, i32*, i32*, %struct.ieee80211_tx_info*, i32*, %struct.sk_buff*, i64, %struct.rtl_tcb_desc*)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32)* }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtl_tcb_desc = type { i32 }
%struct.rtl_pci = type { i32, %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i64, i32, %struct.rtl_tx_buffer_desc*, %struct.rtl_tx_desc* }
%struct.rtl_tx_buffer_desc = type { i32 }
%struct.rtl_tx_desc = type { i32 }
%struct.rtl_mac = type { i32 }

@BEACON_QUEUE = common dso_local global i64 0, align 8
@HW_DESC_TXBUFF_ADDR = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@HW_DESC_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl_pci_prepare_bcn_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_pci_prepare_bcn_tasklet(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rtl8192_tx_ring*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.rtl_tx_desc*, align 8
  %11 = alloca %struct.rtl_tcb_desc, align 4
  %12 = alloca %struct.rtl_tx_buffer_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %3, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %17)
  %19 = call %struct.rtl_pci* @rtl_pcidev(i32 %18)
  store %struct.rtl_pci* %19, %struct.rtl_pci** %4, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  %22 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %21)
  store %struct.rtl_mac* %22, %struct.rtl_mac** %5, align 8
  store %struct.rtl8192_tx_ring* null, %struct.rtl8192_tx_ring** %6, align 8
  store %struct.ieee80211_hdr* null, %struct.ieee80211_hdr** %7, align 8
  store %struct.ieee80211_tx_info* null, %struct.ieee80211_tx_info** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  store %struct.rtl_tx_desc* null, %struct.rtl_tx_desc** %10, align 8
  store %struct.rtl_tx_buffer_desc* null, %struct.rtl_tx_buffer_desc** %12, align 8
  store i32 1, i32* %13, align 4
  %23 = call i32 @memset(%struct.rtl_tcb_desc* %11, i32 0, i32 4)
  %24 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %25 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %24, i32 0, i32 1
  %26 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %25, align 8
  %27 = load i64, i64* @BEACON_QUEUE, align 8
  %28 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %26, i64 %27
  store %struct.rtl8192_tx_ring* %28, %struct.rtl8192_tx_ring** %6, align 8
  %29 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %30 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %29, i32 0, i32 1
  %31 = call %struct.sk_buff* @__skb_dequeue(i32* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %9, align 8
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %33 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %1
  %37 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %38 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %37, i32 0, i32 2
  %39 = load %struct.rtl_tx_buffer_desc*, %struct.rtl_tx_buffer_desc** %38, align 8
  %40 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %41 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.rtl_tx_buffer_desc, %struct.rtl_tx_buffer_desc* %39, i64 %42
  %44 = bitcast %struct.rtl_tx_buffer_desc* %43 to i32*
  store i32* %44, i32** %14, align 8
  br label %54

45:                                               ; preds = %1
  %46 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %47 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %46, i32 0, i32 3
  %48 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %47, align 8
  %49 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %50 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.rtl_tx_desc, %struct.rtl_tx_desc* %48, i64 %51
  %53 = bitcast %struct.rtl_tx_desc* %52 to i32*
  store i32* %53, i32** %14, align 8
  br label %54

54:                                               ; preds = %45, %36
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %59 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %62 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32)** %66, align 8
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* @HW_DESC_TXBUFF_ADDR, align 4
  %71 = call i32 %67(%struct.ieee80211_hw* %68, i32* %69, i32 1, i32 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %76 = call i32 @pci_unmap_single(i32 %60, i32 %71, i32 %74, i32 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  br label %79

79:                                               ; preds = %57, %54
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %81 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %82 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw* %80, i32 %83)
  store %struct.sk_buff* %84, %struct.sk_buff** %9, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = icmp ne %struct.sk_buff* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  br label %158

88:                                               ; preds = %79
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = call %struct.ieee80211_hdr* @rtl_get_hdr(%struct.sk_buff* %89)
  store %struct.ieee80211_hdr* %90, %struct.ieee80211_hdr** %7, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %91)
  store %struct.ieee80211_tx_info* %92, %struct.ieee80211_tx_info** %8, align 8
  %93 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %94 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %93, i32 0, i32 3
  %95 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %94, align 8
  %96 = getelementptr inbounds %struct.rtl_tx_desc, %struct.rtl_tx_desc* %95, i64 0
  store %struct.rtl_tx_desc* %96, %struct.rtl_tx_desc** %10, align 8
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %98 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %88
  %102 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %103 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %102, i32 0, i32 2
  %104 = load %struct.rtl_tx_buffer_desc*, %struct.rtl_tx_buffer_desc** %103, align 8
  %105 = getelementptr inbounds %struct.rtl_tx_buffer_desc, %struct.rtl_tx_buffer_desc* %104, i64 0
  store %struct.rtl_tx_buffer_desc* %105, %struct.rtl_tx_buffer_desc** %12, align 8
  br label %106

106:                                              ; preds = %101, %88
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %108 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32 (%struct.ieee80211_hw*, %struct.ieee80211_hdr*, i32*, i32*, %struct.ieee80211_tx_info*, i32*, %struct.sk_buff*, i64, %struct.rtl_tcb_desc*)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_hdr*, i32*, i32*, %struct.ieee80211_tx_info*, i32*, %struct.sk_buff*, i64, %struct.rtl_tcb_desc*)** %112, align 8
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %115 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %116 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %10, align 8
  %117 = bitcast %struct.rtl_tx_desc* %116 to i32*
  %118 = load %struct.rtl_tx_buffer_desc*, %struct.rtl_tx_buffer_desc** %12, align 8
  %119 = bitcast %struct.rtl_tx_buffer_desc* %118 to i32*
  %120 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %122 = load i64, i64* @BEACON_QUEUE, align 8
  %123 = call i32 %113(%struct.ieee80211_hw* %114, %struct.ieee80211_hdr* %115, i32* %117, i32* %119, %struct.ieee80211_tx_info* %120, i32* null, %struct.sk_buff* %121, i64 %122, %struct.rtl_tcb_desc* %11)
  %124 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %125 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %124, i32 0, i32 1
  %126 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %127 = call i32 @__skb_queue_tail(i32* %125, %struct.sk_buff* %126)
  %128 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %129 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %106
  store i32 4, i32* %13, align 4
  %133 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %134 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)** %138, align 8
  %140 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %141 = load %struct.rtl_tx_buffer_desc*, %struct.rtl_tx_buffer_desc** %12, align 8
  %142 = bitcast %struct.rtl_tx_buffer_desc* %141 to i32*
  %143 = load i32, i32* @HW_DESC_OWN, align 4
  %144 = call i32 %139(%struct.ieee80211_hw* %140, i32* %142, i32 1, i32 %143, i32* %13)
  br label %158

145:                                              ; preds = %106
  %146 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %147 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)** %151, align 8
  %153 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %154 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %10, align 8
  %155 = bitcast %struct.rtl_tx_desc* %154 to i32*
  %156 = load i32, i32* @HW_DESC_OWN, align 4
  %157 = call i32 %152(%struct.ieee80211_hw* %153, i32* %155, i32 1, i32 %156, i32* %13)
  br label %158

158:                                              ; preds = %87, %145, %132
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @memset(%struct.rtl_tcb_desc*, i32, i32) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw*, i32) #1

declare dso_local %struct.ieee80211_hdr* @rtl_get_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
