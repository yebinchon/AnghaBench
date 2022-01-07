; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_fintek_f815xxa_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_fintek_f815xxa_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_private = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.pciserial_board = type { i32 }
%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, %struct.f815xxa_data* }
%struct.f815xxa_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@f815xxa_mem_serial_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial_private*, %struct.pciserial_board*, %struct.uart_8250_port*, i32)* @pci_fintek_f815xxa_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_fintek_f815xxa_setup(%struct.serial_private* %0, %struct.pciserial_board* %1, %struct.uart_8250_port* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.serial_private*, align 8
  %7 = alloca %struct.pciserial_board*, align 8
  %8 = alloca %struct.uart_8250_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.f815xxa_data*, align 8
  store %struct.serial_private* %0, %struct.serial_private** %6, align 8
  store %struct.pciserial_board* %1, %struct.pciserial_board** %7, align 8
  store %struct.uart_8250_port* %2, %struct.uart_8250_port** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.serial_private*, %struct.serial_private** %6, align 8
  %13 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %10, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.f815xxa_data* @devm_kzalloc(i32* %16, i32 8, i32 %17)
  store %struct.f815xxa_data* %18, %struct.f815xxa_data** %11, align 8
  %19 = load %struct.f815xxa_data*, %struct.f815xxa_data** %11, align 8
  %20 = icmp ne %struct.f815xxa_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %58

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.f815xxa_data*, %struct.f815xxa_data** %11, align 8
  %27 = getelementptr inbounds %struct.f815xxa_data, %struct.f815xxa_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.f815xxa_data*, %struct.f815xxa_data** %11, align 8
  %29 = getelementptr inbounds %struct.f815xxa_data, %struct.f815xxa_data* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.f815xxa_data*, %struct.f815xxa_data** %11, align 8
  %32 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %33 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  store %struct.f815xxa_data* %31, %struct.f815xxa_data** %34, align 8
  %35 = load i32, i32* @UPIO_MEM, align 4
  %36 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %37 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @UPF_IOREMAP, align 4
  %40 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %41 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %46 = call i64 @pci_resource_start(%struct.pci_dev* %45, i32 0)
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 8, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %52 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  %54 = load i32, i32* @f815xxa_mem_serial_out, align 4
  %55 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %56 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %24, %21
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.f815xxa_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
