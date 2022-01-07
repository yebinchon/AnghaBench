; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dma.c_serial8250_release_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dma.c_serial8250_release_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_6__, %struct.uart_8250_dma* }
%struct.TYPE_6__ = type { i32 }
%struct.uart_8250_dma = type { i64, %struct.TYPE_7__*, i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"dma channels released\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serial8250_release_dma(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca %struct.uart_8250_dma*, align 8
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %4 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %6 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %5, align 8
  store %struct.uart_8250_dma* %6, %struct.uart_8250_dma** %3, align 8
  %7 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %8 = icmp ne %struct.uart_8250_dma* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %68

10:                                               ; preds = %1
  %11 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %12 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %11, i32 0, i32 3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = call i32 @dmaengine_terminate_sync(%struct.TYPE_7__* %13)
  %15 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %16 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %15, i32 0, i32 3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %23 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %26 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %29 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dma_free_coherent(i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %33 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %32, i32 0, i32 3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = call i32 @dma_release_channel(%struct.TYPE_7__* %34)
  %36 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %37 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %36, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %37, align 8
  %38 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %39 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = call i32 @dmaengine_terminate_sync(%struct.TYPE_7__* %40)
  %42 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %43 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %50 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @UART_XMIT_SIZE, align 4
  %53 = load i32, i32* @DMA_TO_DEVICE, align 4
  %54 = call i32 @dma_unmap_single(i32 %48, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %56 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = call i32 @dma_release_channel(%struct.TYPE_7__* %57)
  %59 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %60 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %59, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %60, align 8
  %61 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %62 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %64 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_dbg_ratelimited(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @dmaengine_terminate_sync(%struct.TYPE_7__*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @dma_release_channel(%struct.TYPE_7__*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg_ratelimited(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
