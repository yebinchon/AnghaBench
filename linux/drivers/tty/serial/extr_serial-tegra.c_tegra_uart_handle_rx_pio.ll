; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_handle_rx_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_handle_rx_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tty_port = type { i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i64 0, align 8
@UART_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_uart_port*, %struct.tty_port*)* @tegra_uart_handle_rx_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_handle_rx_pio(%struct.tegra_uart_port* %0, %struct.tty_port* %1) #0 {
  %3 = alloca %struct.tegra_uart_port*, align 8
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %3, align 8
  store %struct.tty_port* %1, %struct.tty_port** %4, align 8
  br label %8

8:                                                ; preds = %62, %2
  %9 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %9, i8* %5, align 1
  store i64 0, i64* %6, align 8
  %10 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %11 = load i32, i32* @UART_LSR, align 4
  %12 = call i64 @tegra_uart_read(%struct.tegra_uart_port* %10, i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @UART_LSR_DR, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  br label %63

18:                                               ; preds = %8
  %19 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call signext i8 @tegra_uart_decode_rx_error(%struct.tegra_uart_port* %19, i64 %20)
  store i8 %21, i8* %5, align 1
  %22 = load i8, i8* %5, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* @TTY_NORMAL, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %62

28:                                               ; preds = %18
  %29 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %30 = load i32, i32* @UART_RX, align 4
  %31 = call i64 @tegra_uart_read(%struct.tegra_uart_port* %29, i32 %30)
  %32 = trunc i64 %31 to i8
  store i8 %32, i8* %7, align 1
  %33 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %39, i32 0, i32 0
  %41 = load i8, i8* %7, align 1
  %42 = call i32 @uart_handle_sysrq_char(%struct.TYPE_4__* %40, i8 zeroext %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %28
  %45 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %46 = icmp ne %struct.tty_port* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %49 = load i8, i8* %7, align 1
  %50 = load i8, i8* %5, align 1
  %51 = call i32 @tty_insert_flip_char(%struct.tty_port* %48, i8 zeroext %49, i8 signext %50)
  br label %52

52:                                               ; preds = %47, %44, %28
  %53 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %54 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @UART_LSR_DR, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %62

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %60, %27
  br i1 true, label %8, label %63

63:                                               ; preds = %62, %17
  ret void
}

declare dso_local i64 @tegra_uart_read(%struct.tegra_uart_port*, i32) #1

declare dso_local signext i8 @tegra_uart_decode_rx_error(%struct.tegra_uart_port*, i64) #1

declare dso_local i32 @uart_handle_sysrq_char(%struct.TYPE_4__*, i8 zeroext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i8 zeroext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
