; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_disable_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_disable_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i64 }

@UCR1 = common dso_local global i32 0, align 4
@UCR1_RXDMAEN = common dso_local global i32 0, align 4
@UCR1_TXDMAEN = common dso_local global i32 0, align 4
@UCR1_ATDMAEN = common dso_local global i32 0, align 4
@TXTL_DEFAULT = common dso_local global i32 0, align 4
@RXTL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_port*)* @imx_uart_disable_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_disable_dma(%struct.imx_port* %0) #0 {
  %2 = alloca %struct.imx_port*, align 8
  %3 = alloca i32, align 4
  store %struct.imx_port* %0, %struct.imx_port** %2, align 8
  %4 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %5 = load i32, i32* @UCR1, align 4
  %6 = call i32 @imx_uart_readl(%struct.imx_port* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @UCR1_RXDMAEN, align 4
  %8 = load i32, i32* @UCR1_TXDMAEN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @UCR1_ATDMAEN, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @UCR1, align 4
  %18 = call i32 @imx_uart_writel(%struct.imx_port* %15, i32 %16, i32 %17)
  %19 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %20 = load i32, i32* @TXTL_DEFAULT, align 4
  %21 = load i32, i32* @RXTL_DEFAULT, align 4
  %22 = call i32 @imx_uart_setup_ufcr(%struct.imx_port* %19, i32 %20, i32 %21)
  %23 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %24 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  ret void
}

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @imx_uart_setup_ufcr(%struct.imx_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
