; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_free_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_free_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_pci_rx_ring = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.rtw_pci_rx_ring*)* @rtw_pci_free_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_pci_free_rx_ring(%struct.rtw_dev* %0, %struct.rtw_pci_rx_ring* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_pci_rx_ring*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw_pci_rx_ring* %1, %struct.rtw_pci_rx_ring** %4, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pci_dev* @to_pci_dev(i32 %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %4, align 8
  %17 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %4, align 8
  %21 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %19, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %26 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %4, align 8
  %27 = call i32 @rtw_pci_free_rx_ring_skbs(%struct.rtw_dev* %25, %struct.rtw_pci_rx_ring* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %4, align 8
  %32 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pci_free_consistent(%struct.pci_dev* %28, i32 %29, i32* %30, i32 %34)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @rtw_pci_free_rx_ring_skbs(%struct.rtw_dev*, %struct.rtw_pci_rx_ring*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
