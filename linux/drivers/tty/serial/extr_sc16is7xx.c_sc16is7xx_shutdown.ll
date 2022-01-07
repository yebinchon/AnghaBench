; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sc16is7xx_port = type { i32 }

@SC16IS7XX_IER_REG = common dso_local global i32 0, align 4
@SC16IS7XX_EFCR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_EFCR_RXDISABLE_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_EFCR_TXDISABLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sc16is7xx_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc16is7xx_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sc16is7xx_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.sc16is7xx_port* @dev_get_drvdata(i32 %6)
  store %struct.sc16is7xx_port* %7, %struct.sc16is7xx_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = load i32, i32* @SC16IS7XX_IER_REG, align 4
  %10 = call i32 @sc16is7xx_port_write(%struct.uart_port* %8, i32 %9, i32 0)
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = load i32, i32* @SC16IS7XX_EFCR_REG, align 4
  %13 = load i32, i32* @SC16IS7XX_EFCR_RXDISABLE_BIT, align 4
  %14 = load i32, i32* @SC16IS7XX_EFCR_TXDISABLE_BIT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SC16IS7XX_EFCR_RXDISABLE_BIT, align 4
  %17 = load i32, i32* @SC16IS7XX_EFCR_TXDISABLE_BIT, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @sc16is7xx_port_update(%struct.uart_port* %11, i32 %12, i32 %15, i32 %18)
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = call i32 @sc16is7xx_power(%struct.uart_port* %20, i32 0)
  %22 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %23 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %22, i32 0, i32 0
  %24 = call i32 @kthread_flush_worker(i32* %23)
  ret void
}

declare dso_local %struct.sc16is7xx_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @sc16is7xx_port_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @sc16is7xx_port_update(%struct.uart_port*, i32, i32, i32) #1

declare dso_local i32 @sc16is7xx_power(%struct.uart_port*, i32) #1

declare dso_local i32 @kthread_flush_worker(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
