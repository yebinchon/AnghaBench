; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_start_rx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_start_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_spi_data = type { i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Not able to get desc for Rx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@tegra_spi_dma_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_spi_data*, i32)* @tegra_spi_start_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_spi_start_rx_dma(%struct.tegra_spi_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_spi_data*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_spi_data* %0, %struct.tegra_spi_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %7 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %6, i32 0, i32 2
  %8 = call i32 @reinit_completion(i32* %7)
  %9 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %17 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %18 = load i32, i32* @DMA_CTRL_ACK, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.TYPE_3__* @dmaengine_prep_slave_single(i32 %11, i32 %14, i32 %15, i32 %16, i32 %19)
  %21 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %21, i32 0, i32 1
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %22, align 8
  %23 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %24 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %29 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %54

34:                                               ; preds = %2
  %35 = load i32, i32* @tegra_spi_dma_complete, align 4
  %36 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %37 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 8
  %40 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %41 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %40, i32 0, i32 2
  %42 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %43 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32* %41, i32** %45, align 8
  %46 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %47 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = call i32 @dmaengine_submit(%struct.TYPE_3__* %48)
  %50 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dma_async_issue_pending(i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %34, %27
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local %struct.TYPE_3__* @dmaengine_prep_slave_single(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_3__*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
