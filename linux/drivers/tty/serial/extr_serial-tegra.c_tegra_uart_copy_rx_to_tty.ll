; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_copy_rx_to_tty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_copy_rx_to_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tty_port = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"No tty port\0A\00", align 1
@UART_LSR_DR = common dso_local global i32 0, align 4
@TEGRA_UART_RX_DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"RxData copy to tty layer failed\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_uart_port*, %struct.tty_port*, i32)* @tegra_uart_copy_rx_to_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_copy_rx_to_tty(%struct.tegra_uart_port* %0, %struct.tty_port* %1, i32 %2) #0 {
  %4 = alloca %struct.tegra_uart_port*, align 8
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %4, align 8
  store %struct.tty_port* %1, %struct.tty_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %75

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %17, %12
  store i32 %18, i32* %16, align 4
  %19 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %20 = icmp ne %struct.tty_port* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %11
  %22 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %75

27:                                               ; preds = %11
  %28 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %29 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @UART_LSR_DR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %75

36:                                               ; preds = %27
  %37 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %42 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TEGRA_UART_RX_DMA_BUFFER_SIZE, align 4
  %45 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %46 = call i32 @dma_sync_single_for_cpu(i32 %40, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %48 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %49 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @tty_insert_flip_string(%struct.tty_port* %47, i8* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %36
  %58 = call i32 @WARN_ON(i32 1)
  %59 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %60 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %57, %36
  %65 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %66 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %70 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @TEGRA_UART_RX_DMA_BUFFER_SIZE, align 4
  %73 = load i32, i32* @DMA_TO_DEVICE, align 4
  %74 = call i32 @dma_sync_single_for_device(i32 %68, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %64, %35, %21, %10
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_port*, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
