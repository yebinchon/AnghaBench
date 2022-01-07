; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_pcie_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_pcie_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mobiveil_pcie = type { i32, i8*, i8*, i8*, i32, i8*, %struct.resource*, i8*, %struct.platform_device* }
%struct.resource = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"config_axi_slave\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"csr_axi_slave\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"apb_csr\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"apio-wins\00", align 1
@MAX_PIO_WINDOWS = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"ppio-wins\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to map IRQ: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mobiveil_pcie*)* @mobiveil_pcie_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mobiveil_pcie_parse_dt(%struct.mobiveil_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mobiveil_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.mobiveil_pcie* %0, %struct.mobiveil_pcie** %3, align 8
  %8 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %8, i32 0, i32 8
  %10 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %12, i32 0, i32 8
  %14 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  store %struct.platform_device* %14, %struct.platform_device** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %18, i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %20, %struct.resource** %7, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.resource*, %struct.resource** %7, align 8
  %23 = call i8* @devm_pci_remap_cfg_resource(%struct.device* %21, %struct.resource* %22)
  %24 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %25 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %27 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %26, i32 0, i32 7
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @IS_ERR(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %33 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %32, i32 0, i32 7
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @PTR_ERR(i8* %34)
  store i32 %35, i32* %2, align 4
  br label %120

36:                                               ; preds = %1
  %37 = load %struct.resource*, %struct.resource** %7, align 8
  %38 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %39 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %38, i32 0, i32 6
  store %struct.resource* %37, %struct.resource** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %41 = load i32, i32* @IORESOURCE_MEM, align 4
  %42 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %40, i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %42, %struct.resource** %7, align 8
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load %struct.resource*, %struct.resource** %7, align 8
  %45 = call i8* @devm_pci_remap_cfg_resource(%struct.device* %43, %struct.resource* %44)
  %46 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %47 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %49 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @IS_ERR(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %36
  %54 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %55 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %54, i32 0, i32 5
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @PTR_ERR(i8* %56)
  store i32 %57, i32* %2, align 4
  br label %120

58:                                               ; preds = %36
  %59 = load %struct.resource*, %struct.resource** %7, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %63 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %65 = load i32, i32* @IORESOURCE_MEM, align 4
  %66 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %64, i32 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %66, %struct.resource** %7, align 8
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.resource*, %struct.resource** %7, align 8
  %69 = call i8* @devm_pci_remap_cfg_resource(%struct.device* %67, %struct.resource* %68)
  %70 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %71 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %73 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @IS_ERR(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %58
  %78 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %79 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @PTR_ERR(i8* %80)
  store i32 %81, i32* %2, align 4
  br label %120

82:                                               ; preds = %58
  %83 = load %struct.device_node*, %struct.device_node** %6, align 8
  %84 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %85 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %84, i32 0, i32 2
  %86 = call i64 @of_property_read_u32(%struct.device_node* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i8*, i8** @MAX_PIO_WINDOWS, align 8
  %90 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %91 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %88, %82
  %93 = load %struct.device_node*, %struct.device_node** %6, align 8
  %94 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %95 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %94, i32 0, i32 1
  %96 = call i64 @of_property_read_u32(%struct.device_node* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i8*, i8** @MAX_PIO_WINDOWS, align 8
  %100 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %101 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %98, %92
  %103 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %104 = call i32 @platform_get_irq(%struct.platform_device* %103, i32 0)
  %105 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %106 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %108 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sle i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %102
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %114 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @ENODEV, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %120

119:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %111, %77, %53, %31
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_pci_remap_cfg_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
