; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx.c_xilinx_pcie_init_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx.c_xilinx_pcie_init_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_pcie_port = type { i8*, i8*, %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"No PCIe Intc node found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PCI_NUM_INTX = common dso_local global i32 0, align 4
@intx_domain_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get a INTx IRQ domain\0A\00", align 1
@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@XILINX_NUM_MSI_IRQS = common dso_local global i32 0, align 4
@msi_domain_ops = common dso_local global i32 0, align 4
@xilinx_pcie_msi_chip = common dso_local global %struct.xilinx_pcie_port zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to get a MSI IRQ domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilinx_pcie_port*)* @xilinx_pcie_init_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_pcie_init_irq_domain(%struct.xilinx_pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xilinx_pcie_port*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.xilinx_pcie_port* %0, %struct.xilinx_pcie_port** %3, align 8
  %8 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %3, align 8
  %9 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %8, i32 0, i32 2
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call %struct.device_node* @of_get_next_child(%struct.device_node* %14, i32* null)
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %69

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = load i32, i32* @PCI_NUM_INTX, align 4
  %26 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %3, align 8
  %27 = call i8* @irq_domain_add_linear(%struct.device_node* %24, i32 %25, i32* @intx_domain_ops, %struct.xilinx_pcie_port* %26)
  %28 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %3, align 8
  %29 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.device_node*, %struct.device_node** %6, align 8
  %31 = call i32 @of_node_put(%struct.device_node* %30)
  %32 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %3, align 8
  %33 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %23
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %69

41:                                               ; preds = %23
  %42 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %43 = call i64 @IS_ENABLED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = load i32, i32* @XILINX_NUM_MSI_IRQS, align 4
  %48 = call i8* @irq_domain_add_linear(%struct.device_node* %46, i32 %47, i32* @msi_domain_ops, %struct.xilinx_pcie_port* @xilinx_pcie_msi_chip)
  %49 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %3, align 8
  %50 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %3, align 8
  %52 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %45
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %69

60:                                               ; preds = %45
  %61 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %3, align 8
  %62 = call i32 @xilinx_pcie_enable_msi(%struct.xilinx_pcie_port* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %41
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %65, %55, %36, %18
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.xilinx_pcie_port*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @xilinx_pcie_enable_msi(%struct.xilinx_pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
