; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-dra7xx.c_dra7xx_pcie_init_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-dra7xx.c_dra7xx_pcie_init_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dra7xx_pcie = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"No PCIe Intc node found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PCI_NUM_INTX = common dso_local global i32 0, align 4
@intx_domain_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get a INTx IRQ domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_port*)* @dra7xx_pcie_init_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dra7xx_pcie_init_irq_domain(%struct.pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_port*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dra7xx_pcie*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  store %struct.pcie_port* %0, %struct.pcie_port** %3, align 8
  %9 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %10 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %9)
  store %struct.dw_pcie* %10, %struct.dw_pcie** %4, align 8
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %12 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %15 = call %struct.dra7xx_pcie* @to_dra7xx_pcie(%struct.dw_pcie* %14)
  store %struct.dra7xx_pcie* %15, %struct.dra7xx_pcie** %6, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %7, align 8
  %19 = load %struct.device_node*, %struct.device_node** %7, align 8
  %20 = call %struct.device_node* @of_get_next_child(%struct.device_node* %19, i32* null)
  store %struct.device_node* %20, %struct.device_node** %8, align 8
  %21 = load %struct.device_node*, %struct.device_node** %8, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %47

28:                                               ; preds = %1
  %29 = load %struct.device_node*, %struct.device_node** %8, align 8
  %30 = load i32, i32* @PCI_NUM_INTX, align 4
  %31 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %32 = call i32 @irq_domain_add_linear(%struct.device_node* %29, i32 %30, i32* @intx_domain_ops, %struct.pcie_port* %31)
  %33 = load %struct.dra7xx_pcie*, %struct.dra7xx_pcie** %6, align 8
  %34 = getelementptr inbounds %struct.dra7xx_pcie, %struct.dra7xx_pcie* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.device_node*, %struct.device_node** %8, align 8
  %36 = call i32 @of_node_put(%struct.device_node* %35)
  %37 = load %struct.dra7xx_pcie*, %struct.dra7xx_pcie** %6, align 8
  %38 = getelementptr inbounds %struct.dra7xx_pcie, %struct.dra7xx_pcie* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %28
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %41, %23
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.dra7xx_pcie* @to_dra7xx_pcie(%struct.dw_pcie*) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.pcie_port*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
