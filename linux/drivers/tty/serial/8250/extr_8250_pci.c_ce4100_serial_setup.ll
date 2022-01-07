; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_ce4100_serial_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_ce4100_serial_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_private = type { i32 }
%struct.pciserial_board = type { i32 }
%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@UPIO_MEM32 = common dso_local global i32 0, align 4
@PORT_XSCALE = common dso_local global i32 0, align 4
@UPF_FIXED_PORT = common dso_local global i32 0, align 4
@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial_private*, %struct.pciserial_board*, %struct.uart_8250_port*, i32)* @ce4100_serial_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce4100_serial_setup(%struct.serial_private* %0, %struct.pciserial_board* %1, %struct.uart_8250_port* %2, i32 %3) #0 {
  %5 = alloca %struct.serial_private*, align 8
  %6 = alloca %struct.pciserial_board*, align 8
  %7 = alloca %struct.uart_8250_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.serial_private* %0, %struct.serial_private** %5, align 8
  store %struct.pciserial_board* %1, %struct.pciserial_board** %6, align 8
  store %struct.uart_8250_port* %2, %struct.uart_8250_port** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.serial_private*, %struct.serial_private** %5, align 8
  %11 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %14 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @setup_port(%struct.serial_private* %10, %struct.uart_8250_port* %11, i32 %12, i32 0, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @UPIO_MEM32, align 4
  %18 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %19 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @PORT_XSCALE, align 4
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %23 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %26 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @UPF_FIXED_PORT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @UPF_FIXED_TYPE, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %34 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %37 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 2, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local i32 @setup_port(%struct.serial_private*, %struct.uart_8250_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
