; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_start_next_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_start_next_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32, i32* }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@TEGRA_UART_MIN_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_uart_port*)* @tegra_uart_start_next_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_start_next_tx(%struct.tegra_uart_port* %0) #0 {
  %2 = alloca %struct.tegra_uart_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.circ_buf*, align 8
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %2, align 8
  %6 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.circ_buf* %10, %struct.circ_buf** %5, align 8
  %11 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %2, align 8
  %12 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %63

16:                                               ; preds = %1
  %17 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %18 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %21 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = ptrtoint i32* %23 to i64
  store i64 %24, i64* %3, align 8
  %25 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %26 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %29 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @UART_XMIT_SIZE, align 4
  %32 = call i64 @CIRC_CNT_TO_END(i32 %27, i64 %30, i32 %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %16
  br label %63

36:                                               ; preds = %16
  %37 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %2, align 8
  %38 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @TEGRA_UART_MIN_DMA, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %36
  %46 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %2, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @tegra_uart_start_pio_tx(%struct.tegra_uart_port* %46, i64 %47)
  br label %63

49:                                               ; preds = %41
  %50 = load i64, i64* %3, align 8
  %51 = call i64 @BYTES_TO_ALIGN(i64 %50)
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %2, align 8
  %55 = load i64, i64* %3, align 8
  %56 = call i64 @BYTES_TO_ALIGN(i64 %55)
  %57 = call i32 @tegra_uart_start_pio_tx(%struct.tegra_uart_port* %54, i64 %56)
  br label %62

58:                                               ; preds = %49
  %59 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %2, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @tegra_uart_start_tx_dma(%struct.tegra_uart_port* %59, i64 %60)
  br label %62

62:                                               ; preds = %58, %53
  br label %63

63:                                               ; preds = %15, %35, %62, %45
  ret void
}

declare dso_local i64 @CIRC_CNT_TO_END(i32, i64, i32) #1

declare dso_local i32 @tegra_uart_start_pio_tx(%struct.tegra_uart_port*, i64) #1

declare dso_local i64 @BYTES_TO_ALIGN(i64) #1

declare dso_local i32 @tegra_uart_start_tx_dma(%struct.tegra_uart_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
