; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_allocate_domains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_allocate_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32, i32, i32 }
%struct.dw_pcie = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fwnode_handle = type { i32 }

@dw_pcie_msi_domain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to create IRQ domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@dw_pcie_msi_domain_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to create MSI domain\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dw_pcie_allocate_domains(%struct.pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_port*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  store %struct.pcie_port* %0, %struct.pcie_port** %3, align 8
  %6 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %7 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %6)
  store %struct.dw_pcie* %7, %struct.dw_pcie** %4, align 8
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %9 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.fwnode_handle* @of_node_to_fwnode(i32 %12)
  store %struct.fwnode_handle* %13, %struct.fwnode_handle** %5, align 8
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %15 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %16 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %19 = call i32 @irq_domain_create_linear(%struct.fwnode_handle* %14, i32 %17, i32* @dw_pcie_msi_domain_ops, %struct.pcie_port* %18)
  %20 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %21 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %23 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %1
  %27 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %28 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @dev_err(%struct.TYPE_2__* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %57

33:                                               ; preds = %1
  %34 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %35 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %36 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pci_msi_create_irq_domain(%struct.fwnode_handle* %34, i32* @dw_pcie_msi_domain_info, i32 %37)
  %39 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %40 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %42 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %33
  %46 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %47 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @dev_err(%struct.TYPE_2__* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %51 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @irq_domain_remove(i32 %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %45, %26
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.fwnode_handle* @of_node_to_fwnode(i32) #1

declare dso_local i32 @irq_domain_create_linear(%struct.fwnode_handle*, i32, i32*, %struct.pcie_port*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @pci_msi_create_irq_domain(%struct.fwnode_handle*, i32*, i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
