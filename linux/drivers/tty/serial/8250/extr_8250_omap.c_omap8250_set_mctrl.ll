; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap8250_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap8250_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_8250_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.omap8250_priv* }
%struct.omap8250_priv = type { i32 }

@UART_GPIO_RTS = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_CONF_MODE_B = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@UPSTAT_AUTORTS = common dso_local global i32 0, align 4
@UART_EFR_RTS = common dso_local global i32 0, align 4
@UART_EFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @omap8250_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap8250_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_8250_port*, align 8
  %6 = alloca %struct.omap8250_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %8)
  store %struct.uart_8250_port* %9, %struct.uart_8250_port** %5, align 8
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %11 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.omap8250_priv*, %struct.omap8250_priv** %12, align 8
  store %struct.omap8250_priv* %13, %struct.omap8250_priv** %6, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @serial8250_do_set_mctrl(%struct.uart_port* %14, i32 %15)
  %17 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %18 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @UART_GPIO_RTS, align 4
  %21 = call i32 @mctrl_gpio_to_gpiod(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %66, label %23

23:                                               ; preds = %2
  %24 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %25 = load i32, i32* @UART_LCR, align 4
  %26 = call i32 @serial_in(%struct.uart_8250_port* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %28 = load i32, i32* @UART_LCR, align 4
  %29 = load i32, i32* @UART_LCR_CONF_MODE_B, align 4
  %30 = call i32 @serial_out(%struct.uart_8250_port* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @TIOCM_RTS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %23
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @UPSTAT_AUTORTS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i32, i32* @UART_EFR_RTS, align 4
  %44 = load %struct.omap8250_priv*, %struct.omap8250_priv** %6, align 8
  %45 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %55

48:                                               ; preds = %35, %23
  %49 = load i32, i32* @UART_EFR_RTS, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.omap8250_priv*, %struct.omap8250_priv** %6, align 8
  %52 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %57 = load i32, i32* @UART_EFR, align 4
  %58 = load %struct.omap8250_priv*, %struct.omap8250_priv** %6, align 8
  %59 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @serial_out(%struct.uart_8250_port* %56, i32 %57, i32 %60)
  %62 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %63 = load i32, i32* @UART_LCR, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @serial_out(%struct.uart_8250_port* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %55, %2
  ret void
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @serial8250_do_set_mctrl(%struct.uart_port*, i32) #1

declare dso_local i32 @mctrl_gpio_to_gpiod(i32, i32) #1

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
