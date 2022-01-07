; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_handle_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_handle_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_5__ = type { i32 }

@CDNS_UART_IXR_TXEMPTY = common dso_local global i32 0, align 4
@CDNS_UART_IDR = common dso_local global i64 0, align 8
@CDNS_UART_SR = common dso_local global i64 0, align 8
@CDNS_UART_SR_TXFULL = common dso_local global i32 0, align 4
@CDNS_UART_FIFO = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cdns_uart_handle_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_uart_handle_tx(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.uart_port*
  store %struct.uart_port* %6, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = call i64 @uart_circ_empty(%struct.TYPE_7__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @CDNS_UART_IXR_TXEMPTY, align 4
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CDNS_UART_IDR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  br label %104

21:                                               ; preds = %1
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %48, %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i64 @uart_circ_empty(%struct.TYPE_7__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %28
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CDNS_UART_SR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  %42 = load i32, i32* @CDNS_UART_SR_TXFULL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %35, %28, %25
  %47 = phi i1 [ false, %28 ], [ false, %25 ], [ %45, %35 ]
  br i1 %47, label %48, label %92

48:                                               ; preds = %46
  %49 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %54, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %64 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CDNS_UART_FIFO, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  %69 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %70 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %75 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  %81 = load i32, i32* @UART_XMIT_SIZE, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = and i64 %80, %83
  %85 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i64 %84, i64* %89, align 8
  %90 = load i32, i32* %4, align 4
  %91 = add i32 %90, -1
  store i32 %91, i32* %4, align 4
  br label %25

92:                                               ; preds = %46
  %93 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %94 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = call i64 @uart_circ_chars_pending(%struct.TYPE_7__* %96)
  %98 = load i64, i64* @WAKEUP_CHARS, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %102 = call i32 @uart_write_wakeup(%struct.uart_port* %101)
  br label %103

103:                                              ; preds = %100, %92
  br label %104

104:                                              ; preds = %103, %13
  ret void
}

declare dso_local i64 @uart_circ_empty(%struct.TYPE_7__*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.TYPE_7__*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
