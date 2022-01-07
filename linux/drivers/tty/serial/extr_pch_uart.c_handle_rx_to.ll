; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_handle_rx_to.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_handle_rx_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eg20t_port = type { %struct.pch_uart_buffer, i32 }
%struct.pch_uart_buffer = type { i32, i32 }

@PCH_UART_HAL_RX_INT = common dso_local global i32 0, align 4
@PCH_UART_HAL_RX_ERR_INT = common dso_local global i32 0, align 4
@PCH_UART_HANDLED_RX_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eg20t_port*)* @handle_rx_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_rx_to(%struct.eg20t_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eg20t_port*, align 8
  %4 = alloca %struct.pch_uart_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.eg20t_port* %0, %struct.eg20t_port** %3, align 8
  %7 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %8 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %13 = load i32, i32* @PCH_UART_HAL_RX_INT, align 4
  %14 = load i32, i32* @PCH_UART_HAL_RX_ERR_INT, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @pch_uart_hal_disable_interrupt(%struct.eg20t_port* %12, i32 %15)
  store i32 0, i32* %2, align 4
  br label %47

17:                                               ; preds = %1
  %18 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %19 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %18, i32 0, i32 0
  store %struct.pch_uart_buffer* %19, %struct.pch_uart_buffer** %4, align 8
  br label %20

20:                                               ; preds = %39, %17
  %21 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %22 = load %struct.pch_uart_buffer*, %struct.pch_uart_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.pch_uart_buffer, %struct.pch_uart_buffer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pch_uart_buffer*, %struct.pch_uart_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.pch_uart_buffer, %struct.pch_uart_buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pch_uart_hal_read(%struct.eg20t_port* %21, i32 %24, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %30 = load %struct.pch_uart_buffer*, %struct.pch_uart_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.pch_uart_buffer, %struct.pch_uart_buffer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @push_rx(%struct.eg20t_port* %29, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %47

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.pch_uart_buffer*, %struct.pch_uart_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.pch_uart_buffer, %struct.pch_uart_buffer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %20, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @PCH_UART_HANDLED_RX_INT, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %37, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @pch_uart_hal_disable_interrupt(%struct.eg20t_port*, i32) #1

declare dso_local i32 @pch_uart_hal_read(%struct.eg20t_port*, i32, i32) #1

declare dso_local i32 @push_rx(%struct.eg20t_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
