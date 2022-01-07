; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_fill_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_fill_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32* }
%struct.TYPE_5__ = type { i64 }

@UART_LSR = common dso_local global i32 0, align 4
@TEGRA_UART_LSR_TXFIFO_FULL = common dso_local global i64 0, align 8
@UART_TX = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_uart_port*, i32)* @tegra_uart_fill_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_fill_tx_fifo(%struct.tegra_uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.circ_buf* %12, %struct.circ_buf** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %65, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %68

17:                                               ; preds = %13
  %18 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %19 = call i32 @uart_circ_empty(%struct.circ_buf* %18)
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %29 = load i32, i32* @UART_LSR, align 4
  %30 = call i64 @tegra_uart_read(%struct.tegra_uart_port* %28, i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @TEGRA_UART_LSR_TXFIFO_FULL, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %68

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %17
  %38 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %39 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %40 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %43 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @UART_TX, align 4
  %48 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %38, i32 %46, i32 %47)
  %49 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %50 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  %53 = load i32, i32* @UART_XMIT_SIZE, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = and i64 %52, %55
  %57 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %58 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %60 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %37
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %13

68:                                               ; preds = %35, %13
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @tegra_uart_read(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @tegra_uart_write(%struct.tegra_uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
