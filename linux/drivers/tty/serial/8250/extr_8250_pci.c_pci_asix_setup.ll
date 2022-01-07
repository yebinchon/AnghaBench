; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_asix_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_asix_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_private = type { i32 }
%struct.pciserial_board = type { i32 }
%struct.uart_8250_port = type { i32 }

@UART_BUG_PARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial_private*, %struct.pciserial_board*, %struct.uart_8250_port*, i32)* @pci_asix_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_asix_setup(%struct.serial_private* %0, %struct.pciserial_board* %1, %struct.uart_8250_port* %2, i32 %3) #0 {
  %5 = alloca %struct.serial_private*, align 8
  %6 = alloca %struct.pciserial_board*, align 8
  %7 = alloca %struct.uart_8250_port*, align 8
  %8 = alloca i32, align 4
  store %struct.serial_private* %0, %struct.serial_private** %5, align 8
  store %struct.pciserial_board* %1, %struct.pciserial_board** %6, align 8
  store %struct.uart_8250_port* %2, %struct.uart_8250_port** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @UART_BUG_PARITY, align 4
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %11 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.serial_private*, %struct.serial_private** %5, align 8
  %15 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @pci_default_setup(%struct.serial_private* %14, %struct.pciserial_board* %15, %struct.uart_8250_port* %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @pci_default_setup(%struct.serial_private*, %struct.pciserial_board*, %struct.uart_8250_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
