; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.tegra_uart_port = type { i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @tegra_uart_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_uart_port*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port* %7)
  store %struct.tegra_uart_port* %8, %struct.tegra_uart_port** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @TIOCM_RTS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %17 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %19 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %20 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @set_rts(%struct.tegra_uart_port* %18, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @TIOCM_DTR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @set_dtr(%struct.tegra_uart_port* %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @TIOCM_LOOP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @set_loopbk(%struct.tegra_uart_port* %40, i32 %41)
  ret void
}

declare dso_local %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port*) #1

declare dso_local i32 @set_rts(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @set_dtr(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @set_loopbk(%struct.tegra_uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
