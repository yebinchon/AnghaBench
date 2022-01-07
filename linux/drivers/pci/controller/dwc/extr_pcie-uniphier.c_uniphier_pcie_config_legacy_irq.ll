; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-uniphier.c_uniphier_pcie_config_legacy_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-uniphier.c_uniphier_pcie_config_legacy_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.uniphier_pcie_priv = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"legacy-interrupt-controller\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to get legacy-interrupt-controller node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Failed to get an IRQ entry in legacy-interrupt-controller\0A\00", align 1
@PCI_NUM_INTX = common dso_local global i32 0, align 4
@uniphier_intx_domain_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to get INTx domain\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@uniphier_pcie_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_port*)* @uniphier_pcie_config_legacy_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_pcie_config_legacy_irq(%struct.pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_port*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.uniphier_pcie_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.pcie_port* %0, %struct.pcie_port** %3, align 8
  %9 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %10 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %9)
  store %struct.dw_pcie* %10, %struct.dw_pcie** %4, align 8
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %12 = call %struct.uniphier_pcie_priv* @to_uniphier_pcie(%struct.dw_pcie* %11)
  store %struct.uniphier_pcie_priv* %12, %struct.uniphier_pcie_priv** %5, align 8
  %13 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %14 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %19, %struct.device_node** %7, align 8
  %20 = load %struct.device_node*, %struct.device_node** %7, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %24 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call i32 @dev_err(%struct.TYPE_2__* %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %74

29:                                               ; preds = %1
  %30 = load %struct.device_node*, %struct.device_node** %7, align 8
  %31 = call i32 @irq_of_parse_and_map(%struct.device_node* %30, i32 0)
  %32 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %33 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %35 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %29
  %39 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %40 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = call i32 @dev_err(%struct.TYPE_2__* %41, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %70

45:                                               ; preds = %29
  %46 = load %struct.device_node*, %struct.device_node** %7, align 8
  %47 = load i32, i32* @PCI_NUM_INTX, align 4
  %48 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %49 = call i32 @irq_domain_add_linear(%struct.device_node* %46, i32 %47, i32* @uniphier_intx_domain_ops, %struct.pcie_port* %48)
  %50 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %51 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %53 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %45
  %57 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %58 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = call i32 @dev_err(%struct.TYPE_2__* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %70

63:                                               ; preds = %45
  %64 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %65 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @uniphier_pcie_irq_handler, align 4
  %68 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %69 = call i32 @irq_set_chained_handler_and_data(i32 %66, i32 %67, %struct.pcie_port* %68)
  br label %70

70:                                               ; preds = %63, %56, %38
  %71 = load %struct.device_node*, %struct.device_node** %7, align 8
  %72 = call i32 @of_node_put(%struct.device_node* %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %22
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.uniphier_pcie_priv* @to_uniphier_pcie(%struct.dw_pcie*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.pcie_port*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.pcie_port*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
