; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_pcie_port_enable_irq_vec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_pcie_port_enable_irq_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCIE_PORT_MAX_MSI_ENTRIES = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_PME = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_HP = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_BWNOTIF = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_PME_SHIFT = common dso_local global i64 0, align 8
@PCIE_PORT_SERVICE_HP_SHIFT = common dso_local global i64 0, align 8
@PCIE_PORT_SERVICE_BWNOTIF_SHIFT = common dso_local global i64 0, align 8
@PCIE_PORT_SERVICE_AER = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_AER_SHIFT = common dso_local global i64 0, align 8
@PCIE_PORT_SERVICE_DPC = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_DPC_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32*, i32)* @pcie_port_enable_irq_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_port_enable_irq_vec(%struct.pci_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = load i32, i32* @PCIE_PORT_MAX_MSI_ENTRIES, align 4
  %16 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %17 = load i32, i32* @PCI_IRQ_MSI, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %14, i32 1, i32 %15, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %105

24:                                               ; preds = %3
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @pcie_message_numbers(%struct.pci_dev* %25, i32 %26, i32* %11, i32* %12, i32* %13)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %32)
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %105

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %47 = load i32, i32* @PCI_IRQ_MSI, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %43, i32 %44, i32 %45, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %105

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @PCIE_PORT_SERVICE_PME, align 4
  %58 = load i32, i32* @PCIE_PORT_SERVICE_HP, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @PCIE_PORT_SERVICE_BWNOTIF, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %56, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %55
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @pci_irq_vector(%struct.pci_dev* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i64, i64* @PCIE_PORT_SERVICE_PME_SHIFT, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i64, i64* @PCIE_PORT_SERVICE_HP_SHIFT, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load i64, i64* @PCIE_PORT_SERVICE_BWNOTIF_SHIFT, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %64, %55
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @PCIE_PORT_SERVICE_AER, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @pci_irq_vector(%struct.pci_dev* %86, i32 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = load i64, i64* @PCIE_PORT_SERVICE_AER_SHIFT, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %85, %80
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @PCIE_PORT_SERVICE_DPC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @pci_irq_vector(%struct.pci_dev* %98, i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load i64, i64* @PCIE_PORT_SERVICE_DPC_SHIFT, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 %100, i32* %103, align 4
  br label %104

104:                                              ; preds = %97, %92
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %52, %31, %22
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pcie_message_numbers(%struct.pci_dev*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
