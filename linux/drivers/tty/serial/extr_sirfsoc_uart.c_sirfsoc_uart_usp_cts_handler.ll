; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_usp_cts_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_usp_cts_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_uart_port = type { i32, i64, %struct.uart_port }
%struct.uart_port = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sirfsoc_uart_usp_cts_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_uart_usp_cts_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sirfsoc_uart_port*, align 8
  %6 = alloca %struct.uart_port*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.sirfsoc_uart_port*
  store %struct.sirfsoc_uart_port* %8, %struct.sirfsoc_uart_port** %5, align 8
  %9 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %10 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %9, i32 0, i32 2
  store %struct.uart_port* %10, %struct.uart_port** %6, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %15 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @gpio_is_valid(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %21 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %26 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %27 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @gpio_get_value(i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @uart_handle_cts_change(%struct.uart_port* %25, i32 %32)
  br label %34

34:                                               ; preds = %24, %19, %2
  %35 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.uart_port*, i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
