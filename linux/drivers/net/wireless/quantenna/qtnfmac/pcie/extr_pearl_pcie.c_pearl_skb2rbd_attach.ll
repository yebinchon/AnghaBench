; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_pearl_skb2rbd_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_pearl_skb2rbd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_pearl_state = type { i32, %struct.qtnf_pearl_rx_bd*, %struct.qtnf_pcie_bus_priv }
%struct.qtnf_pearl_rx_bd = type { i32, i8*, i8* }
%struct.qtnf_pcie_bus_priv = type { i64, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }

@SKB_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"skb DMA mapping error: %pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_pcie_pearl_state*, i64)* @pearl_skb2rbd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pearl_skb2rbd_attach(%struct.qtnf_pcie_pearl_state* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_pcie_pearl_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qtnf_pcie_bus_priv*, align 8
  %7 = alloca %struct.qtnf_pearl_rx_bd*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.qtnf_pcie_pearl_state* %0, %struct.qtnf_pcie_pearl_state** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %4, align 8
  %11 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %10, i32 0, i32 2
  store %struct.qtnf_pcie_bus_priv* %11, %struct.qtnf_pcie_bus_priv** %6, align 8
  %12 = load i32, i32* @SKB_BUF_SIZE, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.sk_buff* @__netdev_alloc_skb_ip_align(i32* null, i32 %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %6, align 8
  %19 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %18, i32 0, i32 2
  %20 = load %struct.sk_buff**, %struct.sk_buff*** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %20, i64 %21
  store %struct.sk_buff* null, %struct.sk_buff** %22, align 8
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %86

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %6, align 8
  %28 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %27, i32 0, i32 2
  %29 = load %struct.sk_buff**, %struct.sk_buff*** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %29, i64 %30
  store %struct.sk_buff* %26, %struct.sk_buff** %31, align 8
  %32 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %4, align 8
  %33 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %32, i32 0, i32 1
  %34 = load %struct.qtnf_pearl_rx_bd*, %struct.qtnf_pearl_rx_bd** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.qtnf_pearl_rx_bd, %struct.qtnf_pearl_rx_bd* %34, i64 %35
  store %struct.qtnf_pearl_rx_bd* %36, %struct.qtnf_pearl_rx_bd** %7, align 8
  %37 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %6, align 8
  %38 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SKB_BUF_SIZE, align 4
  %44 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %45 = call i32 @pci_map_single(i32 %39, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %6, align 8
  %47 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @pci_dma_mapping_error(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %25
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %9)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %86

56:                                               ; preds = %25
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @QTN_HOST_LO32(i32 %57)
  %59 = call i8* @cpu_to_le32(i64 %58)
  %60 = load %struct.qtnf_pearl_rx_bd*, %struct.qtnf_pearl_rx_bd** %7, align 8
  %61 = getelementptr inbounds %struct.qtnf_pearl_rx_bd, %struct.qtnf_pearl_rx_bd* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @QTN_HOST_HI32(i32 %62)
  %64 = call i8* @cpu_to_le32(i64 %63)
  %65 = load %struct.qtnf_pearl_rx_bd*, %struct.qtnf_pearl_rx_bd** %7, align 8
  %66 = getelementptr inbounds %struct.qtnf_pearl_rx_bd, %struct.qtnf_pearl_rx_bd* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.qtnf_pearl_rx_bd*, %struct.qtnf_pearl_rx_bd** %7, align 8
  %68 = getelementptr inbounds %struct.qtnf_pearl_rx_bd, %struct.qtnf_pearl_rx_bd* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %6, align 8
  %71 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = call i32 (...) @wmb()
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @QTN_HOST_LO32(i32 %73)
  %75 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %4, align 8
  %76 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @PCIE_HDP_HHBM_BUF_PTR(i32 %77)
  %79 = call i32 @writel(i64 %74, i32 %78)
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %4, align 8
  %82 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @PCIE_HDP_TX_HOST_Q_WR_PTR(i32 %83)
  %85 = call i32 @writel(i64 %80, i32 %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %56, %52, %17
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.sk_buff* @__netdev_alloc_skb_ip_align(i32*, i32, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @QTN_HOST_LO32(i32) #1

declare dso_local i64 @QTN_HOST_HI32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @PCIE_HDP_HHBM_BUF_PTR(i32) #1

declare dso_local i32 @PCIE_HDP_TX_HOST_Q_WR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
