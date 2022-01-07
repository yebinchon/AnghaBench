; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_do_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_do_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_8250_port = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serial8250_do_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_8250_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %7)
  store %struct.uart_8250_port* %8, %struct.uart_8250_port** %4, align 8
  %9 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %10 = call i32 @serial8250_rpm_get(%struct.uart_8250_port* %9)
  %11 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %12 = call i32 @serial8250_modem_status(%struct.uart_8250_port* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %14 = call i32 @serial8250_rpm_put(%struct.uart_8250_port* %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @serial8250_MSR_to_TIOCM(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %23 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @mctrl_gpio_get(i64 %24, i32* %6)
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @serial8250_rpm_get(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_modem_status(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_rpm_put(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_MSR_to_TIOCM(i32) #1

declare dso_local i32 @mctrl_gpio_get(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
