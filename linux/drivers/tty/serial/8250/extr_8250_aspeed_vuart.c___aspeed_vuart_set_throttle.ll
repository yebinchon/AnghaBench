; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c___aspeed_vuart_set_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c___aspeed_vuart_set_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i8 }

@UART_IER_RLSI = common dso_local global i8 0, align 1
@UART_IER_RDI = common dso_local global i8 0, align 1
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*, i32)* @__aspeed_vuart_set_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__aspeed_vuart_set_throttle(%struct.uart_8250_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8, i8* @UART_IER_RLSI, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* @UART_IER_RDI, align 1
  %9 = zext i8 %8 to i32
  %10 = or i32 %7, %9
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %5, align 1
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  %14 = xor i32 %13, -1
  %15 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, %14
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %16, align 1
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %2
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i32
  %26 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %27 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, %25
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  br label %32

32:                                               ; preds = %23, %2
  %33 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %34 = load i32, i32* @UART_IER, align 4
  %35 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @serial_out(%struct.uart_8250_port* %33, i32 %34, i8 zeroext %37)
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
