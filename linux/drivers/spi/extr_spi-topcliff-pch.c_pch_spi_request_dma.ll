; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-topcliff-pch.c_pch_spi_request_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-topcliff-pch.c_pch_spi_request_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_spi_data = type { i32, i64, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, %struct.pch_spi_dma_ctrl }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pch_spi_dma_ctrl = type { %struct.dma_chan*, %struct.dma_chan*, %struct.pch_dma_slave, %struct.pch_dma_slave }
%struct.dma_chan = type { i32 }
%struct.pch_dma_slave = type { i32, i32, i64, i32*, i64 }
%struct.pci_dev = type { i32 }

@PCH_DMA_WIDTH_1_BYTE = common dso_local global i32 0, align 4
@PCH_DMA_WIDTH_2_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@PCH_SPDWR = common dso_local global i64 0, align 8
@pch_spi_filter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ERROR: dma_request_channel FAILS(Tx)\0A\00", align 1
@PCH_SPDRR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"ERROR: dma_request_channel FAILS(Rx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_spi_data*, i32)* @pch_spi_request_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_spi_request_dma(%struct.pch_spi_data* %0, i32 %1) #0 {
  %3 = alloca %struct.pch_spi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.pch_dma_slave*, align 8
  %9 = alloca %struct.pch_spi_dma_ctrl*, align 8
  %10 = alloca i32, align 4
  store %struct.pch_spi_data* %0, %struct.pch_spi_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @PCH_DMA_WIDTH_1_BYTE, align 4
  store i32 %14, i32* %10, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @PCH_DMA_WIDTH_2_BYTES, align 4
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %19 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %18, i32 0, i32 5
  store %struct.pch_spi_dma_ctrl* %19, %struct.pch_spi_dma_ctrl** %9, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dma_cap_zero(i32 %20)
  %22 = load i32, i32* @DMA_SLAVE, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dma_cap_set(i32 %22, i32 %23)
  %25 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %26 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %25, i32 0, i32 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %33 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %32, i32 0, i32 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PCI_SLOT(i32 %38)
  %40 = call i32 @PCI_DEVFN(i32 %39, i32 0)
  %41 = call %struct.pci_dev* @pci_get_slot(i32 %31, i32 %40)
  store %struct.pci_dev* %41, %struct.pci_dev** %7, align 8
  %42 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %9, align 8
  %43 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %42, i32 0, i32 3
  store %struct.pch_dma_slave* %43, %struct.pch_dma_slave** %8, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load %struct.pch_dma_slave*, %struct.pch_dma_slave** %8, align 8
  %47 = getelementptr inbounds %struct.pch_dma_slave, %struct.pch_dma_slave* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %49 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %50, 2
  %52 = load %struct.pch_dma_slave*, %struct.pch_dma_slave** %8, align 8
  %53 = getelementptr inbounds %struct.pch_dma_slave, %struct.pch_dma_slave* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %55 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCH_SPDWR, align 8
  %58 = add nsw i64 %56, %57
  %59 = load %struct.pch_dma_slave*, %struct.pch_dma_slave** %8, align 8
  %60 = getelementptr inbounds %struct.pch_dma_slave, %struct.pch_dma_slave* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.pch_dma_slave*, %struct.pch_dma_slave** %8, align 8
  %63 = getelementptr inbounds %struct.pch_dma_slave, %struct.pch_dma_slave* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @pch_spi_filter, align 4
  %66 = load %struct.pch_dma_slave*, %struct.pch_dma_slave** %8, align 8
  %67 = call %struct.dma_chan* @dma_request_channel(i32 %64, i32 %65, %struct.pch_dma_slave* %66)
  store %struct.dma_chan* %67, %struct.dma_chan** %6, align 8
  %68 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %69 = icmp ne %struct.dma_chan* %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %17
  %71 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %72 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %77 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  br label %129

78:                                               ; preds = %17
  %79 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %80 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %9, align 8
  %81 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %80, i32 0, i32 1
  store %struct.dma_chan* %79, %struct.dma_chan** %81, align 8
  %82 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %9, align 8
  %83 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %82, i32 0, i32 2
  store %struct.pch_dma_slave* %83, %struct.pch_dma_slave** %8, align 8
  %84 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = load %struct.pch_dma_slave*, %struct.pch_dma_slave** %8, align 8
  %87 = getelementptr inbounds %struct.pch_dma_slave, %struct.pch_dma_slave* %86, i32 0, i32 3
  store i32* %85, i32** %87, align 8
  %88 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %89 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %90, 2
  %92 = add nsw i32 %91, 1
  %93 = load %struct.pch_dma_slave*, %struct.pch_dma_slave** %8, align 8
  %94 = getelementptr inbounds %struct.pch_dma_slave, %struct.pch_dma_slave* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %96 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PCH_SPDRR, align 8
  %99 = add nsw i64 %97, %98
  %100 = load %struct.pch_dma_slave*, %struct.pch_dma_slave** %8, align 8
  %101 = getelementptr inbounds %struct.pch_dma_slave, %struct.pch_dma_slave* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.pch_dma_slave*, %struct.pch_dma_slave** %8, align 8
  %104 = getelementptr inbounds %struct.pch_dma_slave, %struct.pch_dma_slave* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @pch_spi_filter, align 4
  %107 = load %struct.pch_dma_slave*, %struct.pch_dma_slave** %8, align 8
  %108 = call %struct.dma_chan* @dma_request_channel(i32 %105, i32 %106, %struct.pch_dma_slave* %107)
  store %struct.dma_chan* %108, %struct.dma_chan** %6, align 8
  %109 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %110 = icmp ne %struct.dma_chan* %109, null
  br i1 %110, label %125, label %111

111:                                              ; preds = %78
  %112 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %113 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %112, i32 0, i32 2
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = call i32 @dev_err(i32* %115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %117 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %9, align 8
  %118 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %117, i32 0, i32 1
  %119 = load %struct.dma_chan*, %struct.dma_chan** %118, align 8
  %120 = call i32 @dma_release_channel(%struct.dma_chan* %119)
  %121 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %9, align 8
  %122 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %121, i32 0, i32 1
  store %struct.dma_chan* null, %struct.dma_chan** %122, align 8
  %123 = load %struct.pch_spi_data*, %struct.pch_spi_data** %3, align 8
  %124 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  br label %129

125:                                              ; preds = %78
  %126 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %127 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %9, align 8
  %128 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %127, i32 0, i32 0
  store %struct.dma_chan* %126, %struct.dma_chan** %128, align 8
  br label %129

129:                                              ; preds = %125, %111, %70
  ret void
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local %struct.dma_chan* @dma_request_channel(i32, i32, %struct.pch_dma_slave*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
