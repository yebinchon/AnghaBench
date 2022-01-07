; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_quatech_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_quatech_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_private = type { i32 }
%struct.pciserial_board = type { i32 }
%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [70 x i8] c"quatech: software control of RS422 features not currently supported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial_private*, %struct.pciserial_board*, %struct.uart_8250_port*, i32)* @pci_quatech_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_quatech_setup(%struct.serial_private* %0, %struct.pciserial_board* %1, %struct.uart_8250_port* %2, i32 %3) #0 {
  %5 = alloca %struct.serial_private*, align 8
  %6 = alloca %struct.pciserial_board*, align 8
  %7 = alloca %struct.uart_8250_port*, align 8
  %8 = alloca i32, align 4
  store %struct.serial_private* %0, %struct.serial_private** %5, align 8
  store %struct.pciserial_board* %1, %struct.pciserial_board** %6, align 8
  store %struct.uart_8250_port* %2, %struct.uart_8250_port** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.serial_private*, %struct.serial_private** %5, align 8
  %10 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %13 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @FL_GET_BASE(i32 %14)
  %16 = call i32 @pci_resource_start(i32 %11, i32 %15)
  %17 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %18 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %21 = call i32 @pci_quatech_clock(%struct.uart_8250_port* %20)
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %23 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %26 = call i64 @pci_quatech_rs422(%struct.uart_8250_port* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = call i32 @pr_warn(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %4
  %31 = load %struct.serial_private*, %struct.serial_private** %5, align 8
  %32 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %33 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @pci_default_setup(%struct.serial_private* %31, %struct.pciserial_board* %32, %struct.uart_8250_port* %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @FL_GET_BASE(i32) #1

declare dso_local i32 @pci_quatech_clock(%struct.uart_8250_port*) #1

declare dso_local i64 @pci_quatech_rs422(%struct.uart_8250_port*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pci_default_setup(%struct.serial_private*, %struct.pciserial_board*, %struct.uart_8250_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
