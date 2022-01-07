; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_msi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_msi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i64, i32* }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to map MSI data\0A\00", align 1
@PCIE_MSI_ADDR_LO = common dso_local global i32 0, align 4
@PCIE_MSI_ADDR_HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_pcie_msi_init(%struct.pcie_port* %0) #0 {
  %2 = alloca %struct.pcie_port*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  store %struct.pcie_port* %0, %struct.pcie_port** %2, align 8
  %6 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %7 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %6)
  store %struct.dw_pcie* %7, %struct.dw_pcie** %3, align 8
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32* @alloc_page(i32 %11)
  %13 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %14 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %17 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %21 = call i64 @dma_map_page(%struct.device* %15, i32* %18, i32 0, i32 %19, i32 %20)
  %22 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %23 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %26 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @dma_mapping_error(%struct.device* %24, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %1
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %34 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @__free_page(i32* %35)
  %37 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %38 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  br label %53

39:                                               ; preds = %1
  %40 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %41 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %5, align 8
  %43 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %44 = load i32, i32* @PCIE_MSI_ADDR_LO, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @lower_32_bits(i64 %45)
  %47 = call i32 @dw_pcie_wr_own_conf(%struct.pcie_port* %43, i32 %44, i32 4, i32 %46)
  %48 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %49 = load i32, i32* @PCIE_MSI_ADDR_HI, align 4
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @upper_32_bits(i64 %50)
  %52 = call i32 @dw_pcie_wr_own_conf(%struct.pcie_port* %48, i32 %49, i32 4, i32 %51)
  br label %53

53:                                               ; preds = %39, %30
  ret void
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i64 @dma_map_page(%struct.device*, i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @__free_page(i32*) #1

declare dso_local i32 @dw_pcie_wr_own_conf(%struct.pcie_port*, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
