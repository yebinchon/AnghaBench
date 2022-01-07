; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_free_trx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_free_trx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i64 }
%struct.rtw_pci = type { %struct.rtw_pci_rx_ring*, %struct.rtw_pci_tx_ring* }
%struct.rtw_pci_rx_ring = type { i32 }
%struct.rtw_pci_tx_ring = type { i32 }

@RTK_MAX_TX_QUEUE_NUM = common dso_local global i32 0, align 4
@RTK_MAX_RX_QUEUE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_pci_free_trx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_pci_free_trx_ring(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_pci*, align 8
  %4 = alloca %struct.rtw_pci_tx_ring*, align 8
  %5 = alloca %struct.rtw_pci_rx_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.rtw_pci*
  store %struct.rtw_pci* %10, %struct.rtw_pci** %3, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @RTK_MAX_TX_QUEUE_NUM, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %17 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %16, i32 0, i32 1
  %18 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %18, i64 %20
  store %struct.rtw_pci_tx_ring* %21, %struct.rtw_pci_tx_ring** %4, align 8
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %23 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %4, align 8
  %24 = call i32 @rtw_pci_free_tx_ring(%struct.rtw_dev* %22, %struct.rtw_pci_tx_ring* %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %11

28:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @RTK_MAX_RX_QUEUE_NUM, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %35 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %34, i32 0, i32 0
  %36 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %36, i64 %38
  store %struct.rtw_pci_rx_ring* %39, %struct.rtw_pci_rx_ring** %5, align 8
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %41 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %5, align 8
  %42 = call i32 @rtw_pci_free_rx_ring(%struct.rtw_dev* %40, %struct.rtw_pci_rx_ring* %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %29

46:                                               ; preds = %29
  ret void
}

declare dso_local i32 @rtw_pci_free_tx_ring(%struct.rtw_dev*, %struct.rtw_pci_tx_ring*) #1

declare dso_local i32 @rtw_pci_free_rx_ring(%struct.rtw_dev*, %struct.rtw_pci_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
