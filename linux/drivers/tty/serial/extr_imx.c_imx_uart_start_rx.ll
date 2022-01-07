; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_start_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.imx_port = type { i64 }

@UCR1 = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@UCR2_RXEN = common dso_local global i32 0, align 4
@UCR1_RXDMAEN = common dso_local global i32 0, align 4
@UCR1_ATDMAEN = common dso_local global i32 0, align 4
@UCR1_RRDYEN = common dso_local global i32 0, align 4
@UCR2_ATEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @imx_uart_start_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_start_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.imx_port*
  store %struct.imx_port* %7, %struct.imx_port** %3, align 8
  %8 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %9 = load i32, i32* @UCR1, align 4
  %10 = call i32 @imx_uart_readl(%struct.imx_port* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %12 = load i32, i32* @UCR2, align 4
  %13 = call i32 @imx_uart_readl(%struct.imx_port* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @UCR2_RXEN, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %18 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i32, i32* @UCR1_RXDMAEN, align 4
  %23 = load i32, i32* @UCR1_ATDMAEN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %34

27:                                               ; preds = %1
  %28 = load i32, i32* @UCR1_RRDYEN, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @UCR2_ATEN, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @UCR2, align 4
  %38 = call i32 @imx_uart_writel(%struct.imx_port* %35, i32 %36, i32 %37)
  %39 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @UCR1, align 4
  %42 = call i32 @imx_uart_writel(%struct.imx_port* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
