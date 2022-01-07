; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_dma_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_dma_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32 }
%struct.sg_table = type { i32, i32 }
%struct.dma_async_tx_descriptor = type { i32 }

@SPRD_DMA_CHN_MODE_NONE = common dso_local global i32 0, align 4
@SPRD_DMA_NO_TRG = common dso_local global i32 0, align 4
@SPRD_DMA_FRAG_REQ = common dso_local global i32 0, align 4
@SPRD_DMA_TRANS_INT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*, %struct.sg_table*, i32)* @sprd_spi_dma_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_dma_submit(%struct.dma_chan* %0, %struct.dma_slave_config* %1, %struct.sg_table* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca %struct.dma_slave_config*, align 8
  %8 = alloca %struct.sg_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_async_tx_descriptor*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %6, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %7, align 8
  store %struct.sg_table* %2, %struct.sg_table** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %15 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %16 = call i32 @dmaengine_slave_config(%struct.dma_chan* %14, %struct.dma_slave_config* %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %5, align 4
  br label %54

21:                                               ; preds = %4
  %22 = load i32, i32* @SPRD_DMA_CHN_MODE_NONE, align 4
  %23 = load i32, i32* @SPRD_DMA_NO_TRG, align 4
  %24 = load i32, i32* @SPRD_DMA_FRAG_REQ, align 4
  %25 = load i32, i32* @SPRD_DMA_TRANS_INT, align 4
  %26 = call i64 @SPRD_DMA_FLAGS(i32 %22, i32 %23, i32 %24, i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %28 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %29 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %32 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i64, i64* %12, align 8
  %36 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %27, i32 %30, i32 %33, i32 %34, i64 %35)
  store %struct.dma_async_tx_descriptor* %36, %struct.dma_async_tx_descriptor** %10, align 8
  %37 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %38 = icmp ne %struct.dma_async_tx_descriptor* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %21
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %54

42:                                               ; preds = %21
  %43 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %44 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @dma_submit_error(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @dma_submit_error(i32 %49)
  store i32 %50, i32* %5, align 4
  br label %54

51:                                               ; preds = %42
  %52 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %53 = call i32 @dma_async_issue_pending(%struct.dma_chan* %52)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %48, %39, %19
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @dmaengine_slave_config(%struct.dma_chan*, %struct.dma_slave_config*) #1

declare dso_local i64 @SPRD_DMA_FLAGS(i32, i32, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, i32, i32, i32, i64) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
