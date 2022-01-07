; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pch_uart_hal_get_iid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pch_uart_hal_get_iid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eg20t_port = type { i64 }

@UART_IIR = common dso_local global i64 0, align 8
@PCH_UART_IIR_IID = common dso_local global i8 0, align 1
@PCH_UART_IIR_TOI = common dso_local global i8 0, align 1
@PCH_UART_IIR_IP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.eg20t_port*)* @pch_uart_hal_get_iid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @pch_uart_hal_get_iid(%struct.eg20t_port* %0) #0 {
  %2 = alloca %struct.eg20t_port*, align 8
  store %struct.eg20t_port* %0, %struct.eg20t_port** %2, align 8
  %3 = load %struct.eg20t_port*, %struct.eg20t_port** %2, align 8
  %4 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @UART_IIR, align 8
  %7 = add nsw i64 %5, %6
  %8 = call zeroext i8 @ioread8(i64 %7)
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @PCH_UART_IIR_IID, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @PCH_UART_IIR_TOI, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %11, %13
  %15 = load i8, i8* @PCH_UART_IIR_IP, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %14, %16
  %18 = and i32 %9, %17
  %19 = trunc i32 %18 to i8
  ret i8 %19
}

declare dso_local zeroext i8 @ioread8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
