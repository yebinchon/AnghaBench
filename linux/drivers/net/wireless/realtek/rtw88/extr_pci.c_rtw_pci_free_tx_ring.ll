; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_pci_tx_ring = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.rtw_pci_tx_ring*)* @rtw_pci_free_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_pci_free_tx_ring(%struct.rtw_dev* %0, %struct.rtw_pci_tx_ring* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_pci_tx_ring*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw_pci_tx_ring* %1, %struct.rtw_pci_tx_ring** %4, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pci_dev* @to_pci_dev(i32 %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %4, align 8
  %14 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %4, align 8
  %18 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %4, align 8
  %23 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %21, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %28 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %4, align 8
  %29 = call i32 @rtw_pci_free_tx_ring_skbs(%struct.rtw_dev* %27, %struct.rtw_pci_tx_ring* %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %4, align 8
  %34 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pci_free_consistent(%struct.pci_dev* %30, i32 %31, i32* %32, i32 %36)
  %38 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @rtw_pci_free_tx_ring_skbs(%struct.rtw_dev*, %struct.rtw_pci_tx_ring*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
