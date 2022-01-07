; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-bcma.c_iproc_pcie_bcma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-bcma.c_iproc_pcie_bcma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { i64*, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.iproc_pcie = type { i32, %struct.TYPE_2__, i32, i32, i32, %struct.device* }
%struct.TYPE_2__ = type { i8*, i32, i64, i64 }
%struct.pci_host_bridge = type { i32 }

@resources = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPROC_PCIE_PAXB_BCMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no controller registers\0A\00", align 1
@SZ_128M = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"PCIe MEM space\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@iproc_pcie_bcma_map_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"PCIe controller setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_device*)* @iproc_pcie_bcma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pcie_bcma_probe(%struct.bcma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.iproc_pcie*, align 8
  %6 = alloca %struct.pci_host_bridge*, align 8
  %7 = alloca i32, align 4
  store %struct.bcma_device* %0, %struct.bcma_device** %3, align 8
  %8 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %9 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %8, i32 0, i32 3
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load i32, i32* @resources, align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device* %12, i32 64)
  store %struct.pci_host_bridge* %13, %struct.pci_host_bridge** %6, align 8
  %14 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %15 = icmp ne %struct.pci_host_bridge* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %93

19:                                               ; preds = %1
  %20 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %21 = call %struct.iproc_pcie* @pci_host_bridge_priv(%struct.pci_host_bridge* %20)
  store %struct.iproc_pcie* %21, %struct.iproc_pcie** %5, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %24 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %23, i32 0, i32 5
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load i32, i32* @IPROC_PCIE_PAXB_BCMA, align 4
  %26 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %27 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %29 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %32 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %34 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %19
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %93

42:                                               ; preds = %19
  %43 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %44 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %47 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %49 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %54 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store i64 %52, i64* %55, align 8
  %56 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %57 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SZ_128M, align 8
  %62 = add nsw i64 %60, %61
  %63 = sub nsw i64 %62, 1
  %64 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %65 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i64 %63, i64* %66, align 8
  %67 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %68 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %69, align 8
  %70 = load i32, i32* @IORESOURCE_MEM, align 4
  %71 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %72 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  %74 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %75 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %74, i32 0, i32 1
  %76 = call i32 @pci_add_resource(i32* @resources, %struct.TYPE_2__* %75)
  %77 = load i32, i32* @iproc_pcie_bcma_map_irq, align 4
  %78 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %79 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %81 = call i32 @iproc_pcie_setup(%struct.iproc_pcie* %80, i32* @resources)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %42
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i32 @pci_free_resource_list(i32* @resources)
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %93

89:                                               ; preds = %42
  %90 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %91 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %92 = call i32 @bcma_set_drvdata(%struct.bcma_device* %90, %struct.iproc_pcie* %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %84, %37, %16
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device*, i32) #1

declare dso_local %struct.iproc_pcie* @pci_host_bridge_priv(%struct.pci_host_bridge*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pci_add_resource(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @iproc_pcie_setup(%struct.iproc_pcie*, i32*) #1

declare dso_local i32 @pci_free_resource_list(i32*) #1

declare dso_local i32 @bcma_set_drvdata(%struct.bcma_device*, %struct.iproc_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
