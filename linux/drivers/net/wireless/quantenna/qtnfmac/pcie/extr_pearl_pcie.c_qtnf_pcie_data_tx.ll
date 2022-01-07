; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_pcie_data_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_pcie_data_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32 }
%struct.sk_buff = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qtnf_pcie_pearl_state = type { i32, i64, %struct.qtnf_pearl_tx_bd*, %struct.qtnf_pcie_bus_priv }
%struct.qtnf_pearl_tx_bd = type { i8*, i8*, i8* }
%struct.qtnf_pcie_bus_priv = type { i32, i32, i32, i32, i32, i32, %struct.sk_buff** }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"skb DMA mapping error: %pad\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QTN_PCIE_TX_DESC_LEN_MASK = common dso_local global i32 0, align 4
@QTN_PCIE_TX_DESC_LEN_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"drop skb\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_bus*, %struct.sk_buff*)* @qtnf_pcie_data_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_pcie_data_tx(%struct.qtnf_bus* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_bus*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.qtnf_pcie_pearl_state*, align 8
  %7 = alloca %struct.qtnf_pcie_bus_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qtnf_pearl_tx_bd*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %16 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %17 = call %struct.qtnf_pcie_pearl_state* @get_bus_priv(%struct.qtnf_bus* %16)
  store %struct.qtnf_pcie_pearl_state* %17, %struct.qtnf_pcie_pearl_state** %6, align 8
  %18 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %19 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %18, i32 0, i32 3
  store %struct.qtnf_pcie_bus_priv* %19, %struct.qtnf_pcie_bus_priv** %7, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %21 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %20, i32 0, i32 3
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %25 = call i32 @qtnf_tx_queue_ready(%struct.qtnf_pcie_pearl_state* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @netif_tx_stop_all_queues(%struct.TYPE_4__* %35)
  %37 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %38 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %32, %27
  %40 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %41 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %40, i32 0, i32 3
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %44, i32* %3, align 4
  br label %167

45:                                               ; preds = %2
  %46 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %47 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %51 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %50, i32 0, i32 6
  %52 = load %struct.sk_buff**, %struct.sk_buff*** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %52, i64 %54
  store %struct.sk_buff* %49, %struct.sk_buff** %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %12, align 4
  %59 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %60 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %69 = call i64 @pci_map_single(i32 %61, i32 %64, i32 %67, i32 %68)
  store i64 %69, i64* %9, align 8
  %70 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %71 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %9, align 8
  %74 = call i64 @pci_dma_mapping_error(i32 %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %45
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64* %9)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %15, align 4
  br label %132

80:                                               ; preds = %45
  %81 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %82 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %81, i32 0, i32 2
  %83 = load %struct.qtnf_pearl_tx_bd*, %struct.qtnf_pearl_tx_bd** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.qtnf_pearl_tx_bd, %struct.qtnf_pearl_tx_bd* %83, i64 %85
  store %struct.qtnf_pearl_tx_bd* %86, %struct.qtnf_pearl_tx_bd** %10, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @QTN_HOST_LO32(i64 %87)
  %89 = call i8* @cpu_to_le32(i32 %88)
  %90 = load %struct.qtnf_pearl_tx_bd*, %struct.qtnf_pearl_tx_bd** %10, align 8
  %91 = getelementptr inbounds %struct.qtnf_pearl_tx_bd, %struct.qtnf_pearl_tx_bd* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @QTN_HOST_HI32(i64 %92)
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = load %struct.qtnf_pearl_tx_bd*, %struct.qtnf_pearl_tx_bd** %10, align 8
  %96 = getelementptr inbounds %struct.qtnf_pearl_tx_bd, %struct.qtnf_pearl_tx_bd* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @QTN_PCIE_TX_DESC_LEN_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @QTN_PCIE_TX_DESC_LEN_SHIFT, align 4
  %101 = shl i32 %99, %100
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i8* @cpu_to_le32(i32 %102)
  %104 = load %struct.qtnf_pearl_tx_bd*, %struct.qtnf_pearl_tx_bd** %10, align 8
  %105 = getelementptr inbounds %struct.qtnf_pearl_tx_bd, %struct.qtnf_pearl_tx_bd* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = call i32 (...) @dma_wmb()
  %107 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %108 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 %111, 24
  %113 = add i64 %109, %112
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @QTN_HOST_LO32(i64 %114)
  %116 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %117 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @PCIE_HDP_HOST_WR_DESC0(i32 %118)
  %120 = call i32 @writel(i32 %115, i32 %119)
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  %123 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %124 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp sge i32 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %80
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %127, %80
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %131 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %128, %76
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %132
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = icmp ne %struct.sk_buff* %136, null
  br i1 %137, label %138, label %155

138:                                              ; preds = %135
  %139 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = icmp ne %struct.TYPE_4__* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %138
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %144, %138
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %153)
  br label %155

155:                                              ; preds = %152, %135, %132
  %156 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %157 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %161 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %160, i32 0, i32 3
  %162 = load i64, i64* %11, align 8
  %163 = call i32 @spin_unlock_irqrestore(i32* %161, i64 %162)
  %164 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %165 = call i32 @qtnf_pearl_data_tx_reclaim(%struct.qtnf_pcie_pearl_state* %164)
  %166 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %155, %39
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.qtnf_pcie_pearl_state* @get_bus_priv(%struct.qtnf_bus*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qtnf_tx_queue_ready(%struct.qtnf_pcie_pearl_state*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i64) #1

declare dso_local i32 @pr_err(i8*, i64*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @QTN_HOST_LO32(i64) #1

declare dso_local i32 @QTN_HOST_HI32(i64) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @PCIE_HDP_HOST_WR_DESC0(i32) #1

declare dso_local i32 @pr_err_ratelimited(i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @qtnf_pearl_data_tx_reclaim(%struct.qtnf_pcie_pearl_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
