; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pcie_init_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pcie_init_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_pcibus_device = type { %struct.TYPE_5__*, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i8*, %struct.hv_pcibus_device*, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32 }

@hv_msi_irq_chip = common dso_local global i32 0, align 4
@hv_msi_ops = common dso_local global i32 0, align 4
@MSI_FLAG_USE_DEF_DOM_OPS = common dso_local global i32 0, align 4
@MSI_FLAG_USE_DEF_CHIP_OPS = common dso_local global i32 0, align 4
@MSI_FLAG_MULTI_PCI_MSI = common dso_local global i32 0, align 4
@MSI_FLAG_PCI_MSIX = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@x86_vector_domain = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to build an MSI IRQ domain\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_pcibus_device*)* @hv_pcie_init_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_pcie_init_irq_domain(%struct.hv_pcibus_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_pcibus_device*, align 8
  store %struct.hv_pcibus_device* %0, %struct.hv_pcibus_device** %3, align 8
  %4 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %5 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  store i32* @hv_msi_irq_chip, i32** %6, align 8
  %7 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %8 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  store i32* @hv_msi_ops, i32** %9, align 8
  %10 = load i32, i32* @MSI_FLAG_USE_DEF_DOM_OPS, align 4
  %11 = load i32, i32* @MSI_FLAG_USE_DEF_CHIP_OPS, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MSI_FLAG_MULTI_PCI_MSI, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MSI_FLAG_PCI_MSIX, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %18 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @handle_edge_irq, align 4
  %21 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %22 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 8
  %24 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %25 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %28 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %29 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store %struct.hv_pcibus_device* %27, %struct.hv_pcibus_device** %30, align 8
  %31 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %32 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %36 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %35, i32 0, i32 2
  %37 = load i32, i32* @x86_vector_domain, align 4
  %38 = call i32 @pci_msi_create_irq_domain(i32 %34, %struct.TYPE_6__* %36, i32 %37)
  %39 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %40 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %42 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %1
  %46 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %47 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %45
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @pci_msi_create_irq_domain(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
