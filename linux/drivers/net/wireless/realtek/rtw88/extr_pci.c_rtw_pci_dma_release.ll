; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_dma_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_dma_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_pci = type { %struct.rtw_pci_tx_ring* }
%struct.rtw_pci_tx_ring = type { i32 }

@RTK_MAX_TX_QUEUE_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.rtw_pci*)* @rtw_pci_dma_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_pci_dma_release(%struct.rtw_dev* %0, %struct.rtw_pci* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_pci*, align 8
  %5 = alloca %struct.rtw_pci_tx_ring*, align 8
  %6 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw_pci* %1, %struct.rtw_pci** %4, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %20, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @RTK_MAX_TX_QUEUE_NUM, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load %struct.rtw_pci*, %struct.rtw_pci** %4, align 8
  %13 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %12, i32 0, i32 0
  %14 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %14, i64 %15
  store %struct.rtw_pci_tx_ring* %16, %struct.rtw_pci_tx_ring** %5, align 8
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %18 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %5, align 8
  %19 = call i32 @rtw_pci_free_tx_ring_skbs(%struct.rtw_dev* %17, %struct.rtw_pci_tx_ring* %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %6, align 8
  br label %7

23:                                               ; preds = %7
  ret void
}

declare dso_local i32 @rtw_pci_free_tx_ring_skbs(%struct.rtw_dev*, %struct.rtw_pci_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
