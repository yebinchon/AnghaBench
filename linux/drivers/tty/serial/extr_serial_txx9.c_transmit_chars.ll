; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_txx9_port = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@TXX9_SITFIFO = common dso_local global i32 0, align 4
@TXX9_SIO_TX_FIFO = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_txx9_port*)* @transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars(%struct.uart_txx9_port* %0) #0 {
  %2 = alloca %struct.uart_txx9_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_txx9_port* %0, %struct.uart_txx9_port** %2, align 8
  %5 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.circ_buf* %9, %struct.circ_buf** %3, align 8
  %10 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %17 = load i32, i32* @TXX9_SITFIFO, align 4
  %18 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @sio_out(%struct.uart_txx9_port* %16, i32 %17, i64 %21)
  %23 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %30 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  br label %101

32:                                               ; preds = %1
  %33 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %34 = call i64 @uart_circ_empty(%struct.circ_buf* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %38 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %37, i32 0, i32 0
  %39 = call i64 @uart_tx_stopped(%struct.TYPE_8__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %32
  %42 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %43 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %42, i32 0, i32 0
  %44 = call i32 @serial_txx9_stop_tx(%struct.TYPE_8__* %43)
  br label %101

45:                                               ; preds = %36
  %46 = load i32, i32* @TXX9_SIO_TX_FIFO, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %80, %45
  %48 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %49 = load i32, i32* @TXX9_SITFIFO, align 4
  %50 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %51 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %54 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @sio_out(%struct.uart_txx9_port* %48, i32 %49, i64 %57)
  %59 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %60 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  %63 = load i32, i32* @UART_XMIT_SIZE, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = and i64 %62, %65
  %67 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %68 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %70 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %76 = call i64 @uart_circ_empty(%struct.circ_buf* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %47
  br label %84

79:                                               ; preds = %47
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %4, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %47, label %84

84:                                               ; preds = %80, %78
  %85 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %86 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %85)
  %87 = load i64, i64* @WAKEUP_CHARS, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %91 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %90, i32 0, i32 0
  %92 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %91)
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %95 = call i64 @uart_circ_empty(%struct.circ_buf* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %99 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %98, i32 0, i32 0
  %100 = call i32 @serial_txx9_stop_tx(%struct.TYPE_8__* %99)
  br label %101

101:                                              ; preds = %15, %41, %97, %93
  ret void
}

declare dso_local i32 @sio_out(%struct.uart_txx9_port*, i32, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_8__*) #1

declare dso_local i32 @serial_txx9_stop_tx(%struct.TYPE_8__*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
