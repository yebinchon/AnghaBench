; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c_serial_lpc32xx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c_serial_lpc32xx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@LPC32XX_HSU_BRK_INT = common dso_local global i32 0, align 4
@LPC32XX_HSU_FE_INT = common dso_local global i32 0, align 4
@LPC32XX_HSU_RX_OE_INT = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@LPC32XX_HSU_RX_TIMEOUT_INT = common dso_local global i32 0, align 4
@LPC32XX_HSU_RX_TRIG_INT = common dso_local global i32 0, align 4
@LPC32XX_HSU_TX_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @serial_lpc32xx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_lpc32xx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.uart_port*
  store %struct.uart_port* %9, %struct.uart_port** %5, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.tty_port* %13, %struct.tty_port** %6, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @LPC32XX_HSUART_IIR(i32 %19)
  %21 = call i32 @readl(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @LPC32XX_HSU_BRK_INT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = load i32, i32* @LPC32XX_HSU_BRK_INT, align 4
  %28 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @LPC32XX_HSUART_IIR(i32 %30)
  %32 = call i32 @writel(i32 %27, i32 %31)
  %33 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %39 = call i32 @uart_handle_break(%struct.uart_port* %38)
  br label %40

40:                                               ; preds = %26, %2
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @LPC32XX_HSU_FE_INT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* @LPC32XX_HSU_FE_INT, align 4
  %47 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @LPC32XX_HSUART_IIR(i32 %49)
  %51 = call i32 @writel(i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %45, %40
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @LPC32XX_HSU_RX_OE_INT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load i32, i32* @LPC32XX_HSU_RX_OE_INT, align 4
  %59 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @LPC32XX_HSUART_IIR(i32 %61)
  %63 = call i32 @writel(i32 %58, i32 %62)
  %64 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %65 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %70 = load i32, i32* @TTY_OVERRUN, align 4
  %71 = call i32 @tty_insert_flip_char(%struct.tty_port* %69, i32 0, i32 %70)
  %72 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %73 = call i32 @tty_schedule_flip(%struct.tty_port* %72)
  br label %74

74:                                               ; preds = %57, %52
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @LPC32XX_HSU_RX_TIMEOUT_INT, align 4
  %77 = load i32, i32* @LPC32XX_HSU_RX_TRIG_INT, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %83 = call i32 @__serial_lpc32xx_rx(%struct.uart_port* %82)
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @LPC32XX_HSU_TX_INT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %91 = call i32 @uart_tx_stopped(%struct.uart_port* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* @LPC32XX_HSU_TX_INT, align 4
  %95 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %96 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @LPC32XX_HSUART_IIR(i32 %97)
  %99 = call i32 @writel(i32 %94, i32 %98)
  %100 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %101 = call i32 @__serial_lpc32xx_tx(%struct.uart_port* %100)
  br label %102

102:                                              ; preds = %93, %89, %84
  %103 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %104 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %106
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @LPC32XX_HSUART_IIR(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @tty_schedule_flip(%struct.tty_port*) #1

declare dso_local i32 @__serial_lpc32xx_rx(%struct.uart_port*) #1

declare dso_local i32 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @__serial_lpc32xx_tx(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
