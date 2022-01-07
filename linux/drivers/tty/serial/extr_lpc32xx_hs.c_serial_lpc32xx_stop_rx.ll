; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c_serial_lpc32xx_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c_serial_lpc32xx_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@LPC32XX_HSU_RX_INT_EN = common dso_local global i32 0, align 4
@LPC32XX_HSU_ERR_INT_EN = common dso_local global i32 0, align 4
@LPC32XX_HSU_BRK_INT = common dso_local global i32 0, align 4
@LPC32XX_HSU_RX_OE_INT = common dso_local global i32 0, align 4
@LPC32XX_HSU_FE_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial_lpc32xx_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_lpc32xx_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @LPC32XX_HSUART_CTRL(i32 %6)
  %8 = call i32 @readl(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @LPC32XX_HSU_RX_INT_EN, align 4
  %10 = load i32, i32* @LPC32XX_HSU_ERR_INT_EN, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @LPC32XX_HSUART_CTRL(i32 %18)
  %20 = call i32 @writel(i32 %15, i32 %19)
  %21 = load i32, i32* @LPC32XX_HSU_BRK_INT, align 4
  %22 = load i32, i32* @LPC32XX_HSU_RX_OE_INT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @LPC32XX_HSU_FE_INT, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @LPC32XX_HSUART_IIR(i32 %28)
  %30 = call i32 @writel(i32 %25, i32 %29)
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @LPC32XX_HSUART_CTRL(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @LPC32XX_HSUART_IIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
