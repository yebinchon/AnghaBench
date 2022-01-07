; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_tegra-tcu.c_tegra_tcu_uart_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_tegra-tcu.c_tegra_tcu_uart_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_2__*, %struct.tegra_tcu* }
%struct.TYPE_2__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32*, i32 }
%struct.tegra_tcu = type { i32 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @tegra_tcu_uart_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_tcu_uart_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tegra_tcu*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 1
  %8 = load %struct.tegra_tcu*, %struct.tegra_tcu** %7, align 8
  store %struct.tegra_tcu* %8, %struct.tegra_tcu** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.circ_buf* %12, %struct.circ_buf** %4, align 8
  br label %13

13:                                               ; preds = %25, %1
  %14 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %15 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %18 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @UART_XMIT_SIZE, align 4
  %21 = call i64 @CIRC_CNT_TO_END(i32 %16, i64 %19, i32 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %47

25:                                               ; preds = %13
  %26 = load %struct.tegra_tcu*, %struct.tegra_tcu** %3, align 8
  %27 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %28 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %31 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @tegra_tcu_write(%struct.tegra_tcu* %26, i32* %33, i64 %34)
  %36 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %37 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %38, %39
  %41 = load i32, i32* @UART_XMIT_SIZE, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = and i64 %40, %43
  %45 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %46 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %13

47:                                               ; preds = %24
  %48 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %49 = call i32 @uart_write_wakeup(%struct.uart_port* %48)
  ret void
}

declare dso_local i64 @CIRC_CNT_TO_END(i32, i64, i32) #1

declare dso_local i32 @tegra_tcu_write(%struct.tegra_tcu*, i32*, i64) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
