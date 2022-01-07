; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_start_tx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_start_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { i64, i64, %struct.uart_port, %struct.s3c24xx_uart_dma* }
%struct.uart_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64 }
%struct.s3c24xx_uart_dma = type { i32, i32, i32, %struct.TYPE_5__*, i32, i64, i64 }
%struct.TYPE_5__ = type { %struct.s3c24xx_uart_port*, i32 }

@S3C24XX_TX_DMA = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to get desc for Tx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@s3c24xx_serial_tx_dma_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c24xx_uart_port*, i32)* @s3c24xx_serial_start_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_serial_start_tx_dma(%struct.s3c24xx_uart_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c24xx_uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.circ_buf*, align 8
  %8 = alloca %struct.s3c24xx_uart_dma*, align 8
  store %struct.s3c24xx_uart_port* %0, %struct.s3c24xx_uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %4, align 8
  %10 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %9, i32 0, i32 2
  store %struct.uart_port* %10, %struct.uart_port** %6, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.circ_buf* %14, %struct.circ_buf** %7, align 8
  %15 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %4, align 8
  %16 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %15, i32 0, i32 3
  %17 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %16, align 8
  store %struct.s3c24xx_uart_dma* %17, %struct.s3c24xx_uart_dma** %8, align 8
  %18 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %4, align 8
  %19 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @S3C24XX_TX_DMA, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %4, align 8
  %25 = call i32 @enable_tx_dma(%struct.s3c24xx_uart_port* %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (...) @dma_get_cache_alignment()
  %29 = sub nsw i32 %28, 1
  %30 = xor i32 %29, -1
  %31 = and i32 %27, %30
  %32 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %33 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %35 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %38 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %42 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %41, i32 0, i32 5
  store i64 %40, i64* %42, align 8
  %43 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %4, align 8
  %44 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %48 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %51 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DMA_TO_DEVICE, align 4
  %54 = call i32 @dma_sync_single_for_device(i32 %46, i64 %49, i32 %52, i32 %53)
  %55 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %56 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %59 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %62 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %65 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %66 = call %struct.TYPE_5__* @dmaengine_prep_slave_single(i32 %57, i64 %60, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %68 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %67, i32 0, i32 3
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %68, align 8
  %69 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %70 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %69, i32 0, i32 3
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = icmp ne %struct.TYPE_5__* %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %26
  %74 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %4, align 8
  %75 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %110

81:                                               ; preds = %26
  %82 = load i32, i32* @s3c24xx_serial_tx_dma_complete, align 4
  %83 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %84 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i32 %82, i32* %86, align 8
  %87 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %4, align 8
  %88 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %89 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %88, i32 0, i32 3
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store %struct.s3c24xx_uart_port* %87, %struct.s3c24xx_uart_port** %91, align 8
  %92 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %93 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %96 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i64, i64* @S3C24XX_TX_DMA, align 8
  %98 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %4, align 8
  %99 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %101 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %100, i32 0, i32 3
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = call i32 @dmaengine_submit(%struct.TYPE_5__* %102)
  %104 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %105 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %107 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dma_async_issue_pending(i32 %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %81, %73
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @enable_tx_dma(%struct.s3c24xx_uart_port*) #1

declare dso_local i32 @dma_get_cache_alignment(...) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i64, i32, i32) #1

declare dso_local %struct.TYPE_5__* @dmaengine_prep_slave_single(i32, i64, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_5__*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
