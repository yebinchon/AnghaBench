; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pch_uart_hal_enable_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pch_uart_hal_enable_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eg20t_port = type { i64 }

@UART_IER = common dso_local global i64 0, align 8
@PCH_UART_IER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eg20t_port*, i32)* @pch_uart_hal_enable_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_uart_hal_enable_interrupt(%struct.eg20t_port* %0, i32 %1) #0 {
  %3 = alloca %struct.eg20t_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.eg20t_port* %0, %struct.eg20t_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %7 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @UART_IER, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @ioread8(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PCH_UART_IER_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %19 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UART_IER, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @iowrite8(i32 %17, i64 %22)
  ret void
}

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @iowrite8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
