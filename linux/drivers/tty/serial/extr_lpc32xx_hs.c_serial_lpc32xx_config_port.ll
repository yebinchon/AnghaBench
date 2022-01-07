; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c_serial_lpc32xx_config_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c_serial_lpc32xx_config_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }

@PORT_UART00 = common dso_local global i32 0, align 4
@LPC32XX_HSU_TX_INT = common dso_local global i32 0, align 4
@LPC32XX_HSU_FE_INT = common dso_local global i32 0, align 4
@LPC32XX_HSU_BRK_INT = common dso_local global i32 0, align 4
@LPC32XX_HSU_RX_OE_INT = common dso_local global i32 0, align 4
@LPC32XX_HSU_TX_TL8B = common dso_local global i32 0, align 4
@LPC32XX_HSU_RX_TL32B = common dso_local global i32 0, align 4
@LPC32XX_HSU_TMO_INACT_4B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @serial_lpc32xx_config_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_lpc32xx_config_port(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call i32 @serial_lpc32xx_request_port(%struct.uart_port* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %48

11:                                               ; preds = %2
  %12 = load i32, i32* @PORT_UART00, align 4
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  store i32 64, i32* %16, align 4
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = call i32 @__serial_uart_flush(%struct.uart_port* %17)
  %19 = load i32, i32* @LPC32XX_HSU_TX_INT, align 4
  %20 = load i32, i32* @LPC32XX_HSU_FE_INT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @LPC32XX_HSU_BRK_INT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @LPC32XX_HSU_RX_OE_INT, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @LPC32XX_HSUART_IIR(i32 %28)
  %30 = call i32 @writel(i32 %25, i32 %29)
  %31 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @LPC32XX_HSUART_RATE(i32 %33)
  %35 = call i32 @writel(i32 255, i32 %34)
  %36 = load i32, i32* @LPC32XX_HSU_TX_TL8B, align 4
  %37 = load i32, i32* @LPC32XX_HSU_RX_TL32B, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @LPC32XX_HSU_OFFSET(i32 20)
  %40 = or i32 %38, %39
  %41 = load i32, i32* @LPC32XX_HSU_TMO_INACT_4B, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @LPC32XX_HSUART_CTRL(i32 %45)
  %47 = call i32 @writel(i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @serial_lpc32xx_request_port(%struct.uart_port*) #1

declare dso_local i32 @__serial_uart_flush(%struct.uart_port*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @LPC32XX_HSUART_IIR(i32) #1

declare dso_local i32 @LPC32XX_HSUART_RATE(i32) #1

declare dso_local i32 @LPC32XX_HSU_OFFSET(i32) #1

declare dso_local i32 @LPC32XX_HSUART_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
