; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_enable_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_enable_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.rcar_pcie = type { %struct.rcar_msi, %struct.device* }
%struct.rcar_msi = type { i64, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@rcar_msi_setup_irq = common dso_local global i32 0, align 4
@rcar_msi_setup_irqs = common dso_local global i32 0, align 4
@rcar_msi_teardown_irq = common dso_local global i32 0, align 4
@INT_PCI_MSI_NR = common dso_local global i32 0, align 4
@msi_domain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@rcar_pcie_msi_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@rcar_msi_irq_chip = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to request IRQ: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@MSIFE = common dso_local global i32 0, align 4
@PCIEMSIALR = common dso_local global i32 0, align 4
@PCIEMSIAUR = common dso_local global i32 0, align 4
@PCIEMSIIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_pcie*)* @rcar_pcie_enable_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_pcie_enable_msi(%struct.rcar_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rcar_msi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rcar_pcie* %0, %struct.rcar_pcie** %3, align 8
  %9 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %9, i32 0, i32 1
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %12, i32 0, i32 0
  store %struct.rcar_msi* %13, %struct.rcar_msi** %5, align 8
  %14 = load %struct.rcar_msi*, %struct.rcar_msi** %5, align 8
  %15 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %14, i32 0, i32 5
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.rcar_msi*, %struct.rcar_msi** %5, align 8
  %19 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  store %struct.device* %17, %struct.device** %20, align 8
  %21 = load i32, i32* @rcar_msi_setup_irq, align 4
  %22 = load %struct.rcar_msi*, %struct.rcar_msi** %5, align 8
  %23 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @rcar_msi_setup_irqs, align 4
  %26 = load %struct.rcar_msi*, %struct.rcar_msi** %5, align 8
  %27 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @rcar_msi_teardown_irq, align 4
  %30 = load %struct.rcar_msi*, %struct.rcar_msi** %5, align 8
  %31 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @INT_PCI_MSI_NR, align 4
  %37 = load %struct.rcar_msi*, %struct.rcar_msi** %5, align 8
  %38 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %37, i32 0, i32 4
  %39 = call i32 @irq_domain_add_linear(i32 %35, i32 %36, i32* @msi_domain_ops, %struct.TYPE_4__* %38)
  %40 = load %struct.rcar_msi*, %struct.rcar_msi** %5, align 8
  %41 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.rcar_msi*, %struct.rcar_msi** %5, align 8
  %43 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %1
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %138

51:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %62, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @INT_PCI_MSI_NR, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.rcar_msi*, %struct.rcar_msi** %5, align 8
  %58 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @irq_create_mapping(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %52

65:                                               ; preds = %52
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.rcar_msi*, %struct.rcar_msi** %5, align 8
  %68 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @rcar_pcie_msi_irq, align 4
  %71 = load i32, i32* @IRQF_SHARED, align 4
  %72 = load i32, i32* @IRQF_NO_THREAD, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rcar_msi_irq_chip, i32 0, i32 0), align 4
  %75 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %76 = call i32 @devm_request_irq(%struct.device* %66, i32 %69, i32 %70, i32 %73, i32 %74, %struct.rcar_pcie* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %134

83:                                               ; preds = %65
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.rcar_msi*, %struct.rcar_msi** %5, align 8
  %86 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @rcar_pcie_msi_irq, align 4
  %89 = load i32, i32* @IRQF_SHARED, align 4
  %90 = load i32, i32* @IRQF_NO_THREAD, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rcar_msi_irq_chip, i32 0, i32 0), align 4
  %93 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %94 = call i32 @devm_request_irq(%struct.device* %84, i32 %87, i32 %88, i32 %91, i32 %92, %struct.rcar_pcie* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %83
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %134

101:                                              ; preds = %83
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i64 @__get_free_pages(i32 %102, i32 0)
  %104 = load %struct.rcar_msi*, %struct.rcar_msi** %5, align 8
  %105 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.rcar_msi*, %struct.rcar_msi** %5, align 8
  %107 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %101
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %7, align 4
  br label %134

113:                                              ; preds = %101
  %114 = load %struct.rcar_msi*, %struct.rcar_msi** %5, align 8
  %115 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = call i32 @virt_to_phys(i8* %117)
  store i32 %118, i32* %6, align 4
  %119 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @lower_32_bits(i32 %120)
  %122 = load i32, i32* @MSIFE, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @PCIEMSIALR, align 4
  %125 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %119, i32 %123, i32 %124)
  %126 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @upper_32_bits(i32 %127)
  %129 = load i32, i32* @PCIEMSIAUR, align 4
  %130 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %126, i32 %128, i32 %129)
  %131 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %132 = load i32, i32* @PCIEMSIIER, align 4
  %133 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %131, i32 -1, i32 %132)
  store i32 0, i32* %2, align 4
  br label %138

134:                                              ; preds = %110, %97, %79
  %135 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %136 = call i32 @rcar_pcie_unmap_msi(%struct.rcar_pcie* %135)
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %113, %46
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @irq_domain_add_linear(i32, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.rcar_pcie*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @rcar_pci_write_reg(%struct.rcar_pcie*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @rcar_pcie_unmap_msi(%struct.rcar_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
