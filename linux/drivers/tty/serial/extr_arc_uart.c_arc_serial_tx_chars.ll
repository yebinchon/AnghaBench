; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_arc_uart.c_arc_serial_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_arc_uart.c_arc_serial_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i8, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i8*, i64 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@TXEMPTY = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @arc_serial_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_serial_tx_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.circ_buf* %9, %struct.circ_buf** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 8
  %13 = call i64 @unlikely(i8 zeroext %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 8
  %20 = call i32 @UART_SET_DATA(%struct.uart_port* %16, i8 zeroext %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 0
  store i8 0, i8* %27, align 8
  store i32 1, i32* %4, align 4
  br label %70

28:                                               ; preds = %1
  %29 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %30 = call i32 @uart_circ_empty(%struct.circ_buf* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %69, label %32

32:                                               ; preds = %28
  %33 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %34 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %37 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %5, align 1
  %41 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %42 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 1
  %45 = load i32, i32* @UART_XMIT_SIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = and i64 %44, %47
  %49 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %50 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %63, %32
  %57 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %58 = call i32 @UART_GET_STATUS(%struct.uart_port* %57)
  %59 = load i32, i32* @TXEMPTY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 (...) @cpu_relax()
  br label %56

65:                                               ; preds = %56
  %66 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %67 = load i8, i8* %5, align 1
  %68 = call i32 @UART_SET_DATA(%struct.uart_port* %66, i8 zeroext %67)
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %28
  br label %70

70:                                               ; preds = %69, %15
  %71 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %72 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %71)
  %73 = load i64, i64* @WAKEUP_CHARS, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %77 = call i32 @uart_write_wakeup(%struct.uart_port* %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %83 = call i32 @UART_TX_IRQ_ENABLE(%struct.uart_port* %82)
  br label %84

84:                                               ; preds = %81, %78
  ret void
}

declare dso_local i64 @unlikely(i8 zeroext) #1

declare dso_local i32 @UART_SET_DATA(%struct.uart_port*, i8 zeroext) #1

declare dso_local i32 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @UART_GET_STATUS(%struct.uart_port*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @UART_TX_IRQ_ENABLE(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
