; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_release_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_release_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dspi = type { %struct.TYPE_2__*, %struct.fsl_dspi_dma* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.fsl_dspi_dma = type { i64, i32, i64, i32 }

@DSPI_DMA_BUFSIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_dspi*)* @dspi_release_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dspi_release_dma(%struct.fsl_dspi* %0) #0 {
  %2 = alloca %struct.fsl_dspi*, align 8
  %3 = alloca %struct.fsl_dspi_dma*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.fsl_dspi* %0, %struct.fsl_dspi** %2, align 8
  %5 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %5, i32 0, i32 1
  %7 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %6, align 8
  store %struct.fsl_dspi_dma* %7, %struct.fsl_dspi_dma** %3, align 8
  %8 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %9 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %3, align 8
  %13 = icmp ne %struct.fsl_dspi_dma* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %3, align 8
  %17 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %3, align 8
  %23 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DSPI_DMA_BUFSIZE, align 4
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = call i32 @dma_unmap_single(%struct.device* %21, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %3, align 8
  %29 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dma_release_channel(i64 %30)
  br label %32

32:                                               ; preds = %20, %15
  %33 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %3, align 8
  %34 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %3, align 8
  %40 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DSPI_DMA_BUFSIZE, align 4
  %43 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %44 = call i32 @dma_unmap_single(%struct.device* %38, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %3, align 8
  %46 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dma_release_channel(i64 %47)
  br label %49

49:                                               ; preds = %14, %37, %32
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_release_channel(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
