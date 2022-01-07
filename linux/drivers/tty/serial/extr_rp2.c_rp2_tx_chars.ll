; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rp2.c_rp2_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rp2.c_rp2_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rp2_uart_port = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@FIFO_SIZE = common dso_local global i64 0, align 8
@RP2_TX_FIFO_COUNT = common dso_local global i64 0, align 8
@RP2_DATA_BYTE = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rp2_uart_port*)* @rp2_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rp2_tx_chars(%struct.rp2_uart_port* %0) #0 {
  %2 = alloca %struct.rp2_uart_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.circ_buf*, align 8
  store %struct.rp2_uart_port* %0, %struct.rp2_uart_port** %2, align 8
  %5 = load i64, i64* @FIFO_SIZE, align 8
  %6 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RP2_TX_FIFO_COUNT, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 @readw(i64 %10)
  %12 = sub nsw i64 %5, %11
  store i64 %12, i64* %3, align 8
  %13 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %14 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.circ_buf* %17, %struct.circ_buf** %4, align 8
  %18 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %18, i32 0, i32 0
  %20 = call i64 @uart_tx_stopped(%struct.TYPE_8__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %24 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %23, i32 0, i32 0
  %25 = call i32 @rp2_uart_stop_tx(%struct.TYPE_8__* %24)
  br label %107

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %95, %26
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %98

30:                                               ; preds = %27
  %31 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %32 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %38 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %42 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RP2_DATA_BYTE, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writeb(i64 %40, i64 %45)
  %47 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %48 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %51 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %95

56:                                               ; preds = %30
  %57 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %58 = call i64 @uart_circ_empty(%struct.circ_buf* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %62 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %61, i32 0, i32 0
  %63 = call i32 @rp2_uart_stop_tx(%struct.TYPE_8__* %62)
  br label %98

64:                                               ; preds = %56
  %65 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %66 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %69 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %74 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RP2_DATA_BYTE, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writeb(i64 %72, i64 %77)
  %79 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %80 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  %83 = load i32, i32* @UART_XMIT_SIZE, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = and i64 %82, %85
  %87 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %88 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %90 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %64, %36
  %96 = load i64, i64* %3, align 8
  %97 = add nsw i64 %96, -1
  store i64 %97, i64* %3, align 8
  br label %27

98:                                               ; preds = %60, %27
  %99 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %100 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %99)
  %101 = load i64, i64* @WAKEUP_CHARS, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %105 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %104, i32 0, i32 0
  %106 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %105)
  br label %107

107:                                              ; preds = %22, %103, %98
  ret void
}

declare dso_local i64 @readw(i64) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_8__*) #1

declare dso_local i32 @rp2_uart_stop_tx(%struct.TYPE_8__*) #1

declare dso_local i32 @writeb(i64, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
