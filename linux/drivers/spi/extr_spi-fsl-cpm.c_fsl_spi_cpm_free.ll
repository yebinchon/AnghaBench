; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-cpm.c_fsl_spi_cpm_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-cpm.c_fsl_spi_cpm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc8xxx_spi = type { i32, i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@SPI_CPM_MODE = common dso_local global i32 0, align 4
@SPI_MRBLR = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_spi_cpm_free(%struct.mpc8xxx_spi* %0) #0 {
  %2 = alloca %struct.mpc8xxx_spi*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.mpc8xxx_spi* %0, %struct.mpc8xxx_spi** %2, align 8
  %4 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %5 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %4, i32 0, i32 5
  %6 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %8 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SPI_CPM_MODE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %17 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SPI_MRBLR, align 4
  %20 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %21 = call i32 @dma_unmap_single(%struct.device* %15, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %24 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load i32, i32* @DMA_TO_DEVICE, align 4
  %28 = call i32 @dma_unmap_single(%struct.device* %22, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %30 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @cpm_muram_offset(i32 %31)
  %33 = call i32 @cpm_muram_free(i32 %32)
  %34 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %35 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cpm_muram_offset(i32 %36)
  %38 = call i32 @cpm_muram_free(i32 %37)
  %39 = call i32 (...) @fsl_spi_free_dummy_rx()
  br label %40

40:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @cpm_muram_free(i32) #1

declare dso_local i32 @cpm_muram_offset(i32) #1

declare dso_local i32 @fsl_spi_free_dummy_rx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
