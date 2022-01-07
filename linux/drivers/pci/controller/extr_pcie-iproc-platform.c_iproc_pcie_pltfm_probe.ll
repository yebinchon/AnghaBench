; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-platform.c_iproc_pcie_pltfm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-platform.c_iproc_pcie_pltfm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.iproc_pcie = type { i32, i32, i32, i32, i64, %struct.TYPE_2__, i32, i32, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }
%struct.pci_host_bridge = type { i32 }

@resources = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unable to obtain controller resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"unable to map controller registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"brcm,pcie-ob\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"brcm,pcie-ob-axi-offset\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"missing brcm,pcie-ob-axi-offset property\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"dma-ranges\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pcie-phy\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"unable to get PCI host bridge resources\0A\00", align 1
@of_irq_parse_and_map_pci = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"PCIe controller setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iproc_pcie_pltfm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pcie_pltfm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.iproc_pcie*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_host_bridge*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* @resources, align 4
  %18 = call i32 @LIST_HEAD(i32 %17)
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device* %19, i32 48)
  store %struct.pci_host_bridge* %20, %struct.pci_host_bridge** %9, align 8
  %21 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %9, align 8
  %22 = icmp ne %struct.pci_host_bridge* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %137

26:                                               ; preds = %1
  %27 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %9, align 8
  %28 = call %struct.iproc_pcie* @pci_host_bridge_priv(%struct.pci_host_bridge* %27)
  store %struct.iproc_pcie* %28, %struct.iproc_pcie** %5, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %31 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %30, i32 0, i32 8
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i64 @of_device_get_match_data(%struct.device* %32)
  %34 = trunc i64 %33 to i32
  %35 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %36 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.device_node*, %struct.device_node** %6, align 8
  %38 = call i32 @of_address_to_resource(%struct.device_node* %37, i32 0, %struct.resource* %7)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %2, align 4
  br label %137

45:                                               ; preds = %26
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @resource_size(%struct.resource* %7)
  %50 = call i32 @devm_pci_remap_cfgspace(%struct.device* %46, i32 %48, i32 %49)
  %51 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %52 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %54 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %45
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %137

62:                                               ; preds = %45
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %66 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load %struct.device_node*, %struct.device_node** %6, align 8
  %68 = call i64 @of_property_read_bool(%struct.device_node* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %62
  %71 = load %struct.device_node*, %struct.device_node** %6, align 8
  %72 = call i32 @of_property_read_u32(%struct.device_node* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %11)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %2, align 4
  br label %137

79:                                               ; preds = %70
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %82 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %85 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %79, %62
  %87 = load %struct.device_node*, %struct.device_node** %6, align 8
  %88 = call i64 @of_property_read_bool(%struct.device_node* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %89 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %90 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %89, i32 0, i32 4
  store i64 %88, i64* %90, align 8
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = call i32 @devm_phy_optional_get(%struct.device* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %93 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %94 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %96 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @IS_ERR(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %86
  %101 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %102 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @PTR_ERR(i32 %103)
  store i32 %104, i32* %2, align 4
  br label %137

105:                                              ; preds = %86
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = call i32 @devm_of_pci_get_host_bridge_resources(%struct.device* %106, i32 0, i32 255, i32* @resources, i32* %8)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = call i32 @dev_err(%struct.device* %111, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %2, align 4
  br label %137

114:                                              ; preds = %105
  %115 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %116 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  switch i32 %117, label %119 [
    i32 129, label %118
    i32 128, label %118
  ]

118:                                              ; preds = %114, %114
  br label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @of_irq_parse_and_map_pci, align 4
  %121 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %122 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %119, %118
  %124 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %125 = call i32 @iproc_pcie_setup(%struct.iproc_pcie* %124, i32* @resources)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = call i32 @dev_err(%struct.device* %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %131 = call i32 @pci_free_resource_list(i32* @resources)
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %2, align 4
  br label %137

133:                                              ; preds = %123
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %136 = call i32 @platform_set_drvdata(%struct.platform_device* %134, %struct.iproc_pcie* %135)
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %133, %128, %110, %100, %75, %57, %41, %23
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device*, i32) #1

declare dso_local %struct.iproc_pcie* @pci_host_bridge_priv(%struct.pci_host_bridge*) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_pci_remap_cfgspace(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @devm_phy_optional_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_of_pci_get_host_bridge_resources(%struct.device*, i32, i32, i32*, i32*) #1

declare dso_local i32 @iproc_pcie_setup(%struct.iproc_pcie*, i32*) #1

declare dso_local i32 @pci_free_resource_list(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iproc_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
