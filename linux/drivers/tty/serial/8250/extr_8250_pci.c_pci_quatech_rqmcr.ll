; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_quatech_rqmcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_quatech_rqmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UART_LCR = common dso_local global i64 0, align 8
@UART_SCR = common dso_local global i64 0, align 8
@UART_MCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*)* @pci_quatech_rqmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_quatech_rqmcr(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @UART_LCR, align 8
  %13 = add i64 %11, %12
  %14 = call i32 @inb(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @UART_LCR, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @outb(i32 191, i64 %17)
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @UART_SCR, align 8
  %21 = add i64 %19, %20
  %22 = call i32 @inb(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, 16
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @UART_SCR, align 8
  %27 = add i64 %25, %26
  %28 = call i32 @outb(i32 %24, i64 %27)
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @UART_MCR, align 8
  %31 = add i64 %29, %30
  %32 = call i32 @inb(i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @UART_SCR, align 8
  %36 = add i64 %34, %35
  %37 = call i32 @outb(i32 %33, i64 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @UART_LCR, align 8
  %41 = add i64 %39, %40
  %42 = call i32 @outb(i32 %38, i64 %41)
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
