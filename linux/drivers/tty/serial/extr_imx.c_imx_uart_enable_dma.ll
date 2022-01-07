; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_enable_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_enable_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i32 }

@TXTL_DMA = common dso_local global i32 0, align 4
@RXTL_DMA = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i32 0, align 4
@UCR1_RXDMAEN = common dso_local global i32 0, align 4
@UCR1_TXDMAEN = common dso_local global i32 0, align 4
@UCR1_ATDMAEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_port*)* @imx_uart_enable_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_enable_dma(%struct.imx_port* %0) #0 {
  %2 = alloca %struct.imx_port*, align 8
  %3 = alloca i32, align 4
  store %struct.imx_port* %0, %struct.imx_port** %2, align 8
  %4 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %5 = load i32, i32* @TXTL_DMA, align 4
  %6 = load i32, i32* @RXTL_DMA, align 4
  %7 = call i32 @imx_uart_setup_ufcr(%struct.imx_port* %4, i32 %5, i32 %6)
  %8 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %9 = load i32, i32* @UCR1, align 4
  %10 = call i32 @imx_uart_readl(%struct.imx_port* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @UCR1_RXDMAEN, align 4
  %12 = load i32, i32* @UCR1_TXDMAEN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @UCR1_ATDMAEN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @UCR1, align 4
  %21 = call i32 @imx_uart_writel(%struct.imx_port* %18, i32 %19, i32 %20)
  %22 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %23 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  ret void
}

declare dso_local i32 @imx_uart_setup_ufcr(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
