; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_topaz_free_xfer_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_topaz_free_xfer_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_topaz_state = type { %struct.qtnf_topaz_tx_bd*, %struct.qtnf_topaz_rx_bd*, %struct.qtnf_pcie_bus_priv }
%struct.qtnf_topaz_tx_bd = type { i64, i64 }
%struct.qtnf_topaz_rx_bd = type { i64, i64 }
%struct.qtnf_pcie_bus_priv = type { i32, i32, %struct.sk_buff**, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }

@SKB_BUF_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_pcie_topaz_state*)* @qtnf_topaz_free_xfer_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_topaz_free_xfer_buffers(%struct.qtnf_pcie_topaz_state* %0) #0 {
  %2 = alloca %struct.qtnf_pcie_topaz_state*, align 8
  %3 = alloca %struct.qtnf_pcie_bus_priv*, align 8
  %4 = alloca %struct.qtnf_topaz_rx_bd*, align 8
  %5 = alloca %struct.qtnf_topaz_tx_bd*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qtnf_pcie_topaz_state* %0, %struct.qtnf_pcie_topaz_state** %2, align 8
  %9 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %2, align 8
  %10 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %9, i32 0, i32 2
  store %struct.qtnf_pcie_bus_priv* %10, %struct.qtnf_pcie_bus_priv** %3, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %70, %1
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %14 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %73

17:                                               ; preds = %11
  %18 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %19 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %18, i32 0, i32 4
  %20 = load %struct.sk_buff**, %struct.sk_buff*** %19, align 8
  %21 = icmp ne %struct.sk_buff** %20, null
  br i1 %21, label %22, label %69

22:                                               ; preds = %17
  %23 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %24 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %23, i32 0, i32 4
  %25 = load %struct.sk_buff**, %struct.sk_buff*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %25, i64 %27
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %69

31:                                               ; preds = %22
  %32 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %2, align 8
  %33 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %32, i32 0, i32 1
  %34 = load %struct.qtnf_topaz_rx_bd*, %struct.qtnf_topaz_rx_bd** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.qtnf_topaz_rx_bd, %struct.qtnf_topaz_rx_bd* %34, i64 %36
  store %struct.qtnf_topaz_rx_bd* %37, %struct.qtnf_topaz_rx_bd** %4, align 8
  %38 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %39 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %38, i32 0, i32 4
  %40 = load %struct.sk_buff**, %struct.sk_buff*** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %40, i64 %42
  %44 = load %struct.sk_buff*, %struct.sk_buff** %43, align 8
  store %struct.sk_buff* %44, %struct.sk_buff** %6, align 8
  %45 = load %struct.qtnf_topaz_rx_bd*, %struct.qtnf_topaz_rx_bd** %4, align 8
  %46 = getelementptr inbounds %struct.qtnf_topaz_rx_bd, %struct.qtnf_topaz_rx_bd* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @le32_to_cpu(i64 %47)
  %49 = call i32 @QTN_HOST_ADDR(i32 0, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %51 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @SKB_BUF_SIZE, align 4
  %55 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %56 = call i32 @pci_unmap_single(i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %57)
  %59 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %60 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %59, i32 0, i32 4
  %61 = load %struct.sk_buff**, %struct.sk_buff*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %61, i64 %63
  store %struct.sk_buff* null, %struct.sk_buff** %64, align 8
  %65 = load %struct.qtnf_topaz_rx_bd*, %struct.qtnf_topaz_rx_bd** %4, align 8
  %66 = getelementptr inbounds %struct.qtnf_topaz_rx_bd, %struct.qtnf_topaz_rx_bd* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.qtnf_topaz_rx_bd*, %struct.qtnf_topaz_rx_bd** %4, align 8
  %68 = getelementptr inbounds %struct.qtnf_topaz_rx_bd, %struct.qtnf_topaz_rx_bd* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %31, %22, %17
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %11

73:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %133, %73
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %77 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %136

80:                                               ; preds = %74
  %81 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %82 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %81, i32 0, i32 2
  %83 = load %struct.sk_buff**, %struct.sk_buff*** %82, align 8
  %84 = icmp ne %struct.sk_buff** %83, null
  br i1 %84, label %85, label %132

85:                                               ; preds = %80
  %86 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %87 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %86, i32 0, i32 2
  %88 = load %struct.sk_buff**, %struct.sk_buff*** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %88, i64 %90
  %92 = load %struct.sk_buff*, %struct.sk_buff** %91, align 8
  %93 = icmp ne %struct.sk_buff* %92, null
  br i1 %93, label %94, label %132

94:                                               ; preds = %85
  %95 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %2, align 8
  %96 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %95, i32 0, i32 0
  %97 = load %struct.qtnf_topaz_tx_bd*, %struct.qtnf_topaz_tx_bd** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.qtnf_topaz_tx_bd, %struct.qtnf_topaz_tx_bd* %97, i64 %99
  store %struct.qtnf_topaz_tx_bd* %100, %struct.qtnf_topaz_tx_bd** %5, align 8
  %101 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %102 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %101, i32 0, i32 2
  %103 = load %struct.sk_buff**, %struct.sk_buff*** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %103, i64 %105
  %107 = load %struct.sk_buff*, %struct.sk_buff** %106, align 8
  store %struct.sk_buff* %107, %struct.sk_buff** %6, align 8
  %108 = load %struct.qtnf_topaz_tx_bd*, %struct.qtnf_topaz_tx_bd** %5, align 8
  %109 = getelementptr inbounds %struct.qtnf_topaz_tx_bd, %struct.qtnf_topaz_tx_bd* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @le32_to_cpu(i64 %110)
  %112 = call i32 @QTN_HOST_ADDR(i32 0, i32 %111)
  store i32 %112, i32* %7, align 4
  %113 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %114 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @SKB_BUF_SIZE, align 4
  %118 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %119 = call i32 @pci_unmap_single(i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %120)
  %122 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %123 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %122, i32 0, i32 2
  %124 = load %struct.sk_buff**, %struct.sk_buff*** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %124, i64 %126
  store %struct.sk_buff* null, %struct.sk_buff** %127, align 8
  %128 = load %struct.qtnf_topaz_tx_bd*, %struct.qtnf_topaz_tx_bd** %5, align 8
  %129 = getelementptr inbounds %struct.qtnf_topaz_tx_bd, %struct.qtnf_topaz_tx_bd* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load %struct.qtnf_topaz_tx_bd*, %struct.qtnf_topaz_tx_bd** %5, align 8
  %131 = getelementptr inbounds %struct.qtnf_topaz_tx_bd, %struct.qtnf_topaz_tx_bd* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %94, %85, %80
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %74

136:                                              ; preds = %74
  ret void
}

declare dso_local i32 @QTN_HOST_ADDR(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
