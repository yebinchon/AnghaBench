; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_uart_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_uart_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_3__, i64, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@UARTn_STATE = common dso_local global i32 0, align 4
@UARTn_STATE_TX_FULL = common dso_local global i32 0, align 4
@UARTn_DATA = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @mps2_uart_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps2_uart_tx_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.circ_buf* %7, %struct.circ_buf** %3, align 8
  br label %8

8:                                                ; preds = %44, %21, %1
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = load i32, i32* @UARTn_STATE, align 4
  %11 = call i32 @mps2_uart_read8(%struct.uart_port* %9, i32 %10)
  %12 = load i32, i32* @UARTn_STATE_TX_FULL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %70

16:                                               ; preds = %8
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @UARTn_DATA, align 4
  %27 = call i32 @mps2_uart_write8(%struct.uart_port* %22, i64 %25, i32 %26)
  %28 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  br label %8

35:                                               ; preds = %16
  %36 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %37 = call i64 @uart_circ_empty(%struct.circ_buf* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %41 = call i64 @uart_tx_stopped(%struct.uart_port* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35
  br label %70

44:                                               ; preds = %39
  %45 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %46 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %47 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %50 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @UARTn_DATA, align 4
  %55 = call i32 @mps2_uart_write8(%struct.uart_port* %45, i64 %53, i32 %54)
  %56 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %57 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  %60 = load i32, i32* @UART_XMIT_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = urem i64 %59, %61
  %63 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %64 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %8

70:                                               ; preds = %43, %8
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
  %79 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %80 = call i64 @uart_circ_empty(%struct.circ_buf* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %84 = call i32 @mps2_uart_stop_tx(%struct.uart_port* %83)
  br label %85

85:                                               ; preds = %82, %78
  ret void
}

declare dso_local i32 @mps2_uart_read8(%struct.uart_port*, i32) #1

declare dso_local i32 @mps2_uart_write8(%struct.uart_port*, i64, i32) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @mps2_uart_stop_tx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
