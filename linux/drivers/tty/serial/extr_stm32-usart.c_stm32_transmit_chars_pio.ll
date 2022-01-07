; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_transmit_chars_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_transmit_chars_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_6__, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32* }
%struct.stm32_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.stm32_usart_offsets }
%struct.stm32_usart_offsets = type { i64, i64, i32 }

@USART_CR3_DMAT = common dso_local global i32 0, align 4
@USART_SR_TXE = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @stm32_transmit_chars_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_transmit_chars_pio(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.stm32_port*, align 8
  %4 = alloca %struct.stm32_usart_offsets*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.stm32_port* @to_stm32_port(%struct.uart_port* %6)
  store %struct.stm32_port* %7, %struct.stm32_port** %3, align 8
  %8 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %9 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.stm32_usart_offsets* %11, %struct.stm32_usart_offsets** %4, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.circ_buf* %15, %struct.circ_buf** %5, align 8
  %16 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %17 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %23 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @USART_CR3_DMAT, align 4
  %26 = call i32 @stm32_clr_bits(%struct.uart_port* %21, i32 %24, i32 %25)
  %27 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %28 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %20, %1
  br label %30

30:                                               ; preds = %48, %29
  %31 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %32 = call i64 @uart_circ_empty(%struct.circ_buf* %31)
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %80

35:                                               ; preds = %30
  %36 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %40 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = call i32 @readl_relaxed(i64 %42)
  %44 = load i32, i32* @USART_SR_TXE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %35
  br label %80

48:                                               ; preds = %35
  %49 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %50 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %53 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %61 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = call i32 @writel_relaxed(i32 %56, i64 %63)
  %65 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %66 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  %69 = load i32, i32* @UART_XMIT_SIZE, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = and i64 %68, %71
  %73 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %74 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %76 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  br label %30

80:                                               ; preds = %47, %30
  %81 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %82 = call i64 @uart_circ_empty(%struct.circ_buf* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %86 = call i32 @stm32_tx_interrupt_disable(%struct.uart_port* %85)
  br label %90

87:                                               ; preds = %80
  %88 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %89 = call i32 @stm32_tx_interrupt_enable(%struct.uart_port* %88)
  br label %90

90:                                               ; preds = %87, %84
  ret void
}

declare dso_local %struct.stm32_port* @to_stm32_port(%struct.uart_port*) #1

declare dso_local i32 @stm32_clr_bits(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @stm32_tx_interrupt_disable(%struct.uart_port*) #1

declare dso_local i32 @stm32_tx_interrupt_enable(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
