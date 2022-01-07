; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mvebu-uart.c_mvebu_uart_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mvebu-uart.c_mvebu_uart_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32*, i64 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @mvebu_uart_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_uart_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.circ_buf* %8, %struct.circ_buf** %4, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = call i64 @IS_EXTENDED(%struct.uart_port* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %1
  %13 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %14 = call i32 @uart_circ_empty(%struct.circ_buf* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %12
  %17 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %18 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %21 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %29 = call i64 @UART_TSH(%struct.uart_port* %28)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @writel(i32 %24, i64 %30)
  %32 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %33 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  %36 = load i32, i32* @UART_XMIT_SIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = and i64 %35, %38
  %40 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %41 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %16, %12, %1
  %48 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %52 = call i64 @UART_INTR(%struct.uart_port* %51)
  %53 = add nsw i64 %50, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %3, align 4
  %55 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %56 = call i32 @CTRL_TX_RDY_INT(%struct.uart_port* %55)
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %64 = call i64 @UART_INTR(%struct.uart_port* %63)
  %65 = add nsw i64 %62, %64
  %66 = call i32 @writel(i32 %59, i64 %65)
  ret void
}

declare dso_local i64 @IS_EXTENDED(%struct.uart_port*) #1

declare dso_local i32 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @UART_TSH(%struct.uart_port*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @UART_INTR(%struct.uart_port*) #1

declare dso_local i32 @CTRL_TX_RDY_INT(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
