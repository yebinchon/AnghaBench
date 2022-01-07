; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_send_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_send_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32*, i64 }

@RDA_UART_STATUS = common dso_local global i32 0, align 4
@RDA_UART_TX_FIFO_MASK = common dso_local global i32 0, align 4
@RDA_UART_RXTX_BUFFER = common dso_local global i32 0, align 4
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@RDA_UART_IRQ_MASK = common dso_local global i32 0, align 4
@RDA_UART_TX_DATA_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @rda_uart_send_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rda_uart_send_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.circ_buf* %9, %struct.circ_buf** %3, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = call i64 @uart_tx_stopped(%struct.uart_port* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %108

14:                                               ; preds = %1
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %28, %19
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = load i32, i32* @RDA_UART_STATUS, align 4
  %23 = call i32 @rda_uart_read(%struct.uart_port* %21, i32 %22)
  %24 = load i32, i32* @RDA_UART_TX_FIFO_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = call i32 (...) @cpu_relax()
  br label %20

30:                                               ; preds = %20
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @RDA_UART_RXTX_BUFFER, align 4
  %36 = call i32 @rda_uart_write(%struct.uart_port* %31, i32 %34, i32 %35)
  %37 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %30, %14
  br label %45

45:                                               ; preds = %57, %44
  %46 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %47 = load i32, i32* @RDA_UART_STATUS, align 4
  %48 = call i32 @rda_uart_read(%struct.uart_port* %46, i32 %47)
  %49 = load i32, i32* @RDA_UART_TX_FIFO_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %45
  %53 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %54 = call i64 @uart_circ_empty(%struct.circ_buf* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %85

57:                                               ; preds = %52
  %58 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %59 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %62 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %4, align 4
  %66 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @RDA_UART_RXTX_BUFFER, align 4
  %69 = call i32 @rda_uart_write(%struct.uart_port* %66, i32 %67, i32 %68)
  %70 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %71 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  %74 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = and i64 %73, %76
  %78 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %79 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %81 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %45

85:                                               ; preds = %56, %45
  %86 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %87 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %86)
  %88 = load i64, i64* @WAKEUP_CHARS, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %92 = call i32 @uart_write_wakeup(%struct.uart_port* %91)
  br label %93

93:                                               ; preds = %90, %85
  %94 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %95 = call i64 @uart_circ_empty(%struct.circ_buf* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %93
  %98 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %99 = load i32, i32* @RDA_UART_IRQ_MASK, align 4
  %100 = call i32 @rda_uart_read(%struct.uart_port* %98, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* @RDA_UART_TX_DATA_NEEDED, align 4
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @RDA_UART_IRQ_MASK, align 4
  %107 = call i32 @rda_uart_write(%struct.uart_port* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %13, %97, %93
  ret void
}

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @rda_uart_read(%struct.uart_port*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @rda_uart_write(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
