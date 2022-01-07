; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_autoconfig_8250.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_autoconfig_8250.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PORT_8250 = common dso_local global i32 0, align 4
@UART_SCR = common dso_local global i32 0, align 4
@PORT_16450 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @autoconfig_8250 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autoconfig_8250(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %6 = load i32, i32* @PORT_8250, align 4
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 4
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %11 = load i32, i32* @UART_SCR, align 4
  %12 = call zeroext i8 @serial_in(%struct.uart_8250_port* %10, i32 %11)
  store i8 %12, i8* %3, align 1
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %14 = load i32, i32* @UART_SCR, align 4
  %15 = call i32 @serial_out(%struct.uart_8250_port* %13, i32 %14, i8 zeroext -91)
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %17 = load i32, i32* @UART_SCR, align 4
  %18 = call zeroext i8 @serial_in(%struct.uart_8250_port* %16, i32 %17)
  store i8 %18, i8* %4, align 1
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %20 = load i32, i32* @UART_SCR, align 4
  %21 = call i32 @serial_out(%struct.uart_8250_port* %19, i32 %20, i8 zeroext 90)
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %23 = load i32, i32* @UART_SCR, align 4
  %24 = call zeroext i8 @serial_in(%struct.uart_8250_port* %22, i32 %23)
  store i8 %24, i8* %5, align 1
  %25 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %26 = load i32, i32* @UART_SCR, align 4
  %27 = load i8, i8* %3, align 1
  %28 = call i32 @serial_out(%struct.uart_8250_port* %25, i32 %26, i8 zeroext %27)
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 165
  br i1 %31, label %32, label %41

32:                                               ; preds = %1
  %33 = load i8, i8* %5, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 90
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* @PORT_16450, align 4
  %38 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %39 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %32, %1
  ret void
}

declare dso_local zeroext i8 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
