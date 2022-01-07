; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-plat.c_dw_plat_pcie_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-plat.c_dw_plat_pcie_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.dw_plat_pcie = type { i32, %struct.dw_pcie* }
%struct.dw_pcie = type { i32, i32*, %struct.device* }
%struct.resource = type { i32 }
%struct.of_device_id = type { i64 }
%struct.dw_plat_pcie_of_data = type { i64 }

@dw_plat_pcie_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dw_pcie_ops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dbi\00", align 1
@CONFIG_PCIE_DW_PLAT_HOST = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CONFIG_PCIE_DW_PLAT_EP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"INVALID device type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dw_plat_pcie_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_plat_pcie_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dw_plat_pcie*, align 8
  %6 = alloca %struct.dw_pcie*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.of_device_id*, align 8
  %10 = alloca %struct.dw_plat_pcie_of_data*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load i32, i32* @dw_plat_pcie_of_match, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.of_device_id* @of_match_device(i32 %14, %struct.device* %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %9, align 8
  %17 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %18 = icmp ne %struct.of_device_id* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %133

22:                                               ; preds = %1
  %23 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %24 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.dw_plat_pcie_of_data*
  store %struct.dw_plat_pcie_of_data* %26, %struct.dw_plat_pcie_of_data** %10, align 8
  %27 = load %struct.dw_plat_pcie_of_data*, %struct.dw_plat_pcie_of_data** %10, align 8
  %28 = getelementptr inbounds %struct.dw_plat_pcie_of_data, %struct.dw_plat_pcie_of_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @devm_kzalloc(%struct.device* %31, i32 16, i32 %32)
  %34 = bitcast i8* %33 to %struct.dw_plat_pcie*
  store %struct.dw_plat_pcie* %34, %struct.dw_plat_pcie** %5, align 8
  %35 = load %struct.dw_plat_pcie*, %struct.dw_plat_pcie** %5, align 8
  %36 = icmp ne %struct.dw_plat_pcie* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %22
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %133

40:                                               ; preds = %22
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @devm_kzalloc(%struct.device* %41, i32 24, i32 %42)
  %44 = bitcast i8* %43 to %struct.dw_pcie*
  store %struct.dw_pcie* %44, %struct.dw_pcie** %6, align 8
  %45 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %46 = icmp ne %struct.dw_pcie* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %133

50:                                               ; preds = %40
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %53 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %52, i32 0, i32 2
  store %struct.device* %51, %struct.device** %53, align 8
  %54 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %55 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %54, i32 0, i32 1
  store i32* @dw_pcie_ops, i32** %55, align 8
  %56 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %57 = load %struct.dw_plat_pcie*, %struct.dw_plat_pcie** %5, align 8
  %58 = getelementptr inbounds %struct.dw_plat_pcie, %struct.dw_plat_pcie* %57, i32 0, i32 1
  store %struct.dw_pcie* %56, %struct.dw_pcie** %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.dw_plat_pcie*, %struct.dw_plat_pcie** %5, align 8
  %61 = getelementptr inbounds %struct.dw_plat_pcie, %struct.dw_plat_pcie* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load i32, i32* @IORESOURCE_MEM, align 4
  %64 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %62, i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %64, %struct.resource** %7, align 8
  %65 = load %struct.resource*, %struct.resource** %7, align 8
  %66 = icmp ne %struct.resource* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %50
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load i32, i32* @IORESOURCE_MEM, align 4
  %70 = call %struct.resource* @platform_get_resource(%struct.platform_device* %68, i32 %69, i32 0)
  store %struct.resource* %70, %struct.resource** %7, align 8
  br label %71

71:                                               ; preds = %67, %50
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load %struct.resource*, %struct.resource** %7, align 8
  %74 = call i32 @devm_ioremap_resource(%struct.device* %72, %struct.resource* %73)
  %75 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %76 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %78 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @IS_ERR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %84 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @PTR_ERR(i32 %85)
  store i32 %86, i32* %2, align 4
  br label %133

87:                                               ; preds = %71
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = load %struct.dw_plat_pcie*, %struct.dw_plat_pcie** %5, align 8
  %90 = call i32 @platform_set_drvdata(%struct.platform_device* %88, %struct.dw_plat_pcie* %89)
  %91 = load %struct.dw_plat_pcie*, %struct.dw_plat_pcie** %5, align 8
  %92 = getelementptr inbounds %struct.dw_plat_pcie, %struct.dw_plat_pcie* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %126 [
    i32 128, label %94
    i32 129, label %110
  ]

94:                                               ; preds = %87
  %95 = load i32, i32* @CONFIG_PCIE_DW_PLAT_HOST, align 4
  %96 = call i32 @IS_ENABLED(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %133

101:                                              ; preds = %94
  %102 = load %struct.dw_plat_pcie*, %struct.dw_plat_pcie** %5, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = call i32 @dw_plat_add_pcie_port(%struct.dw_plat_pcie* %102, %struct.platform_device* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %2, align 4
  br label %133

109:                                              ; preds = %101
  br label %132

110:                                              ; preds = %87
  %111 = load i32, i32* @CONFIG_PCIE_DW_PLAT_EP, align 4
  %112 = call i32 @IS_ENABLED(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @ENODEV, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %133

117:                                              ; preds = %110
  %118 = load %struct.dw_plat_pcie*, %struct.dw_plat_pcie** %5, align 8
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = call i32 @dw_plat_add_pcie_ep(%struct.dw_plat_pcie* %118, %struct.platform_device* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %133

125:                                              ; preds = %117
  br label %132

126:                                              ; preds = %87
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = load %struct.dw_plat_pcie*, %struct.dw_plat_pcie** %5, align 8
  %129 = getelementptr inbounds %struct.dw_plat_pcie, %struct.dw_plat_pcie* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %126, %125, %109
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %123, %114, %107, %98, %82, %47, %37, %19
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dw_plat_pcie*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @dw_plat_add_pcie_port(%struct.dw_plat_pcie*, %struct.platform_device*) #1

declare dso_local i32 @dw_plat_add_pcie_ep(%struct.dw_plat_pcie*, %struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
