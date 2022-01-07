; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-cpm.c_fsl_spi_cpm_bufs_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-cpm.c_fsl_spi_cpm_bufs_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc8xxx_spi = type { %struct.spi_transfer*, i32, i64, i32, i64, %struct.device* }
%struct.spi_transfer = type { i32 }
%struct.device = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_spi_cpm_bufs_complete(%struct.mpc8xxx_spi* %0) #0 {
  %2 = alloca %struct.mpc8xxx_spi*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  store %struct.mpc8xxx_spi* %0, %struct.mpc8xxx_spi** %2, align 8
  %5 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %6 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %5, i32 0, i32 5
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %9 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %8, i32 0, i32 0
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  store %struct.spi_transfer* %10, %struct.spi_transfer** %4, align 8
  %11 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %12 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %18 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DMA_TO_DEVICE, align 4
  %24 = call i32 @dma_unmap_single(%struct.device* %16, i32 %19, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %15, %1
  %26 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %27 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %33 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = call i32 @dma_unmap_single(%struct.device* %31, i32 %34, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %30, %25
  %41 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %42 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %41, i32 0, i32 0
  store %struct.spi_transfer* null, %struct.spi_transfer** %42, align 8
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
