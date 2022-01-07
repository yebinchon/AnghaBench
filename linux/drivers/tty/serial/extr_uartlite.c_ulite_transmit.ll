; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_ulite_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_ulite_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_3__, i64, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@ULITE_STATUS_TXFULL = common dso_local global i32 0, align 4
@ULITE_TX = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @ulite_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulite_transmit(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.circ_buf* %10, %struct.circ_buf** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ULITE_STATUS_TXFULL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

16:                                               ; preds = %2
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @ULITE_TX, align 4
  %26 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %27 = call i32 @uart_out32(i64 %24, i32 %25, %struct.uart_port* %26)
  %28 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  store i32 1, i32* %3, align 4
  br label %79

35:                                               ; preds = %16
  %36 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %37 = call i64 @uart_circ_empty(%struct.circ_buf* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %41 = call i64 @uart_tx_stopped(%struct.uart_port* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35
  store i32 0, i32* %3, align 4
  br label %79

44:                                               ; preds = %39
  %45 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %46 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %49 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @ULITE_TX, align 4
  %54 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %55 = call i32 @uart_out32(i64 %52, i32 %53, %struct.uart_port* %54)
  %56 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %57 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  %60 = load i32, i32* @UART_XMIT_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = and i64 %59, %62
  %64 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %65 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %72 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %71)
  %73 = load i64, i64* @WAKEUP_CHARS, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %44
  %76 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %77 = call i32 @uart_write_wakeup(%struct.uart_port* %76)
  br label %78

78:                                               ; preds = %75, %44
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %43, %21, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @uart_out32(i64, i32, %struct.uart_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
