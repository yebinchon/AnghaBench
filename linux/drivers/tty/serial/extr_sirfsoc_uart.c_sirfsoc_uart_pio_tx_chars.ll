; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_pio_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_pio_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_uart_port = type { %struct.TYPE_4__*, %struct.uart_port }
%struct.TYPE_4__ = type { %struct.sirfsoc_fifo_status, %struct.sirfsoc_register }
%struct.sirfsoc_fifo_status = type { i32 (%struct.uart_port*)* }
%struct.sirfsoc_register = type { i32, i32 }
%struct.uart_port = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32* }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sirfsoc_uart_port*, i32)* @sirfsoc_uart_pio_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_uart_pio_tx_chars(%struct.sirfsoc_uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.sirfsoc_uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.sirfsoc_register*, align 8
  %7 = alloca %struct.sirfsoc_fifo_status*, align 8
  %8 = alloca %struct.circ_buf*, align 8
  %9 = alloca i32, align 4
  store %struct.sirfsoc_uart_port* %0, %struct.sirfsoc_uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %10, i32 0, i32 1
  store %struct.uart_port* %11, %struct.uart_port** %5, align 8
  %12 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store %struct.sirfsoc_register* %15, %struct.sirfsoc_register** %6, align 8
  %16 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.sirfsoc_fifo_status* %19, %struct.sirfsoc_fifo_status** %7, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.circ_buf* %23, %struct.circ_buf** %8, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %47, %2
  %25 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %26 = call i32 @uart_circ_empty(%struct.circ_buf* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %30 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %6, align 8
  %31 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rd_regl(%struct.uart_port* %29, i32 %32)
  %34 = load %struct.sirfsoc_fifo_status*, %struct.sirfsoc_fifo_status** %7, align 8
  %35 = getelementptr inbounds %struct.sirfsoc_fifo_status, %struct.sirfsoc_fifo_status* %34, i32 0, i32 0
  %36 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %35, align 8
  %37 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %38 = call i32 %36(%struct.uart_port* %37)
  %39 = and i32 %33, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %4, align 4
  %44 = icmp ne i32 %42, 0
  br label %45

45:                                               ; preds = %41, %28, %24
  %46 = phi i1 [ false, %28 ], [ false, %24 ], [ %44, %41 ]
  br i1 %46, label %47, label %78

47:                                               ; preds = %45
  %48 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %49 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %6, align 8
  %50 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %53 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %56 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @wr_regl(%struct.uart_port* %48, i32 %51, i32 %59)
  %61 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %62 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  %65 = load i32, i32* @UART_XMIT_SIZE, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = and i64 %64, %67
  %69 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %70 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %72 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %24

78:                                               ; preds = %45
  %79 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %80 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %79)
  %81 = load i64, i64* @WAKEUP_CHARS, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %85 = call i32 @uart_write_wakeup(%struct.uart_port* %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

declare dso_local i32 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
