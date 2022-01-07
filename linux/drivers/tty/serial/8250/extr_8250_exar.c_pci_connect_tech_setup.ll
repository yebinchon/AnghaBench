; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_exar.c_pci_connect_tech_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_exar.c_pci_connect_tech_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exar8250 = type { i32 }
%struct.pci_dev = type { i32 }
%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exar8250*, %struct.pci_dev*, %struct.uart_8250_port*, i32)* @pci_connect_tech_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_connect_tech_setup(%struct.exar8250* %0, %struct.pci_dev* %1, %struct.uart_8250_port* %2, i32 %3) #0 {
  %5 = alloca %struct.exar8250*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.uart_8250_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.exar8250* %0, %struct.exar8250** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.uart_8250_port* %2, %struct.uart_8250_port** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = mul nsw i32 %11, 512
  store i32 %12, i32* %9, align 4
  store i32 1843200, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = mul i32 %13, 16
  %15 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %16 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.exar8250*, %struct.exar8250** %5, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %23 = call i32 @default_setup(%struct.exar8250* %18, %struct.pci_dev* %19, i32 %20, i32 %21, %struct.uart_8250_port* %22)
  ret i32 %23
}

declare dso_local i32 @default_setup(%struct.exar8250*, %struct.pci_dev*, i32, i32, %struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
