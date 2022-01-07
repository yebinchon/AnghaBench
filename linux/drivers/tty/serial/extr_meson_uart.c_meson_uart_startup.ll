; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_uart_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i64 }

@AML_UART_CONTROL = common dso_local global i64 0, align 8
@AML_UART_CLEAR_ERR = common dso_local global i32 0, align 4
@AML_UART_RX_EN = common dso_local global i32 0, align 4
@AML_UART_TX_EN = common dso_local global i32 0, align 4
@AML_UART_RX_INT_EN = common dso_local global i32 0, align 4
@AML_UART_TX_INT_EN = common dso_local global i32 0, align 4
@AML_UART_MISC = common dso_local global i64 0, align 8
@meson_uart_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @meson_uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_uart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AML_UART_CONTROL, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @AML_UART_CLEAR_ERR, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AML_UART_CONTROL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load i32, i32* @AML_UART_CLEAR_ERR, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AML_UART_CONTROL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load i32, i32* @AML_UART_RX_EN, align 4
  %33 = load i32, i32* @AML_UART_TX_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AML_UART_CONTROL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load i32, i32* @AML_UART_RX_INT_EN, align 4
  %45 = load i32, i32* @AML_UART_TX_INT_EN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AML_UART_CONTROL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = call i32 @AML_UART_RECV_IRQ(i32 1)
  %57 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %59, 2
  %61 = call i32 @AML_UART_XMIT_IRQ(i32 %60)
  %62 = or i32 %56, %61
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %65 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AML_UART_MISC, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @meson_uart_interrupt, align 4
  %74 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %75 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %78 = call i32 @request_irq(i32 %72, i32 %73, i32 0, i32 %76, %struct.uart_port* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @AML_UART_RECV_IRQ(i32) #1

declare dso_local i32 @AML_UART_XMIT_IRQ(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
