; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_dma_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_dma_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info*, i64 }
%struct.rtw_chip_info = type { i32 }
%struct.rtw_pci_rx_ring = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rtw_pci = type { i32 }
%struct.rtw_pci_rx_buffer_desc = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"pci bus timeout, check dma status\0A\00", align 1
@RX_TAG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.rtw_pci_rx_ring*, i32)* @rtw_pci_dma_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_pci_dma_check(%struct.rtw_dev* %0, %struct.rtw_pci_rx_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.rtw_pci_rx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtw_pci*, align 8
  %8 = alloca %struct.rtw_chip_info*, align 8
  %9 = alloca %struct.rtw_pci_rx_buffer_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.rtw_pci_rx_ring* %1, %struct.rtw_pci_rx_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %13 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.rtw_pci*
  store %struct.rtw_pci* %15, %struct.rtw_pci** %7, align 8
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %17 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %16, i32 0, i32 0
  %18 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %17, align 8
  store %struct.rtw_chip_info* %18, %struct.rtw_chip_info** %8, align 8
  %19 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %8, align 8
  %20 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %5, align 8
  %23 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %10, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = inttoptr i64 %30 to %struct.rtw_pci_rx_buffer_desc*
  store %struct.rtw_pci_rx_buffer_desc* %31, %struct.rtw_pci_rx_buffer_desc** %9, align 8
  %32 = load %struct.rtw_pci_rx_buffer_desc*, %struct.rtw_pci_rx_buffer_desc** %9, align 8
  %33 = getelementptr inbounds %struct.rtw_pci_rx_buffer_desc, %struct.rtw_pci_rx_buffer_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.rtw_pci*, %struct.rtw_pci** %7, align 8
  %38 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %43 = call i32 @rtw_warn(%struct.rtw_dev* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %3
  %45 = load %struct.rtw_pci*, %struct.rtw_pci** %7, align 8
  %46 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* @RX_TAG_MAX, align 4
  %50 = srem i32 %48, %49
  %51 = load %struct.rtw_pci*, %struct.rtw_pci** %7, align 8
  %52 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @rtw_warn(%struct.rtw_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
