; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*, i32*, i32, i32)* }
%struct.rtl_pci = type { i32, %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i64, i32, i32*, i32, i32*, i32, i32 }
%struct.sk_buff = type { i32 }

@HW_DESC_TXBUFF_ADDR = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @_rtl_pci_free_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_pci_free_tx_ring(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_pci*, align 8
  %7 = alloca %struct.rtl8192_tx_ring*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_pci* @rtl_pcidev(i32 %13)
  store %struct.rtl_pci* %14, %struct.rtl_pci** %6, align 8
  %15 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %16 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %15, i32 0, i32 1
  %17 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %17, i64 %19
  store %struct.rtl8192_tx_ring* %20, %struct.rtl8192_tx_ring** %7, align 8
  br label %21

21:                                               ; preds = %50, %2
  %22 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %23 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %22, i32 0, i32 6
  %24 = call i64 @skb_queue_len(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %83

26:                                               ; preds = %21
  %27 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %28 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %27, i32 0, i32 6
  %29 = call %struct.sk_buff* @__skb_dequeue(i32* %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %9, align 8
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %31 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %36 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %39 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32* %41, i32** %8, align 8
  br label %50

42:                                               ; preds = %26
  %43 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %44 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %47 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32* %49, i32** %8, align 8
  br label %50

50:                                               ; preds = %42, %34
  %51 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %52 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %55 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32)** %59, align 8
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @HW_DESC_TXBUFF_ADDR, align 4
  %64 = call i32 %60(%struct.ieee80211_hw* %61, i32* %62, i32 1, i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %69 = call i32 @pci_unmap_single(i32 %53, i32 %64, i32 %67, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %71 = call i32 @kfree_skb(%struct.sk_buff* %70)
  %72 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %73 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  %76 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %77 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = urem i64 %75, %79
  %81 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %82 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %21

83:                                               ; preds = %21
  %84 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %85 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %88 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = mul i64 4, %90
  %92 = trunc i64 %91 to i32
  %93 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %94 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %97 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @pci_free_consistent(i32 %86, i32 %92, i32* %95, i32 %98)
  %100 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %101 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %100, i32 0, i32 4
  store i32* null, i32** %101, align 8
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %103 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %83
  %107 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %108 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %111 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = mul i64 4, %113
  %115 = trunc i64 %114 to i32
  %116 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %117 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %120 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @pci_free_consistent(i32 %109, i32 %115, i32* %118, i32 %121)
  %123 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %124 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %123, i32 0, i32 2
  store i32* null, i32** %124, align 8
  br label %125

125:                                              ; preds = %106, %83
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
