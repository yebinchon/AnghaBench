; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_rts_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_rts_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@UCR2_CTSC = common dso_local global i32 0, align 4
@UCR2_CTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_port*, i32*)* @imx_uart_rts_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_rts_active(%struct.imx_port* %0, i32* %1) #0 {
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca i32*, align 8
  store %struct.imx_port* %0, %struct.imx_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @UCR2_CTSC, align 4
  %6 = load i32, i32* @UCR2_CTS, align 4
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %8
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @TIOCM_RTS, align 4
  %13 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %14 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %12
  store i32 %17, i32* %15, align 4
  %18 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %19 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %22 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mctrl_gpio_set(i32 %20, i32 %24)
  ret void
}

declare dso_local i32 @mctrl_gpio_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
