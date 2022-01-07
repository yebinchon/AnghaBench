; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_pearl_data_tx_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_pearl_data_tx_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_pearl_state = type { %struct.qtnf_pearl_tx_bd*, i32, %struct.qtnf_pcie_bus_priv }
%struct.qtnf_pearl_tx_bd = type { i32, i32 }
%struct.qtnf_pcie_bus_priv = type { i32, i32, i32, i32, i32, %struct.sk_buff**, i64, i32 }
%struct.sk_buff = type { i64, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_pcie_pearl_state*)* @qtnf_pearl_data_tx_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_pearl_data_tx_reclaim(%struct.qtnf_pcie_pearl_state* %0) #0 {
  %2 = alloca %struct.qtnf_pcie_pearl_state*, align 8
  %3 = alloca %struct.qtnf_pcie_bus_priv*, align 8
  %4 = alloca %struct.qtnf_pearl_tx_bd*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qtnf_pcie_pearl_state* %0, %struct.qtnf_pcie_pearl_state** %2, align 8
  %11 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %2, align 8
  %12 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %11, i32 0, i32 2
  store %struct.qtnf_pcie_bus_priv* %12, %struct.qtnf_pcie_bus_priv** %3, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %14 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %13, i32 0, i32 3
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %2, align 8
  %18 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @PCIE_HDP_RX0DMA_CNT(i32 %19)
  %21 = call i32 @readl(i32 %20)
  %22 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %23 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %21, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %28 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %116, %1
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %34 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @CIRC_CNT(i32 %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %117

38:                                               ; preds = %30
  %39 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %40 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %39, i32 0, i32 5
  %41 = load %struct.sk_buff**, %struct.sk_buff*** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %41, i64 %43
  %45 = load %struct.sk_buff*, %struct.sk_buff** %44, align 8
  store %struct.sk_buff* %45, %struct.sk_buff** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i64 @likely(%struct.sk_buff* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %100

49:                                               ; preds = %38
  %50 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %2, align 8
  %51 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %50, i32 0, i32 0
  %52 = load %struct.qtnf_pearl_tx_bd*, %struct.qtnf_pearl_tx_bd** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.qtnf_pearl_tx_bd, %struct.qtnf_pearl_tx_bd* %52, i64 %54
  store %struct.qtnf_pearl_tx_bd* %55, %struct.qtnf_pearl_tx_bd** %4, align 8
  %56 = load %struct.qtnf_pearl_tx_bd*, %struct.qtnf_pearl_tx_bd** %4, align 8
  %57 = getelementptr inbounds %struct.qtnf_pearl_tx_bd, %struct.qtnf_pearl_tx_bd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = load %struct.qtnf_pearl_tx_bd*, %struct.qtnf_pearl_tx_bd** %4, align 8
  %61 = getelementptr inbounds %struct.qtnf_pearl_tx_bd, %struct.qtnf_pearl_tx_bd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = call i32 @QTN_HOST_ADDR(i32 %59, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %66 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %73 = call i32 @pci_unmap_single(i32 %67, i32 %68, i32 %71, i32 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %49
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i32 @qtnf_update_tx_stats(i64 %81, %struct.sk_buff* %82)
  %84 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %85 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @unlikely(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %78
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @qtnf_wake_all_queues(i64 %92)
  %94 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %95 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %94, i32 0, i32 6
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %89, %78
  br label %97

97:                                               ; preds = %96, %49
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %98)
  br label %100

100:                                              ; preds = %97, %38
  %101 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %102 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %101, i32 0, i32 5
  %103 = load %struct.sk_buff**, %struct.sk_buff*** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %103, i64 %105
  store %struct.sk_buff* null, %struct.sk_buff** %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  %111 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %112 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sge i32 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %100
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %115, %100
  br label %30

117:                                              ; preds = %30
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %120 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %124 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %129 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %131 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %130, i32 0, i32 3
  %132 = load i64, i64* %6, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @PCIE_HDP_RX0DMA_CNT(i32) #1

declare dso_local i64 @CIRC_CNT(i32, i32, i32) #1

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
