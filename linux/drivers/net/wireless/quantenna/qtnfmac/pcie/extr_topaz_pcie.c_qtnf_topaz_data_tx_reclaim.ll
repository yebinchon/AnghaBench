; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_topaz_data_tx_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_topaz_data_tx_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_topaz_state = type { %struct.qtnf_topaz_tx_bd*, i32, %struct.qtnf_pcie_bus_priv }
%struct.qtnf_topaz_tx_bd = type { i32 }
%struct.qtnf_pcie_bus_priv = type { i32, i32, i32, i32, i32, i32, %struct.sk_buff**, i64, i32, i32 }
%struct.sk_buff = type { i64, i32 }

@TOPAZ_RC_TX_DONE_IRQ = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_pcie_topaz_state*)* @qtnf_topaz_data_tx_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_topaz_data_tx_reclaim(%struct.qtnf_pcie_topaz_state* %0) #0 {
  %2 = alloca %struct.qtnf_pcie_topaz_state*, align 8
  %3 = alloca %struct.qtnf_pcie_bus_priv*, align 8
  %4 = alloca %struct.qtnf_topaz_tx_bd*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qtnf_pcie_topaz_state* %0, %struct.qtnf_pcie_topaz_state** %2, align 8
  %11 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %2, align 8
  %12 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %11, i32 0, i32 2
  store %struct.qtnf_pcie_bus_priv* %12, %struct.qtnf_pcie_bus_priv** %3, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %14 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %13, i32 0, i32 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %2, align 8
  %18 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @readl(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %22 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %25 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %29 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @CIRC_CNT(i32 %26, i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %1
  %34 = load i32, i32* @TOPAZ_RC_TX_DONE_IRQ, align 4
  %35 = call i32 @TOPAZ_IPC_IRQ_WORD(i32 %34)
  %36 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %37 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @TOPAZ_LH_IPC4_INT(i32 %38)
  %40 = call i32 @writel(i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %33, %1
  br label %42

42:                                               ; preds = %124, %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %46 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @CIRC_CNT(i32 %43, i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %125

50:                                               ; preds = %42
  %51 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %52 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %51, i32 0, i32 6
  %53 = load %struct.sk_buff**, %struct.sk_buff*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %53, i64 %55
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %5, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i64 @likely(%struct.sk_buff* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %108

61:                                               ; preds = %50
  %62 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %2, align 8
  %63 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %62, i32 0, i32 0
  %64 = load %struct.qtnf_topaz_tx_bd*, %struct.qtnf_topaz_tx_bd** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.qtnf_topaz_tx_bd, %struct.qtnf_topaz_tx_bd* %64, i64 %66
  store %struct.qtnf_topaz_tx_bd* %67, %struct.qtnf_topaz_tx_bd** %4, align 8
  %68 = load %struct.qtnf_topaz_tx_bd*, %struct.qtnf_topaz_tx_bd** %4, align 8
  %69 = getelementptr inbounds %struct.qtnf_topaz_tx_bd, %struct.qtnf_topaz_tx_bd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = call i32 @QTN_HOST_ADDR(i32 0, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %74 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %81 = call i32 @pci_unmap_single(i32 %75, i32 %76, i32 %79, i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %61
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i32 @qtnf_update_tx_stats(i64 %89, %struct.sk_buff* %90)
  %92 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %93 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @unlikely(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %86
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @qtnf_wake_all_queues(i64 %100)
  %102 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %103 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %102, i32 0, i32 7
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %97, %86
  br label %105

105:                                              ; preds = %104, %61
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %106)
  br label %108

108:                                              ; preds = %105, %50
  %109 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %110 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %109, i32 0, i32 6
  %111 = load %struct.sk_buff**, %struct.sk_buff*** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %111, i64 %113
  store %struct.sk_buff* null, %struct.sk_buff** %114, align 8
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  %119 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %120 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp sge i32 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %124

124:                                              ; preds = %123, %108
  br label %42

125:                                              ; preds = %42
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %128 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %132 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %137 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %139 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %138, i32 0, i32 4
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @TOPAZ_IPC_IRQ_WORD(i32) #1

declare dso_local i32 @TOPAZ_LH_IPC4_INT(i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @QTN_HOST_ADDR(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_update_tx_stats(i64, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @qtnf_wake_all_queues(i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
