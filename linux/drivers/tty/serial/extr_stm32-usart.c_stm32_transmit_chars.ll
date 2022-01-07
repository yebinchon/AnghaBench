; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_6__, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }
%struct.stm32_port = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.stm32_usart_offsets }
%struct.stm32_usart_offsets = type { i64, i64, i64, i64 }

@USART_CR3_DMAT = common dso_local global i32 0, align 4
@UNDEF_REG = common dso_local global i64 0, align 8
@USART_SR_TC = common dso_local global i32 0, align 4
@USART_ICR_TCCF = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @stm32_transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_transmit_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.stm32_port*, align 8
  %4 = alloca %struct.stm32_usart_offsets*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.stm32_port* @to_stm32_port(%struct.uart_port* %6)
  store %struct.stm32_port* %7, %struct.stm32_port** %3, align 8
  %8 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %9 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.stm32_usart_offsets* %11, %struct.stm32_usart_offsets** %4, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.circ_buf* %15, %struct.circ_buf** %5, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %1
  %21 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %22 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %28 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @USART_CR3_DMAT, align 4
  %31 = call i32 @stm32_clr_bits(%struct.uart_port* %26, i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %20
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %40 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = call i32 @writel_relaxed(i64 %35, i64 %42)
  %44 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %52 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %32
  %56 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %57 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %58 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @USART_CR3_DMAT, align 4
  %61 = call i32 @stm32_set_bits(%struct.uart_port* %56, i64 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %32
  br label %120

63:                                               ; preds = %1
  %64 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %65 = call i64 @uart_circ_empty(%struct.circ_buf* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %69 = call i64 @uart_tx_stopped(%struct.uart_port* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67, %63
  %72 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %73 = call i32 @stm32_tx_interrupt_disable(%struct.uart_port* %72)
  br label %120

74:                                               ; preds = %67
  %75 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %76 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @UNDEF_REG, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %82 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %83 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @USART_SR_TC, align 4
  %86 = call i32 @stm32_clr_bits(%struct.uart_port* %81, i64 %84, i32 %85)
  br label %94

87:                                               ; preds = %74
  %88 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %89 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %90 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @USART_ICR_TCCF, align 4
  %93 = call i32 @stm32_set_bits(%struct.uart_port* %88, i64 %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %80
  %95 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %96 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %101 = call i32 @stm32_transmit_chars_dma(%struct.uart_port* %100)
  br label %105

102:                                              ; preds = %94
  %103 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %104 = call i32 @stm32_transmit_chars_pio(%struct.uart_port* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %107 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %106)
  %108 = load i64, i64* @WAKEUP_CHARS, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %112 = call i32 @uart_write_wakeup(%struct.uart_port* %111)
  br label %113

113:                                              ; preds = %110, %105
  %114 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %115 = call i64 @uart_circ_empty(%struct.circ_buf* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %119 = call i32 @stm32_tx_interrupt_disable(%struct.uart_port* %118)
  br label %120

120:                                              ; preds = %62, %71, %117, %113
  ret void
}

declare dso_local %struct.stm32_port* @to_stm32_port(%struct.uart_port*) #1

declare dso_local i32 @stm32_clr_bits(%struct.uart_port*, i64, i32) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @stm32_set_bits(%struct.uart_port*, i64, i32) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @stm32_tx_interrupt_disable(%struct.uart_port*) #1

declare dso_local i32 @stm32_transmit_chars_dma(%struct.uart_port*) #1

declare dso_local i32 @stm32_transmit_chars_pio(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
