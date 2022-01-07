; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_topaz_skb2rbd_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_topaz_skb2rbd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_topaz_state = type { %struct.TYPE_2__, %struct.qtnf_topaz_rx_bd* }
%struct.TYPE_2__ = type { i64, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.qtnf_topaz_rx_bd = type { i8*, i8* }

@SKB_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"skb mapping error: %pad\0A\00", align 1
@QTN_BD_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_pcie_topaz_state*, i64, i32)* @topaz_skb2rbd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @topaz_skb2rbd_attach(%struct.qtnf_pcie_topaz_state* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_pcie_topaz_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qtnf_topaz_rx_bd*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.qtnf_pcie_topaz_state* %0, %struct.qtnf_pcie_topaz_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %5, align 8
  %12 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %11, i32 0, i32 1
  %13 = load %struct.qtnf_topaz_rx_bd*, %struct.qtnf_topaz_rx_bd** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.qtnf_topaz_rx_bd, %struct.qtnf_topaz_rx_bd* %13, i64 %14
  store %struct.qtnf_topaz_rx_bd* %15, %struct.qtnf_topaz_rx_bd** %8, align 8
  %16 = load i32, i32* @SKB_BUF_SIZE, align 4
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sk_buff* @__netdev_alloc_skb_ip_align(i32* null, i32 %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %3
  %22 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %5, align 8
  %23 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load %struct.sk_buff**, %struct.sk_buff*** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %25, i64 %26
  store %struct.sk_buff* null, %struct.sk_buff** %27, align 8
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %75

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %5, align 8
  %33 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load %struct.sk_buff**, %struct.sk_buff*** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %35, i64 %36
  store %struct.sk_buff* %31, %struct.sk_buff** %37, align 8
  %38 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %5, align 8
  %39 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SKB_BUF_SIZE, align 4
  %46 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %47 = call i32 @pci_map_single(i32 %41, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %5, align 8
  %49 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @pci_dma_mapping_error(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %30
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %10)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %75

59:                                               ; preds = %30
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @QTN_HOST_LO32(i32 %60)
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.qtnf_topaz_rx_bd*, %struct.qtnf_topaz_rx_bd** %8, align 8
  %64 = getelementptr inbounds %struct.qtnf_topaz_rx_bd, %struct.qtnf_topaz_rx_bd* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @QTN_BD_EMPTY, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %65, %66
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = load %struct.qtnf_topaz_rx_bd*, %struct.qtnf_topaz_rx_bd** %8, align 8
  %70 = getelementptr inbounds %struct.qtnf_topaz_rx_bd, %struct.qtnf_topaz_rx_bd* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %5, align 8
  %73 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %59, %55, %21
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.sk_buff* @__netdev_alloc_skb_ip_align(i32*, i32, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @QTN_HOST_LO32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
