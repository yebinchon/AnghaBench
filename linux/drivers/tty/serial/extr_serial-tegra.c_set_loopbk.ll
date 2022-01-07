; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_set_loopbk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_set_loopbk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { i64 }

@UART_MCR_LOOP = common dso_local global i64 0, align 8
@UART_MCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_uart_port*, i32)* @set_loopbk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_loopbk(%struct.tegra_uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64, i64* @UART_MCR_LOOP, align 8
  %13 = load i64, i64* %5, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* %5, align 8
  br label %20

15:                                               ; preds = %2
  %16 = load i64, i64* @UART_MCR_LOOP, align 8
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %5, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* @UART_MCR, align 4
  %30 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %27, i64 %28, i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @tegra_uart_write(%struct.tegra_uart_port*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
