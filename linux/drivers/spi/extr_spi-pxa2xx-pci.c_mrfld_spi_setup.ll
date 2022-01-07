; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-pci.c_mrfld_spi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-pci.c_mrfld_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma_slave = type { i32* }
%struct.pci_dev = type { i32, i32, i32 }
%struct.pxa_spi_info = type { i32, i32, i32, i32, %struct.dw_dma_slave*, %struct.dw_dma_slave* }

@mrfld3_tx_param = common dso_local global %struct.dw_dma_slave zeroinitializer, align 8
@mrfld3_rx_param = common dso_local global %struct.dw_dma_slave zeroinitializer, align 8
@mrfld5_tx_param = common dso_local global %struct.dw_dma_slave zeroinitializer, align 8
@mrfld5_rx_param = common dso_local global %struct.dw_dma_slave zeroinitializer, align 8
@mrfld6_tx_param = common dso_local global %struct.dw_dma_slave zeroinitializer, align 8
@mrfld6_rx_param = common dso_local global %struct.dw_dma_slave zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@lpss_dma_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pxa_spi_info*)* @mrfld_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrfld_spi_setup(%struct.pci_dev* %0, %struct.pxa_spi_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pxa_spi_info*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.dw_dma_slave*, align 8
  %8 = alloca %struct.dw_dma_slave*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pxa_spi_info* %1, %struct.pxa_spi_info** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @PCI_DEVFN(i32 21, i32 0)
  %13 = call %struct.pci_dev* @pci_get_slot(i32 %11, i32 %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %6, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @PCI_FUNC(i32 %16)
  switch i32 %17, label %45 [
    i32 0, label %18
    i32 1, label %27
    i32 2, label %36
  ]

18:                                               ; preds = %2
  %19 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %20 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %19, i32 0, i32 0
  store i32 3, i32* %20, align 8
  %21 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %22 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %24 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %23, i32 0, i32 5
  store %struct.dw_dma_slave* @mrfld3_tx_param, %struct.dw_dma_slave** %24, align 8
  %25 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %26 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %25, i32 0, i32 4
  store %struct.dw_dma_slave* @mrfld3_rx_param, %struct.dw_dma_slave** %26, align 8
  br label %48

27:                                               ; preds = %2
  %28 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %29 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %28, i32 0, i32 0
  store i32 5, i32* %29, align 8
  %30 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %31 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %30, i32 0, i32 1
  store i32 4, i32* %31, align 4
  %32 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %33 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %32, i32 0, i32 5
  store %struct.dw_dma_slave* @mrfld5_tx_param, %struct.dw_dma_slave** %33, align 8
  %34 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %35 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %34, i32 0, i32 4
  store %struct.dw_dma_slave* @mrfld5_rx_param, %struct.dw_dma_slave** %35, align 8
  br label %48

36:                                               ; preds = %2
  %37 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %38 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %37, i32 0, i32 0
  store i32 6, i32* %38, align 8
  %39 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %40 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %42 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %41, i32 0, i32 5
  store %struct.dw_dma_slave* @mrfld6_tx_param, %struct.dw_dma_slave** %42, align 8
  %43 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %44 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %43, i32 0, i32 4
  store %struct.dw_dma_slave* @mrfld6_rx_param, %struct.dw_dma_slave** %44, align 8
  br label %48

45:                                               ; preds = %2
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %68

48:                                               ; preds = %36, %27, %18
  %49 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %50 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %49, i32 0, i32 5
  %51 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %50, align 8
  store %struct.dw_dma_slave* %51, %struct.dw_dma_slave** %7, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %7, align 8
  %55 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %57 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %56, i32 0, i32 4
  %58 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %57, align 8
  store %struct.dw_dma_slave* %58, %struct.dw_dma_slave** %8, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %8, align 8
  %62 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load i32, i32* @lpss_dma_filter, align 4
  %64 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %65 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.pxa_spi_info*, %struct.pxa_spi_info** %5, align 8
  %67 = getelementptr inbounds %struct.pxa_spi_info, %struct.pxa_spi_info* %66, i32 0, i32 2
  store i32 8, i32* %67, align 8
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %48, %45
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
