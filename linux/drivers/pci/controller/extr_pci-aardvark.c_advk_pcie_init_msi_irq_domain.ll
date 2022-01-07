; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_init_msi_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_init_msi_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advk_pcie = type { i32, i32, i32, %struct.msi_domain_info, %struct.irq_chip, %struct.irq_chip, i32, %struct.TYPE_2__* }
%struct.msi_domain_info = type { i32, %struct.irq_chip* }
%struct.irq_chip = type { i8*, i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@advk_msi_irq_compose_msi_msg = common dso_local global i32 0, align 4
@advk_msi_set_affinity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"advk-MSI\00", align 1
@MSI_FLAG_USE_DEF_DOM_OPS = common dso_local global i32 0, align 4
@MSI_FLAG_USE_DEF_CHIP_OPS = common dso_local global i32 0, align 4
@MSI_FLAG_MULTI_PCI_MSI = common dso_local global i32 0, align 4
@PCIE_MSI_ADDR_LOW_REG = common dso_local global i32 0, align 4
@PCIE_MSI_ADDR_HIGH_REG = common dso_local global i32 0, align 4
@MSI_IRQ_NUM = common dso_local global i32 0, align 4
@advk_msi_domain_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.advk_pcie*)* @advk_pcie_init_msi_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advk_pcie_init_msi_irq_domain(%struct.advk_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.advk_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.irq_chip*, align 8
  %7 = alloca %struct.irq_chip*, align 8
  %8 = alloca %struct.msi_domain_info*, align 8
  %9 = alloca i32, align 4
  store %struct.advk_pcie* %0, %struct.advk_pcie** %3, align 8
  %10 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %10, i32 0, i32 7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %18 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %17, i32 0, i32 6
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %21 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %20, i32 0, i32 5
  store %struct.irq_chip* %21, %struct.irq_chip** %6, align 8
  %22 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %23 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = load i32, i32* @advk_msi_irq_compose_msi_msg, align 4
  %25 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %26 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @advk_msi_set_affinity, align 4
  %28 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %29 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %31 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %30, i32 0, i32 4
  store %struct.irq_chip* %31, %struct.irq_chip** %7, align 8
  %32 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %33 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  %34 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %35 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %34, i32 0, i32 3
  store %struct.msi_domain_info* %35, %struct.msi_domain_info** %8, align 8
  %36 = load i32, i32* @MSI_FLAG_USE_DEF_DOM_OPS, align 4
  %37 = load i32, i32* @MSI_FLAG_USE_DEF_CHIP_OPS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MSI_FLAG_MULTI_PCI_MSI, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.msi_domain_info*, %struct.msi_domain_info** %8, align 8
  %42 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %44 = load %struct.msi_domain_info*, %struct.msi_domain_info** %8, align 8
  %45 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %44, i32 0, i32 1
  store %struct.irq_chip* %43, %struct.irq_chip** %45, align 8
  %46 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %47 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %46, i32 0, i32 2
  %48 = call i32 @virt_to_phys(i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @lower_32_bits(i32 %50)
  %52 = load i32, i32* @PCIE_MSI_ADDR_LOW_REG, align 4
  %53 = call i32 @advk_writel(%struct.advk_pcie* %49, i32 %51, i32 %52)
  %54 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @upper_32_bits(i32 %55)
  %57 = load i32, i32* @PCIE_MSI_ADDR_HIGH_REG, align 4
  %58 = call i32 @advk_writel(%struct.advk_pcie* %54, i32 %56, i32 %57)
  %59 = load i32, i32* @MSI_IRQ_NUM, align 4
  %60 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %61 = call i32 @irq_domain_add_linear(i32* null, i32 %59, i32* @advk_msi_domain_ops, %struct.advk_pcie* %60)
  %62 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %63 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %65 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %1
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %93

71:                                               ; preds = %1
  %72 = load %struct.device_node*, %struct.device_node** %5, align 8
  %73 = call i32 @of_node_to_fwnode(%struct.device_node* %72)
  %74 = load %struct.msi_domain_info*, %struct.msi_domain_info** %8, align 8
  %75 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %76 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @pci_msi_create_irq_domain(i32 %73, %struct.msi_domain_info* %74, i32 %77)
  %79 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %80 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %82 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %71
  %86 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %87 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @irq_domain_remove(i32 %88)
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %85, %68
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @virt_to_phys(i32*) #1

declare dso_local i32 @advk_writel(%struct.advk_pcie*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @irq_domain_add_linear(i32*, i32, i32*, %struct.advk_pcie*) #1

declare dso_local i32 @pci_msi_create_irq_domain(i32, %struct.msi_domain_info*, i32) #1

declare dso_local i32 @of_node_to_fwnode(%struct.device_node*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
