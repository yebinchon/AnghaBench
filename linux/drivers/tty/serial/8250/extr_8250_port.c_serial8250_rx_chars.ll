; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.uart_port }
%struct.uart_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i8 0, align 1
@UART_LSR_BI = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @serial8250_rx_chars(%struct.uart_8250_port* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 0
  store %struct.uart_port* %8, %struct.uart_port** %5, align 8
  store i32 256, i32* %6, align 4
  br label %9

9:                                                ; preds = %21, %2
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %11 = load i8, i8* %4, align 1
  %12 = call i32 @serial8250_read_char(%struct.uart_8250_port* %10, i8 zeroext %11)
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %31

17:                                               ; preds = %9
  %18 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %19 = load i32, i32* @UART_LSR, align 4
  %20 = call zeroext i8 @serial_in(%struct.uart_8250_port* %18, i32 %19)
  store i8 %20, i8* %4, align 1
  br label %21

21:                                               ; preds = %17
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @UART_LSR_DR, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @UART_LSR_BI, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = and i32 %23, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %9, label %31

31:                                               ; preds = %21, %16
  %32 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @tty_flip_buffer_push(i32* %35)
  %37 = load i8, i8* %4, align 1
  ret i8 %37
}

declare dso_local i32 @serial8250_read_char(%struct.uart_8250_port*, i8 zeroext) #1

declare dso_local zeroext i8 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
