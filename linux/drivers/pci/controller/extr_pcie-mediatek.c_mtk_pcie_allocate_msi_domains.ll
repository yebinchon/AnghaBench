; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_allocate_msi_domains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_allocate_msi_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pcie_port = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.fwnode_handle = type { i32 }

@MTK_MSI_IRQS_NUM = common dso_local global i32 0, align 4
@msi_domain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mtk_msi_domain_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to create MSI domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pcie_port*)* @mtk_pcie_allocate_msi_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_allocate_msi_domains(%struct.mtk_pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_pcie_port*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  store %struct.mtk_pcie_port* %0, %struct.mtk_pcie_port** %3, align 8
  %5 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %6 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.fwnode_handle* @of_node_to_fwnode(i32 %11)
  store %struct.fwnode_handle* %12, %struct.fwnode_handle** %4, align 8
  %13 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %13, i32 0, i32 3
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %17 = load i32, i32* @MTK_MSI_IRQS_NUM, align 4
  %18 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %19 = call i32 @irq_domain_create_linear(%struct.fwnode_handle* %16, i32 %17, i32* @msi_domain_ops, %struct.mtk_pcie_port* %18)
  %20 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %21 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %23 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %1
  %27 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %28 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32 @dev_err(%struct.TYPE_4__* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %61

35:                                               ; preds = %1
  %36 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %37 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %38 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pci_msi_create_irq_domain(%struct.fwnode_handle* %36, i32* @mtk_msi_domain_info, i32 %39)
  %41 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %42 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %44 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %35
  %48 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %49 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = call i32 @dev_err(%struct.TYPE_4__* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %55 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @irq_domain_remove(i32 %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %61

60:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %47, %26
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.fwnode_handle* @of_node_to_fwnode(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @irq_domain_create_linear(%struct.fwnode_handle*, i32, i32*, %struct.mtk_pcie_port*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @pci_msi_create_irq_domain(%struct.fwnode_handle*, i32*, i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
