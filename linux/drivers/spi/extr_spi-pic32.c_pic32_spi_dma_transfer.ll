; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_spi_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_spi_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_spi = type { %struct.spi_master* }
%struct.spi_master = type { i32, i32 }
%struct.spi_transfer = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dma_async_tx_descriptor = type { %struct.pic32_spi*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@pic32_spi_dma_rx_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pic32_spi*, %struct.spi_transfer*)* @pic32_spi_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_spi_dma_transfer(%struct.pic32_spi* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pic32_spi*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_async_tx_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pic32_spi* %0, %struct.pic32_spi** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %11 = load %struct.pic32_spi*, %struct.pic32_spi** %4, align 8
  %12 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %11, i32 0, i32 0
  %13 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  store %struct.spi_master* %13, %struct.spi_master** %6, align 8
  %14 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %15 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %20 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %108

26:                                               ; preds = %18
  %27 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %28 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %39 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %40 = load i32, i32* @DMA_CTRL_ACK, align 4
  %41 = or i32 %39, %40
  %42 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %29, i32 %33, i32 %37, i32 %38, i32 %41)
  store %struct.dma_async_tx_descriptor* %42, %struct.dma_async_tx_descriptor** %7, align 8
  %43 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %44 = icmp ne %struct.dma_async_tx_descriptor* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %26
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  br label %106

48:                                               ; preds = %26
  %49 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %50 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %57 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %61 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %62 = load i32, i32* @DMA_CTRL_ACK, align 4
  %63 = or i32 %61, %62
  %64 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %51, i32 %55, i32 %59, i32 %60, i32 %63)
  store %struct.dma_async_tx_descriptor* %64, %struct.dma_async_tx_descriptor** %8, align 8
  %65 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %66 = icmp ne %struct.dma_async_tx_descriptor* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %48
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  br label %106

70:                                               ; preds = %48
  %71 = load i32, i32* @pic32_spi_dma_rx_notify, align 4
  %72 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %73 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.pic32_spi*, %struct.pic32_spi** %4, align 8
  %75 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %76 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %75, i32 0, i32 0
  store %struct.pic32_spi* %74, %struct.pic32_spi** %76, align 8
  %77 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %78 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @dma_submit_error(i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %106

84:                                               ; preds = %70
  %85 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %86 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @dma_submit_error(i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %101

92:                                               ; preds = %84
  %93 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %94 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dma_async_issue_pending(i32 %95)
  %97 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %98 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dma_async_issue_pending(i32 %99)
  store i32 0, i32* %3, align 4
  br label %108

101:                                              ; preds = %91
  %102 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %103 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dmaengine_terminate_all(i32 %104)
  br label %106

106:                                              ; preds = %101, %83, %67, %45
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %92, %23
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
