; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_pending_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_pending_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.stm32_port = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.stm32_usart_offsets }
%struct.stm32_usart_offsets = type { i64 }
%struct.dma_tx_state = type { i32 }

@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@USART_SR_RXNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32*, i32*, i32)* @stm32_pending_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pending_rx(%struct.uart_port* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stm32_port*, align 8
  %11 = alloca %struct.stm32_usart_offsets*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dma_tx_state, align 4
  store %struct.uart_port* %0, %struct.uart_port** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %15 = call %struct.stm32_port* @to_stm32_port(%struct.uart_port* %14)
  store %struct.stm32_port* %15, %struct.stm32_port** %10, align 8
  %16 = load %struct.stm32_port*, %struct.stm32_port** %10, align 8
  %17 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.stm32_usart_offsets* %19, %struct.stm32_usart_offsets** %11, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %11, align 8
  %24 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i32 @readl_relaxed(i64 %26)
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %4
  %32 = load %struct.stm32_port*, %struct.stm32_port** %10, align 8
  %33 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load %struct.stm32_port*, %struct.stm32_port** %10, align 8
  %38 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load %struct.stm32_port*, %struct.stm32_port** %10, align 8
  %41 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dmaengine_tx_status(%struct.TYPE_4__* %39, i32 %44, %struct.dma_tx_state* %13)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %36
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %13, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, i32* %5, align 4
  br label %66

56:                                               ; preds = %49, %36
  store i32 0, i32* %5, align 4
  br label %66

57:                                               ; preds = %31, %4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @USART_SR_RXNE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 1, i32* %5, align 4
  br label %66

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %63, %56, %55
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.stm32_port* @to_stm32_port(%struct.uart_port*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dmaengine_tx_status(%struct.TYPE_4__*, i32, %struct.dma_tx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
