; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_reset_rx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_reset_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.rtw_pci_rx_ring = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.rtw_pci_rx_buffer_desc = type { i32, i32 }

@RTK_PCI_RX_BUF_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, %struct.sk_buff*, %struct.rtw_pci_rx_ring*, i32, i32)* @rtw_pci_reset_rx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_pci_reset_rx_desc(%struct.rtw_dev* %0, %struct.sk_buff* %1, %struct.rtw_pci_rx_ring* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtw_dev*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.rtw_pci_rx_ring*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca %struct.rtw_pci_rx_buffer_desc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.rtw_pci_rx_ring* %2, %struct.rtw_pci_rx_ring** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %17 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.pci_dev* @to_pci_dev(i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %12, align 8
  %20 = load i32, i32* @RTK_PCI_RX_BUF_SIZE, align 4
  store i32 %20, i32* %14, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %67

26:                                               ; preds = %5
  %27 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %33 = call i32 @pci_map_single(%struct.pci_dev* %27, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %35 = load i32, i32* %15, align 4
  %36 = call i64 @pci_dma_mapping_error(%struct.pci_dev* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %67

41:                                               ; preds = %26
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  store i32 %42, i32* %46, align 4
  %47 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %9, align 8
  %48 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = inttoptr i64 %55 to %struct.rtw_pci_rx_buffer_desc*
  store %struct.rtw_pci_rx_buffer_desc* %56, %struct.rtw_pci_rx_buffer_desc** %13, align 8
  %57 = load %struct.rtw_pci_rx_buffer_desc*, %struct.rtw_pci_rx_buffer_desc** %13, align 8
  %58 = call i32 @memset(%struct.rtw_pci_rx_buffer_desc* %57, i32 0, i32 8)
  %59 = load i32, i32* @RTK_PCI_RX_BUF_SIZE, align 4
  %60 = call i32 @cpu_to_le16(i32 %59)
  %61 = load %struct.rtw_pci_rx_buffer_desc*, %struct.rtw_pci_rx_buffer_desc** %13, align 8
  %62 = getelementptr inbounds %struct.rtw_pci_rx_buffer_desc, %struct.rtw_pci_rx_buffer_desc* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @cpu_to_le32(i32 %63)
  %65 = load %struct.rtw_pci_rx_buffer_desc*, %struct.rtw_pci_rx_buffer_desc** %13, align 8
  %66 = getelementptr inbounds %struct.rtw_pci_rx_buffer_desc, %struct.rtw_pci_rx_buffer_desc* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %41, %38, %23
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(%struct.pci_dev*, i32) #1

declare dso_local i32 @memset(%struct.rtw_pci_rx_buffer_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
