; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mvebu-uart.c_mvebu_uart_baud_rate_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mvebu-uart.c_mvebu_uart_baud_rate_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32 }
%struct.mvebu_uart = type { i32 }

@OSAMP_DEFAULT_DIVISOR = common dso_local global i32 0, align 4
@UART_BRDV = common dso_local global i64 0, align 8
@BRDV_BAUD_MASK = common dso_local global i32 0, align 4
@UART_OSAMP = common dso_local global i64 0, align 8
@OSAMP_DIVISORS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @mvebu_uart_baud_rate_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_uart_baud_rate_set(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvebu_uart*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %12 = call %struct.mvebu_uart* @to_mvuart(%struct.uart_port* %11)
  store %struct.mvebu_uart* %12, %struct.mvebu_uart** %6, align 8
  %13 = load %struct.mvebu_uart*, %struct.mvebu_uart** %6, align 8
  %14 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_ERR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.mvebu_uart*, %struct.mvebu_uart** %6, align 8
  %20 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PTR_ERR(i32 %21)
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %70

24:                                               ; preds = %2
  %25 = load i32, i32* @OSAMP_DEFAULT_DIVISOR, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %8, align 4
  %31 = mul i32 %29, %30
  %32 = call i32 @DIV_ROUND_UP(i32 %28, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UART_BRDV, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @BRDV_BAUD_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @UART_BRDV, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @UART_OSAMP, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* @OSAMP_DIVISORS_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %65 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @UART_OSAMP, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %24, %18
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.mvebu_uart* @to_mvuart(%struct.uart_port*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
