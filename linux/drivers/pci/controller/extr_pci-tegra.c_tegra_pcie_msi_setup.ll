; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_msi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_msi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.tegra_pcie = type { %struct.device*, %struct.tegra_msi }
%struct.device = type { i32 }
%struct.tegra_msi = type { i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.device* }
%struct.pci_host_bridge = type { %struct.TYPE_4__* }
%struct.platform_device = type { i32 }

@tegra_msi_setup_irq = common dso_local global i32 0, align 4
@tegra_msi_teardown_irq = common dso_local global i32 0, align 4
@INT_PCI_MSI_NR = common dso_local global i32 0, align 4
@msi_domain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to get IRQ: %d\0A\00", align 1
@tegra_pcie_msi_irq = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@tegra_msi_irq_chip = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to request IRQ: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to set DMA coherent mask: %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_ATTR_NO_KERNEL_MAPPING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"failed to allocate DMA memory for MSI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie*)* @tegra_pcie_msi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_msi_setup(%struct.tegra_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie*, align 8
  %4 = alloca %struct.pci_host_bridge*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.tegra_msi*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %3, align 8
  %9 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %10 = call %struct.pci_host_bridge* @pci_host_bridge_from_priv(%struct.tegra_pcie* %9)
  store %struct.pci_host_bridge* %10, %struct.pci_host_bridge** %4, align 8
  %11 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  %14 = call %struct.platform_device* @to_platform_device(%struct.device* %13)
  store %struct.platform_device* %14, %struct.platform_device** %5, align 8
  %15 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %15, i32 0, i32 1
  store %struct.tegra_msi* %16, %struct.tegra_msi** %6, align 8
  %17 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %7, align 8
  %20 = load %struct.tegra_msi*, %struct.tegra_msi** %6, align 8
  %21 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %20, i32 0, i32 5
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = load %struct.tegra_msi*, %struct.tegra_msi** %6, align 8
  %25 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store %struct.device* %23, %struct.device** %26, align 8
  %27 = load i32, i32* @tegra_msi_setup_irq, align 4
  %28 = load %struct.tegra_msi*, %struct.tegra_msi** %6, align 8
  %29 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @tegra_msi_teardown_irq, align 4
  %32 = load %struct.tegra_msi*, %struct.tegra_msi** %6, align 8
  %33 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @INT_PCI_MSI_NR, align 4
  %39 = load %struct.tegra_msi*, %struct.tegra_msi** %6, align 8
  %40 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %39, i32 0, i32 2
  %41 = call i32 @irq_domain_add_linear(i32 %37, i32 %38, i32* @msi_domain_ops, %struct.TYPE_4__* %40)
  %42 = load %struct.tegra_msi*, %struct.tegra_msi** %6, align 8
  %43 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.tegra_msi*, %struct.tegra_msi** %6, align 8
  %45 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %1
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %126

53:                                               ; preds = %1
  %54 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %55 = call i32 @platform_get_irq_byname(%struct.platform_device* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %120

62:                                               ; preds = %53
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.tegra_msi*, %struct.tegra_msi** %6, align 8
  %65 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.tegra_msi*, %struct.tegra_msi** %6, align 8
  %67 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @tegra_pcie_msi_irq, align 4
  %70 = load i32, i32* @IRQF_NO_THREAD, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tegra_msi_irq_chip, i32 0, i32 0), align 4
  %72 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %73 = call i32 @request_irq(i32 %68, i32 %69, i32 %70, i32 %71, %struct.tegra_pcie* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %62
  %77 = load %struct.device*, %struct.device** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %120

80:                                               ; preds = %62
  %81 = load %struct.device*, %struct.device** %7, align 8
  %82 = call i32 @DMA_BIT_MASK(i32 32)
  %83 = call i32 @dma_set_coherent_mask(%struct.device* %81, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.device*, %struct.device** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  br label %114

90:                                               ; preds = %80
  %91 = load %struct.device*, %struct.device** %7, align 8
  %92 = load i32, i32* @PAGE_SIZE, align 4
  %93 = load %struct.tegra_msi*, %struct.tegra_msi** %6, align 8
  %94 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %93, i32 0, i32 4
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = load i32, i32* @DMA_ATTR_NO_KERNEL_MAPPING, align 4
  %97 = call i32 @dma_alloc_attrs(%struct.device* %91, i32 %92, i32* %94, i32 %95, i32 %96)
  %98 = load %struct.tegra_msi*, %struct.tegra_msi** %6, align 8
  %99 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load %struct.tegra_msi*, %struct.tegra_msi** %6, align 8
  %101 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %90
  %105 = load %struct.device*, %struct.device** %7, align 8
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %114

109:                                              ; preds = %90
  %110 = load %struct.tegra_msi*, %struct.tegra_msi** %6, align 8
  %111 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %110, i32 0, i32 2
  %112 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %4, align 8
  %113 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %112, i32 0, i32 0
  store %struct.TYPE_4__* %111, %struct.TYPE_4__** %113, align 8
  store i32 0, i32* %2, align 4
  br label %126

114:                                              ; preds = %104, %86
  %115 = load %struct.tegra_msi*, %struct.tegra_msi** %6, align 8
  %116 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %119 = call i32 @free_irq(i32 %117, %struct.tegra_pcie* %118)
  br label %120

120:                                              ; preds = %114, %76, %58
  %121 = load %struct.tegra_msi*, %struct.tegra_msi** %6, align 8
  %122 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @irq_domain_remove(i32 %123)
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %120, %109, %48
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.pci_host_bridge* @pci_host_bridge_from_priv(%struct.tegra_pcie*) #1

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @irq_domain_add_linear(i32, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.tegra_pcie*) #1

declare dso_local i32 @dma_set_coherent_mask(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_alloc_attrs(%struct.device*, i32, i32*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.tegra_pcie*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
