; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_quatech_has_qmcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_quatech_has_qmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UART_LCR = common dso_local global i64 0, align 8
@UART_SCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*)* @pci_quatech_has_qmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_quatech_has_qmcr(%struct.uart_8250_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @UART_LCR, align 8
  %13 = add i64 %11, %12
  %14 = call i32 @inb(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @UART_LCR, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @outb(i32 191, i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @UART_SCR, align 8
  %21 = add i64 %19, %20
  %22 = call i32 @inb(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %1
  %27 = load i64, i64* @UART_LCR, align 8
  %28 = call i32 @outb(i32 128, i64 %27)
  %29 = load i64, i64* @UART_SCR, align 8
  %30 = call i32 @inb(i64 %29)
  %31 = and i32 %30, 32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @UART_LCR, align 8
  %37 = add i64 %35, %36
  %38 = call i32 @outb(i32 %34, i64 %37)
  store i32 1, i32* %2, align 4
  br label %41

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %1
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %33
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
