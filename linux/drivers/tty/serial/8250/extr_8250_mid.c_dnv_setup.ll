; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mid.c_dnv_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mid.c_dnv_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid8250 = type { %struct.pci_dev*, %struct.TYPE_2__*, %struct.hsu_dma_chip }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hsu_dma_chip = type { i32, i32, i32, i8*, i32* }
%struct.uart_port = type { i32, i32, i8*, i32 }

@PCI_IRQ_ALL_TYPES = common dso_local global i32 0, align 4
@DNV_DMA_CHAN_OFFSET = common dso_local global i32 0, align 4
@dnv_handle_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mid8250*, %struct.uart_port*)* @dnv_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnv_setup(%struct.mid8250* %0, %struct.uart_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mid8250*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.hsu_dma_chip*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mid8250* %0, %struct.mid8250** %4, align 8
  store %struct.uart_port* %1, %struct.uart_port** %5, align 8
  %10 = load %struct.mid8250*, %struct.mid8250** %4, align 8
  %11 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %10, i32 0, i32 2
  store %struct.hsu_dma_chip* %11, %struct.hsu_dma_chip** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.pci_dev* @to_pci_dev(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %7, align 8
  %16 = load %struct.mid8250*, %struct.mid8250** %4, align 8
  %17 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @FL_GET_BASE(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %23 = call i32 @pci_set_master(%struct.pci_dev* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %25 = load i32, i32* @PCI_IRQ_ALL_TYPES, align 4
  %26 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %24, i32 1, i32 1, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %69

31:                                               ; preds = %2
  %32 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %33 = call i8* @pci_irq_vector(%struct.pci_dev* %32, i32 0)
  %34 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %39 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %38, i32 0, i32 4
  store i32* %37, i32** %39, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %41 = call i8* @pci_irq_vector(%struct.pci_dev* %40, i32 0)
  %42 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %43 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %48 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @pci_resource_len(%struct.pci_dev* %49, i32 %50)
  %52 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %53 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @DNV_DMA_CHAN_OFFSET, align 4
  %55 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %56 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %58 = call i32 @hsu_dma_probe(%struct.hsu_dma_chip* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %69

62:                                               ; preds = %31
  %63 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %64 = load %struct.mid8250*, %struct.mid8250** %4, align 8
  %65 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %64, i32 0, i32 0
  store %struct.pci_dev* %63, %struct.pci_dev** %65, align 8
  %66 = load i32, i32* @dnv_handle_irq, align 4
  %67 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %61, %29
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @FL_GET_BASE(i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i8* @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @hsu_dma_probe(%struct.hsu_dma_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
