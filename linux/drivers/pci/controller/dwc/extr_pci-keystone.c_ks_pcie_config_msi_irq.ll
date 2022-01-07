; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_config_msi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_config_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keystone_pcie = type { i32, i64, %struct.device_node*, %struct.TYPE_2__* }
%struct.device_node = type { i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.irq_data = type { i32 }

@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"msi-interrupt-controller\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"msi-interrupt-controller node is absent\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"No IRQ entries in msi-interrupt-controller\0A\00", align 1
@ks_pcie_msi_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.keystone_pcie*)* @ks_pcie_config_msi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_pcie_config_msi_irq(%struct.keystone_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.keystone_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.irq_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.keystone_pcie* %0, %struct.keystone_pcie** %3, align 8
  %12 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %18 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %17, i32 0, i32 2
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %5, align 8
  %20 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %21 = call i32 @IS_ENABLED(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

24:                                               ; preds = %1
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %26, %struct.device_node** %6, align 8
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  %30 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %31 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %98

35:                                               ; preds = %29
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_warn(%struct.device* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %98

40:                                               ; preds = %24
  %41 = load %struct.device_node*, %struct.device_node** %6, align 8
  %42 = call i32 @of_irq_count(%struct.device_node* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %94

50:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %88, %50
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %51
  %56 = load %struct.device_node*, %struct.device_node** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @irq_of_parse_and_map(%struct.device_node* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %10, align 4
  br label %94

64:                                               ; preds = %55
  %65 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %66 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %9, align 4
  %71 = call %struct.irq_data* @irq_get_irq_data(i32 %70)
  store %struct.irq_data* %71, %struct.irq_data** %7, align 8
  %72 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %73 = icmp ne %struct.irq_data* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %94

77:                                               ; preds = %69
  %78 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %79 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %82 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %77, %64
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @ks_pcie_msi_irq_handler, align 4
  %86 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %87 = call i32 @irq_set_chained_handler_and_data(i32 %84, i32 %85, %struct.keystone_pcie* %86)
  br label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %51

91:                                               ; preds = %51
  %92 = load %struct.device_node*, %struct.device_node** %6, align 8
  %93 = call i32 @of_node_put(%struct.device_node* %92)
  store i32 0, i32* %2, align 4
  br label %98

94:                                               ; preds = %74, %61, %45
  %95 = load %struct.device_node*, %struct.device_node** %6, align 8
  %96 = call i32 @of_node_put(%struct.device_node* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %91, %35, %34, %23
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @of_irq_count(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.keystone_pcie*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
