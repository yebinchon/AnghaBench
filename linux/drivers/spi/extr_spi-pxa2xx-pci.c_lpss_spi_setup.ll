; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-pci.c_lpss_spi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-pci.c_lpss_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pxa_spi_info = type { i32, i32, i32, %struct.dw_dma_slave*, %struct.dw_dma_slave* }
%struct.dw_dma_slave = type { i32, i64, i32* }

@lpss_dma_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pxa_spi_info*)* @lpss_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpss_spi_setup(%struct.pci_dev* %0, %struct.pxa_spi_info* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pxa_spi_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.dw_dma_slave*, align 8
  %7 = alloca %struct.dw_dma_slave*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pxa_spi_info* %1, %struct.pxa_spi_info** %4, align 8
  %8 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %4, align 8
  %9 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %4, align 8
  %11 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %10, i32 0, i32 1
  store i32 50000000, i32* %11, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PCI_SLOT(i32 %17)
  %19 = call i32 @PCI_DEVFN(i32 %18, i32 0)
  %20 = call %struct.pci_dev* @pci_get_slot(i32 %14, i32 %19)
  store %struct.pci_dev* %20, %struct.pci_dev** %5, align 8
  %21 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %4, align 8
  %22 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %21, i32 0, i32 4
  %23 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %22, align 8
  %24 = icmp ne %struct.dw_dma_slave* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %4, align 8
  %27 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %26, i32 0, i32 4
  %28 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %27, align 8
  store %struct.dw_dma_slave* %28, %struct.dw_dma_slave** %6, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %6, align 8
  %32 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %6, align 8
  %34 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %6, align 8
  %36 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %25, %2
  %38 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %4, align 8
  %39 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %38, i32 0, i32 3
  %40 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %39, align 8
  %41 = icmp ne %struct.dw_dma_slave* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %4, align 8
  %44 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %43, i32 0, i32 3
  %45 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %44, align 8
  store %struct.dw_dma_slave* %45, %struct.dw_dma_slave** %7, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %7, align 8
  %49 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %7, align 8
  %51 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %7, align 8
  %53 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %42, %37
  %55 = load i32, i32* @lpss_dma_filter, align 4
  %56 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %4, align 8
  %57 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  ret i32 0
}

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
