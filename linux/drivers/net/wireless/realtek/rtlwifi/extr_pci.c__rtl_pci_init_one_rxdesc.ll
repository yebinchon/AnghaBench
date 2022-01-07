; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_init_one_rxdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_init_one_rxdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i64 }
%struct.rtl_priv = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)* }
%struct.rtl_pci = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.sk_buff** }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@HW_DESC_RX_PREPARE = common dso_local global i32 0, align 4
@HW_DESC_RXBUFF_ADDR = common dso_local global i32 0, align 4
@HW_DESC_RXPKT_LEN = common dso_local global i32 0, align 4
@HW_DESC_RXOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.sk_buff*, i32*, i32, i32)* @_rtl_pci_init_one_rxdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_pci_init_one_rxdesc(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtl_priv*, align 8
  %13 = alloca %struct.rtl_pci*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  store %struct.rtl_priv* %18, %struct.rtl_priv** %12, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %20 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_pci* @rtl_pcidev(i32 %20)
  store %struct.rtl_pci* %21, %struct.rtl_pci** %13, align 8
  store i32 1, i32* %15, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call i64 @likely(%struct.sk_buff* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %16, align 8
  br label %36

27:                                               ; preds = %5
  %28 = load %struct.rtl_pci*, %struct.rtl_pci** %13, align 8
  %29 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.sk_buff* @dev_alloc_skb(i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %16, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %133

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.rtl_pci*, %struct.rtl_pci** %13, align 8
  %38 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %41 = call i32 @skb_tail_pointer(%struct.sk_buff* %40)
  %42 = load %struct.rtl_pci*, %struct.rtl_pci** %13, align 8
  %43 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %46 = call i32 @pci_map_single(i32 %39, i32 %41, i32 %44, i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  store i32 %46, i32* %50, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load %struct.rtl_pci*, %struct.rtl_pci** %13, align 8
  %57 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @pci_dma_mapping_error(i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %133

63:                                               ; preds = %36
  %64 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %65 = load %struct.rtl_pci*, %struct.rtl_pci** %13, align 8
  %66 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.sk_buff**, %struct.sk_buff*** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %72, i64 %74
  store %struct.sk_buff* %64, %struct.sk_buff** %75, align 8
  %76 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %77 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %63
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %82 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)** %86, align 8
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* @HW_DESC_RX_PREPARE, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i32*
  %95 = call i32 %87(%struct.ieee80211_hw* %88, i32* %89, i32 0, i32 %90, i32* %94)
  br label %132

96:                                               ; preds = %63
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %98 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)** %102, align 8
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* @HW_DESC_RXBUFF_ADDR, align 4
  %107 = call i32 %103(%struct.ieee80211_hw* %104, i32* %105, i32 0, i32 %106, i32* %14)
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %109 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)** %113, align 8
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* @HW_DESC_RXPKT_LEN, align 4
  %118 = load %struct.rtl_pci*, %struct.rtl_pci** %13, align 8
  %119 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %118, i32 0, i32 0
  %120 = call i32 %114(%struct.ieee80211_hw* %115, i32* %116, i32 0, i32 %117, i32* %119)
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %122 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)** %126, align 8
  %128 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* @HW_DESC_RXOWN, align 4
  %131 = call i32 %127(%struct.ieee80211_hw* %128, i32* %129, i32 0, i32 %130, i32* %15)
  br label %132

132:                                              ; preds = %96, %80
  store i32 1, i32* %6, align 4
  br label %133

133:                                              ; preds = %132, %62, %34
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
