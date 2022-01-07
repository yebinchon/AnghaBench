; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c_serial_lpc32xx_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c_serial_lpc32xx_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32 }

@LPC32XX_HSU_TX_INT = common dso_local global i32 0, align 4
@LPC32XX_HSU_FE_INT = common dso_local global i32 0, align 4
@LPC32XX_HSU_BRK_INT = common dso_local global i32 0, align 4
@LPC32XX_HSU_RX_OE_INT = common dso_local global i32 0, align 4
@LPC32XX_HSU_TX_TL8B = common dso_local global i32 0, align 4
@LPC32XX_HSU_RX_TL32B = common dso_local global i32 0, align 4
@LPC32XX_HSU_TMO_INACT_4B = common dso_local global i32 0, align 4
@serial_lpc32xx_interrupt = common dso_local global i32 0, align 4
@MODNAME = common dso_local global i32 0, align 4
@LPC32XX_HSU_RX_INT_EN = common dso_local global i32 0, align 4
@LPC32XX_HSU_ERR_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @serial_lpc32xx_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_lpc32xx_startup(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 2
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = call i32 @__serial_uart_flush(%struct.uart_port* %10)
  %12 = load i32, i32* @LPC32XX_HSU_TX_INT, align 4
  %13 = load i32, i32* @LPC32XX_HSU_FE_INT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @LPC32XX_HSU_BRK_INT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @LPC32XX_HSU_RX_OE_INT, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @LPC32XX_HSUART_IIR(i32 %21)
  %23 = call i32 @writel(i32 %18, i32 %22)
  %24 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @LPC32XX_HSUART_RATE(i32 %26)
  %28 = call i32 @writel(i32 255, i32 %27)
  %29 = load i32, i32* @LPC32XX_HSU_TX_TL8B, align 4
  %30 = load i32, i32* @LPC32XX_HSU_RX_TL32B, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @LPC32XX_HSU_OFFSET(i32 20)
  %33 = or i32 %31, %32
  %34 = load i32, i32* @LPC32XX_HSU_TMO_INACT_4B, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @LPC32XX_HSUART_CTRL(i32 %39)
  %41 = call i32 @writel(i32 %36, i32 %40)
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @lpc32xx_loopback_set(i32 %44, i32 0)
  %46 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 2
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @serial_lpc32xx_interrupt, align 4
  %54 = load i32, i32* @MODNAME, align 4
  %55 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %56 = call i32 @request_irq(i32 %52, i32 %53, i32 0, i32 %54, %struct.uart_port* %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %1
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @LPC32XX_HSU_RX_INT_EN, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @LPC32XX_HSU_ERR_INT_EN, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @LPC32XX_HSUART_CTRL(i32 %67)
  %69 = call i32 @writel(i32 %64, i32 %68)
  br label %70

70:                                               ; preds = %59, %1
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__serial_uart_flush(%struct.uart_port*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @LPC32XX_HSUART_IIR(i32) #1

declare dso_local i32 @LPC32XX_HSUART_RATE(i32) #1

declare dso_local i32 @LPC32XX_HSU_OFFSET(i32) #1

declare dso_local i32 @LPC32XX_HSUART_CTRL(i32) #1

declare dso_local i32 @lpc32xx_loopback_set(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
