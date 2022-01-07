; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pnx8xxx_uart.c_pnx8xxx_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pnx8xxx_uart.c_pnx8xxx_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnx8xxx_port = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@PNX8XXX_FIFO = common dso_local global i32 0, align 4
@PNX8XXX_UART_FIFO_TXFIFO = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnx8xxx_port*)* @pnx8xxx_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnx8xxx_tx_chars(%struct.pnx8xxx_port* %0) #0 {
  %2 = alloca %struct.pnx8xxx_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  store %struct.pnx8xxx_port* %0, %struct.pnx8xxx_port** %2, align 8
  %4 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %5 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store %struct.circ_buf* %8, %struct.circ_buf** %3, align 8
  %9 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %10 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %16 = load i32, i32* @PNX8XXX_FIFO, align 4
  %17 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %18 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @serial_out(%struct.pnx8xxx_port* %15, i32 %16, i64 %20)
  %22 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %23 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %29 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  br label %105

31:                                               ; preds = %1
  %32 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %33 = call i32 @pnx8xxx_mctrl_check(%struct.pnx8xxx_port* %32)
  %34 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %35 = call i64 @uart_circ_empty(%struct.circ_buf* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %39 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %38, i32 0, i32 0
  %40 = call i64 @uart_tx_stopped(%struct.TYPE_8__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37, %31
  %43 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %44 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %43, i32 0, i32 0
  %45 = call i32 @pnx8xxx_stop_tx(%struct.TYPE_8__* %44)
  br label %105

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %87, %46
  %48 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %49 = load i32, i32* @PNX8XXX_FIFO, align 4
  %50 = call i32 @serial_in(%struct.pnx8xxx_port* %48, i32 %49)
  %51 = load i32, i32* @PNX8XXX_UART_FIFO_TXFIFO, align 4
  %52 = and i32 %50, %51
  %53 = ashr i32 %52, 16
  %54 = icmp slt i32 %53, 16
  br i1 %54, label %55, label %88

55:                                               ; preds = %47
  %56 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %57 = load i32, i32* @PNX8XXX_FIFO, align 4
  %58 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %59 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %62 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @serial_out(%struct.pnx8xxx_port* %56, i32 %57, i64 %65)
  %67 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %68 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  %71 = load i32, i32* @UART_XMIT_SIZE, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = and i64 %70, %73
  %75 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %76 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %78 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %84 = call i64 @uart_circ_empty(%struct.circ_buf* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %55
  br label %88

87:                                               ; preds = %55
  br label %47

88:                                               ; preds = %86, %47
  %89 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %90 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %89)
  %91 = load i64, i64* @WAKEUP_CHARS, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %95 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %94, i32 0, i32 0
  %96 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %99 = call i64 @uart_circ_empty(%struct.circ_buf* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %103 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %102, i32 0, i32 0
  %104 = call i32 @pnx8xxx_stop_tx(%struct.TYPE_8__* %103)
  br label %105

105:                                              ; preds = %14, %42, %101, %97
  ret void
}

declare dso_local i32 @serial_out(%struct.pnx8xxx_port*, i32, i64) #1

declare dso_local i32 @pnx8xxx_mctrl_check(%struct.pnx8xxx_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_8__*) #1

declare dso_local i32 @pnx8xxx_stop_tx(%struct.TYPE_8__*) #1

declare dso_local i32 @serial_in(%struct.pnx8xxx_port*, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
