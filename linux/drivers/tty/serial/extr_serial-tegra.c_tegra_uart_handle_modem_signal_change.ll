; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_handle_modem_signal_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_handle_modem_signal_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.tegra_uart_port = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@UART_MSR = common dso_local global i32 0, align 4
@UART_MSR_ANY_DELTA = common dso_local global i64 0, align 8
@UART_MSR_TERI = common dso_local global i64 0, align 8
@UART_MSR_DDSR = common dso_local global i64 0, align 8
@UART_MSR_DDCD = common dso_local global i64 0, align 8
@UART_MSR_DCD = common dso_local global i64 0, align 8
@UART_MSR_DCTS = common dso_local global i64 0, align 8
@UART_MSR_CTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @tegra_uart_handle_modem_signal_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_handle_modem_signal_change(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tegra_uart_port*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port* %5)
  store %struct.tegra_uart_port* %6, %struct.tegra_uart_port** %3, align 8
  %7 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %8 = load i32, i32* @UART_MSR, align 4
  %9 = call i64 @tegra_uart_read(%struct.tegra_uart_port* %7, i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @UART_MSR_ANY_DELTA, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %63

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @UART_MSR_TERI, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %20, %15
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @UART_MSR_DDSR, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @UART_MSR_DDCD, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %46 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %45, i32 0, i32 0
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @UART_MSR_DCD, align 8
  %49 = and i64 %47, %48
  %50 = call i32 @uart_handle_dcd_change(%struct.TYPE_5__* %46, i64 %49)
  br label %51

51:                                               ; preds = %44, %39
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @UART_MSR_DCTS, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %57, i32 0, i32 0
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @UART_MSR_CTS, align 8
  %61 = and i64 %59, %60
  %62 = call i32 @uart_handle_cts_change(%struct.TYPE_5__* %58, i64 %61)
  br label %63

63:                                               ; preds = %14, %56, %51
  ret void
}

declare dso_local %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port*) #1

declare dso_local i64 @tegra_uart_read(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @uart_handle_cts_change(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
