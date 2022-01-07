; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ar933x_uart.c_ar933x_uart_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ar933x_uart.c_ar933x_uart_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar933x_uart_port = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@AR933X_UART_DATA_REG = common dso_local global i32 0, align 4
@AR933X_UART_DATA_TX_CSR = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar933x_uart_port*)* @ar933x_uart_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar933x_uart_tx_chars(%struct.ar933x_uart_port* %0) #0 {
  %2 = alloca %struct.ar933x_uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ar933x_uart_port* %0, %struct.ar933x_uart_port** %2, align 8
  %6 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.circ_buf* %10, %struct.circ_buf** %3, align 8
  %11 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %12 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %11, i32 0, i32 0
  %13 = call i64 @uart_tx_stopped(%struct.TYPE_7__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %104

16:                                               ; preds = %1
  %17 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %18 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %84, %16
  %22 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %23 = load i32, i32* @AR933X_UART_DATA_REG, align 4
  %24 = call i32 @ar933x_uart_read(%struct.ar933x_uart_port* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @AR933X_UART_DATA_TX_CSR, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %88

30:                                               ; preds = %21
  %31 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %32 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %38 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %39 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ar933x_uart_putc(%struct.ar933x_uart_port* %37, i64 %41)
  %43 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %44 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %50 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  br label %84

52:                                               ; preds = %30
  %53 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %54 = call i64 @uart_circ_empty(%struct.circ_buf* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %88

57:                                               ; preds = %52
  %58 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %59 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %60 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %63 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @ar933x_uart_putc(%struct.ar933x_uart_port* %58, i64 %66)
  %68 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %69 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  %72 = load i32, i32* @UART_XMIT_SIZE, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = and i64 %71, %74
  %76 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %77 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %79 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %57, %36
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %4, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %21, label %88

88:                                               ; preds = %84, %56, %29
  %89 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %90 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %89)
  %91 = load i64, i64* @WAKEUP_CHARS, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %95 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %94, i32 0, i32 0
  %96 = call i32 @uart_write_wakeup(%struct.TYPE_7__* %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %99 = call i64 @uart_circ_empty(%struct.circ_buf* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %103 = call i32 @ar933x_uart_start_tx_interrupt(%struct.ar933x_uart_port* %102)
  br label %104

104:                                              ; preds = %15, %101, %97
  ret void
}

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_7__*) #1

declare dso_local i32 @ar933x_uart_read(%struct.ar933x_uart_port*, i32) #1

declare dso_local i32 @ar933x_uart_putc(%struct.ar933x_uart_port*, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_7__*) #1

declare dso_local i32 @ar933x_uart_start_tx_interrupt(%struct.ar933x_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
