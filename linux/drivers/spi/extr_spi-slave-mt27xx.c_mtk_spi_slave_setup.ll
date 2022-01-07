; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-mt27xx.c_mtk_spi_slave_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-mt27xx.c_mtk_spi_slave_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.mtk_spi_slave = type { i64 }

@DMA_DONE_EN = common dso_local global i32 0, align 4
@DATA_DONE_EN = common dso_local global i32 0, align 4
@RSTA_DONE_EN = common dso_local global i32 0, align 4
@CMD_INVALID_EN = common dso_local global i32 0, align 4
@SPIS_IRQ_EN_REG = common dso_local global i64 0, align 8
@DMA_DONE_MASK = common dso_local global i32 0, align 4
@DATA_DONE_MASK = common dso_local global i32 0, align 4
@RSTA_DONE_MASK = common dso_local global i32 0, align 4
@CMD_INVALID_MASK = common dso_local global i32 0, align 4
@SPIS_IRQ_MASK_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mtk_spi_slave_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_slave_setup(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.mtk_spi_slave*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mtk_spi_slave* @spi_controller_get_devdata(i32 %7)
  store %struct.mtk_spi_slave* %8, %struct.mtk_spi_slave** %3, align 8
  %9 = load i32, i32* @DMA_DONE_EN, align 4
  %10 = load i32, i32* @DATA_DONE_EN, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @RSTA_DONE_EN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CMD_INVALID_EN, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %3, align 8
  %18 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SPIS_IRQ_EN_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load i32, i32* @DMA_DONE_MASK, align 4
  %24 = load i32, i32* @DATA_DONE_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @RSTA_DONE_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CMD_INVALID_MASK, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %3, align 8
  %32 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SPIS_IRQ_MASK_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %3, align 8
  %38 = call i32 @mtk_spi_slave_disable_dma(%struct.mtk_spi_slave* %37)
  %39 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %3, align 8
  %40 = call i32 @mtk_spi_slave_disable_xfer(%struct.mtk_spi_slave* %39)
  ret i32 0
}

declare dso_local %struct.mtk_spi_slave* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mtk_spi_slave_disable_dma(%struct.mtk_spi_slave*) #1

declare dso_local i32 @mtk_spi_slave_disable_xfer(%struct.mtk_spi_slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
