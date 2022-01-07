; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_config_legacy_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_config_legacy_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keystone_pcie = type { i32*, %struct.irq_domain*, i64, %struct.device_node*, %struct.TYPE_2__* }
%struct.irq_domain = type { i32 }
%struct.device_node = type { i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"legacy-interrupt-controller\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"legacy-interrupt-controller node is absent\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"No IRQ entries in legacy-interrupt-controller\0A\00", align 1
@ks_pcie_legacy_irq_handler = common dso_local global i32 0, align 4
@PCI_NUM_INTX = common dso_local global i32 0, align 4
@ks_pcie_legacy_irq_domain_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to add irq domain for legacy irqs\0A\00", align 1
@INTx_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.keystone_pcie*)* @ks_pcie_config_legacy_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_pcie_config_legacy_irq(%struct.keystone_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.keystone_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.keystone_pcie* %0, %struct.keystone_pcie** %3, align 8
  %12 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %18 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %17, i32 0, i32 3
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %6, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %21, %struct.device_node** %7, align 8
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %1
  %25 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %26 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %107

30:                                               ; preds = %24
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @dev_warn(%struct.device* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %107

35:                                               ; preds = %1
  %36 = load %struct.device_node*, %struct.device_node** %7, align 8
  %37 = call i32 @of_irq_count(%struct.device_node* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %103

45:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %71, %45
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load %struct.device_node*, %struct.device_node** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @irq_of_parse_and_map(%struct.device_node* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %103

59:                                               ; preds = %50
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %62 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @ks_pcie_legacy_irq_handler, align 4
  %69 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %70 = call i32 @irq_set_chained_handler_and_data(i32 %67, i32 %68, %struct.keystone_pcie* %69)
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %46

74:                                               ; preds = %46
  %75 = load %struct.device_node*, %struct.device_node** %7, align 8
  %76 = load i32, i32* @PCI_NUM_INTX, align 4
  %77 = call %struct.irq_domain* @irq_domain_add_linear(%struct.device_node* %75, i32 %76, i32* @ks_pcie_legacy_irq_domain_ops, i32* null)
  store %struct.irq_domain* %77, %struct.irq_domain** %5, align 8
  %78 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %79 = icmp ne %struct.irq_domain* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %10, align 4
  br label %103

85:                                               ; preds = %74
  %86 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %87 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %88 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %87, i32 0, i32 1
  store %struct.irq_domain* %86, %struct.irq_domain** %88, align 8
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %99, %85
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @PCI_NUM_INTX, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @IRQ_ENABLE_SET(i32 %95)
  %97 = load i32, i32* @INTx_EN, align 4
  %98 = call i32 @ks_pcie_app_writel(%struct.keystone_pcie* %94, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %89

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %80, %56, %40
  %104 = load %struct.device_node*, %struct.device_node** %7, align 8
  %105 = call i32 @of_node_put(%struct.device_node* %104)
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %30, %29
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @of_irq_count(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.keystone_pcie*) #1

declare dso_local %struct.irq_domain* @irq_domain_add_linear(%struct.device_node*, i32, i32*, i32*) #1

declare dso_local i32 @ks_pcie_app_writel(%struct.keystone_pcie*, i32, i32) #1

declare dso_local i32 @IRQ_ENABLE_SET(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
