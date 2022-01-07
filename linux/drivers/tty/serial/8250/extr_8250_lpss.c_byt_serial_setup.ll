; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_lpss.c_byt_serial_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_lpss.c_byt_serial_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpss8250 = type { i32, %struct.dw_dma_slave }
%struct.dw_dma_slave = type { i32, i32, i32, i64, i32* }
%struct.uart_port = type { i64, i32, i32, i32 }
%struct.pci_dev = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@byt_set_termios = common dso_local global i32 0, align 4
@byt_get_mctrl = common dso_local global i32 0, align 4
@BYT_TX_OVF_INT_MASK = common dso_local global i32 0, align 4
@BYT_TX_OVF_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpss8250*, %struct.uart_port*)* @byt_serial_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_serial_setup(%struct.lpss8250* %0, %struct.uart_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpss8250*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.dw_dma_slave*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.lpss8250* %0, %struct.lpss8250** %4, align 8
  store %struct.uart_port* %1, %struct.uart_port** %5, align 8
  %10 = load %struct.lpss8250*, %struct.lpss8250** %4, align 8
  %11 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %10, i32 0, i32 1
  store %struct.dw_dma_slave* %11, %struct.dw_dma_slave** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.pci_dev* @to_pci_dev(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %7, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @PCI_SLOT(i32 %18)
  %20 = call i32 @PCI_DEVFN(i32 %19, i32 0)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.pci_dev* @pci_get_slot(i32 %23, i32 %24)
  store %struct.pci_dev* %25, %struct.pci_dev** %9, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %39 [
    i32 129, label %29
    i32 131, label %29
    i32 133, label %29
    i32 128, label %34
    i32 130, label %34
    i32 132, label %34
  ]

29:                                               ; preds = %2, %2, %2
  %30 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %6, align 8
  %31 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %30, i32 0, i32 0
  store i32 3, i32* %31, align 8
  %32 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %6, align 8
  %33 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %32, i32 0, i32 1
  store i32 2, i32* %33, align 4
  br label %42

34:                                               ; preds = %2, %2, %2
  %35 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %6, align 8
  %36 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %35, i32 0, i32 0
  store i32 5, i32* %36, align 8
  %37 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %6, align 8
  %38 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %37, i32 0, i32 1
  store i32 4, i32* %38, align 4
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %66

42:                                               ; preds = %34, %29
  %43 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 1
  %45 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %6, align 8
  %46 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %45, i32 0, i32 4
  store i32* %44, i32** %46, align 8
  %47 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %6, align 8
  %48 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %6, align 8
  %50 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %49, i32 0, i32 2
  store i32 1, i32* %50, align 8
  %51 = load %struct.lpss8250*, %struct.lpss8250** %4, align 8
  %52 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %51, i32 0, i32 0
  store i32 16, i32* %52, align 8
  %53 = load i32, i32* @byt_set_termios, align 4
  %54 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @byt_get_mctrl, align 4
  %57 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @BYT_TX_OVF_INT_MASK, align 4
  %60 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @BYT_TX_OVF_INT, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %42, %39
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
