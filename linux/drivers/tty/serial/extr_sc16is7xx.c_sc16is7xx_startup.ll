; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sc16is7xx_port = type { i32 }

@SC16IS7XX_FCR_RXRESET_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_FCR_TXRESET_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_FCR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_FCR_FIFO_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_CONF_MODE_B = common dso_local global i32 0, align 4
@SC16IS7XX_EFR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_EFR_ENABLE_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_MCR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_MCR_TCRTLR_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_TCR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_WORD_LEN_8 = common dso_local global i32 0, align 4
@SC16IS7XX_EFCR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_EFCR_RXDISABLE_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_EFCR_TXDISABLE_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_IER_RDI_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_IER_THRI_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_IER_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sc16is7xx_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc16is7xx_startup(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sc16is7xx_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sc16is7xx_port* @dev_get_drvdata(i32 %7)
  store %struct.sc16is7xx_port* %8, %struct.sc16is7xx_port** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = call i32 @sc16is7xx_power(%struct.uart_port* %9, i32 1)
  %11 = load i32, i32* @SC16IS7XX_FCR_RXRESET_BIT, align 4
  %12 = load i32, i32* @SC16IS7XX_FCR_TXRESET_BIT, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = load i32, i32* @SC16IS7XX_FCR_REG, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @sc16is7xx_port_write(%struct.uart_port* %14, i32 %15, i32 %16)
  %18 = call i32 @udelay(i32 5)
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = load i32, i32* @SC16IS7XX_FCR_REG, align 4
  %21 = load i32, i32* @SC16IS7XX_FCR_FIFO_BIT, align 4
  %22 = call i32 @sc16is7xx_port_write(%struct.uart_port* %19, i32 %20, i32 %21)
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = load i32, i32* @SC16IS7XX_LCR_REG, align 4
  %25 = load i32, i32* @SC16IS7XX_LCR_CONF_MODE_B, align 4
  %26 = call i32 @sc16is7xx_port_write(%struct.uart_port* %23, i32 %24, i32 %25)
  %27 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %28 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regcache_cache_bypass(i32 %29, i32 1)
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = load i32, i32* @SC16IS7XX_EFR_REG, align 4
  %33 = load i32, i32* @SC16IS7XX_EFR_ENABLE_BIT, align 4
  %34 = call i32 @sc16is7xx_port_write(%struct.uart_port* %31, i32 %32, i32 %33)
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = load i32, i32* @SC16IS7XX_MCR_REG, align 4
  %37 = load i32, i32* @SC16IS7XX_MCR_TCRTLR_BIT, align 4
  %38 = load i32, i32* @SC16IS7XX_MCR_TCRTLR_BIT, align 4
  %39 = call i32 @sc16is7xx_port_update(%struct.uart_port* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %41 = load i32, i32* @SC16IS7XX_TCR_REG, align 4
  %42 = call i32 @SC16IS7XX_TCR_RX_RESUME(i32 24)
  %43 = call i32 @SC16IS7XX_TCR_RX_HALT(i32 48)
  %44 = or i32 %42, %43
  %45 = call i32 @sc16is7xx_port_write(%struct.uart_port* %40, i32 %41, i32 %44)
  %46 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %47 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @regcache_cache_bypass(i32 %48, i32 0)
  %50 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %51 = load i32, i32* @SC16IS7XX_LCR_REG, align 4
  %52 = load i32, i32* @SC16IS7XX_LCR_WORD_LEN_8, align 4
  %53 = call i32 @sc16is7xx_port_write(%struct.uart_port* %50, i32 %51, i32 %52)
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = load i32, i32* @SC16IS7XX_EFCR_REG, align 4
  %56 = load i32, i32* @SC16IS7XX_EFCR_RXDISABLE_BIT, align 4
  %57 = load i32, i32* @SC16IS7XX_EFCR_TXDISABLE_BIT, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @sc16is7xx_port_update(%struct.uart_port* %54, i32 %55, i32 %58, i32 0)
  %60 = load i32, i32* @SC16IS7XX_IER_RDI_BIT, align 4
  %61 = load i32, i32* @SC16IS7XX_IER_THRI_BIT, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %4, align 4
  %63 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %64 = load i32, i32* @SC16IS7XX_IER_REG, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @sc16is7xx_port_write(%struct.uart_port* %63, i32 %64, i32 %65)
  ret i32 0
}

declare dso_local %struct.sc16is7xx_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @sc16is7xx_power(%struct.uart_port*, i32) #1

declare dso_local i32 @sc16is7xx_port_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @regcache_cache_bypass(i32, i32) #1

declare dso_local i32 @sc16is7xx_port_update(%struct.uart_port*, i32, i32, i32) #1

declare dso_local i32 @SC16IS7XX_TCR_RX_RESUME(i32) #1

declare dso_local i32 @SC16IS7XX_TCR_RX_HALT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
