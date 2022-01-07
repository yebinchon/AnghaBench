; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_init_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_init_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pcie_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"no PCIe Intc node found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PCI_NUM_INTX = common dso_local global i32 0, align 4
@intx_domain_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get INTx IRQ domain\0A\00", align 1
@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pcie_port*, %struct.device_node*)* @mtk_pcie_init_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_init_irq_domain(%struct.mtk_pcie_port* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_pcie_port*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.mtk_pcie_port* %0, %struct.mtk_pcie_port** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %9 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call %struct.device_node* @of_get_next_child(%struct.device_node* %14, i32* null)
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = load %struct.device_node*, %struct.device_node** %7, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %54

23:                                               ; preds = %2
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = load i32, i32* @PCI_NUM_INTX, align 4
  %26 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %4, align 8
  %27 = call i32 @irq_domain_add_linear(%struct.device_node* %24, i32 %25, i32* @intx_domain_ops, %struct.mtk_pcie_port* %26)
  %28 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %4, align 8
  %29 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.device_node*, %struct.device_node** %7, align 8
  %31 = call i32 @of_node_put(%struct.device_node* %30)
  %32 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %4, align 8
  %33 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %23
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %54

41:                                               ; preds = %23
  %42 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %43 = call i64 @IS_ENABLED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %4, align 8
  %47 = call i32 @mtk_pcie_allocate_msi_domains(%struct.mtk_pcie_port* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %41
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %50, %36, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.mtk_pcie_port*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @mtk_pcie_allocate_msi_domains(%struct.mtk_pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
