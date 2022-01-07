; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_moxa_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_moxa_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_private = type { i32 }
%struct.pciserial_board = type { i32, i32, i32 }
%struct.uart_8250_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial_private*, %struct.pciserial_board*, %struct.uart_8250_port*, i32)* @pci_moxa_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_moxa_setup(%struct.serial_private* %0, %struct.pciserial_board* %1, %struct.uart_8250_port* %2, i32 %3) #0 {
  %5 = alloca %struct.serial_private*, align 8
  %6 = alloca %struct.pciserial_board*, align 8
  %7 = alloca %struct.uart_8250_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.serial_private* %0, %struct.serial_private** %5, align 8
  store %struct.pciserial_board* %1, %struct.pciserial_board** %6, align 8
  store %struct.uart_8250_port* %2, %struct.uart_8250_port** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %12 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @FL_GET_BASE(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %16 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %24 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 7, %25
  store i32 %26, i32* %10, align 4
  br label %33

27:                                               ; preds = %19, %4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %30 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.serial_private*, %struct.serial_private** %5, align 8
  %35 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @setup_port(%struct.serial_private* %34, %struct.uart_8250_port* %35, i32 %36, i32 %37, i32 0)
  ret i32 %38
}

declare dso_local i32 @FL_GET_BASE(i32) #1

declare dso_local i32 @setup_port(%struct.serial_private*, %struct.uart_8250_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
