; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_get_xbar_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_get_xbar_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"nvidia,tegra186-pcie\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"4x1, 1x1 configuration\0A\00", align 1
@AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_401 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"2x1, 1X1, 1x1 configuration\0A\00", align 1
@AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_211 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"1x1, 1x1, 1x1 configuration\0A\00", align 1
@AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_111 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [85 x i8] c"wrong configuration updated in DT, switching to default 2x1, 1x1, 1x1 configuration\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"nvidia,tegra124-pcie\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"nvidia,tegra210-pcie\00", align 1
@AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_X4_X1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"2x1, 1x1 configuration\0A\00", align 1
@AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_X2_X1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"nvidia,tegra30-pcie\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"4x1, 2x1 configuration\0A\00", align 1
@AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_420 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"2x3 configuration\0A\00", align 1
@AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_222 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"4x1, 1x2 configuration\0A\00", align 1
@AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_411 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"nvidia,tegra20-pcie\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"single-mode configuration\0A\00", align 1
@AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_SINGLE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"dual-mode configuration\0A\00", align 1
@AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_DUAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie*, i32, i32*)* @tegra_pcie_get_xbar_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_get_xbar_config(%struct.tegra_pcie* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_pcie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.device_node*, align 8
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.tegra_pcie*, %struct.tegra_pcie** %5, align 8
  %11 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.device*, %struct.device** %8, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %9, align 8
  %16 = load %struct.device_node*, %struct.device_node** %9, align 8
  %17 = call i64 @of_device_is_compatible(%struct.device_node* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %36 [
    i32 65540, label %21
    i32 65794, label %26
    i32 65793, label %31
  ]

21:                                               ; preds = %19
  %22 = load %struct.device*, %struct.device** %8, align 8
  %23 = call i32 @dev_info(%struct.device* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_401, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  store i32 0, i32* %4, align 4
  br label %107

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %8, align 8
  %28 = call i32 @dev_info(%struct.device* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_211, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %107

31:                                               ; preds = %19
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = call i32 @dev_info(%struct.device* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* @AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_111, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  store i32 0, i32* %4, align 4
  br label %107

36:                                               ; preds = %19
  %37 = load %struct.device*, %struct.device** %8, align 8
  %38 = call i32 @dev_info(%struct.device* %37, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32, i32* @AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_211, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %107

41:                                               ; preds = %3
  %42 = load %struct.device_node*, %struct.device_node** %9, align 8
  %43 = call i64 @of_device_is_compatible(%struct.device_node* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load %struct.device_node*, %struct.device_node** %9, align 8
  %47 = call i64 @of_device_is_compatible(%struct.device_node* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %6, align 4
  switch i32 %50, label %61 [
    i32 260, label %51
    i32 258, label %56
  ]

51:                                               ; preds = %49
  %52 = load %struct.device*, %struct.device** %8, align 8
  %53 = call i32 @dev_info(%struct.device* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_X4_X1, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  store i32 0, i32* %4, align 4
  br label %107

56:                                               ; preds = %49
  %57 = load %struct.device*, %struct.device** %8, align 8
  %58 = call i32 @dev_info(%struct.device* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %59 = load i32, i32* @AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_X2_X1, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %107

61:                                               ; preds = %49
  br label %103

62:                                               ; preds = %45
  %63 = load %struct.device_node*, %struct.device_node** %9, align 8
  %64 = call i64 @of_device_is_compatible(%struct.device_node* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  switch i32 %67, label %83 [
    i32 516, label %68
    i32 131586, label %73
    i32 65796, label %78
  ]

68:                                               ; preds = %66
  %69 = load %struct.device*, %struct.device** %8, align 8
  %70 = call i32 @dev_info(%struct.device* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %71 = load i32, i32* @AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_420, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %4, align 4
  br label %107

73:                                               ; preds = %66
  %74 = load %struct.device*, %struct.device** %8, align 8
  %75 = call i32 @dev_info(%struct.device* %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %76 = load i32, i32* @AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_222, align 4
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  store i32 0, i32* %4, align 4
  br label %107

78:                                               ; preds = %66
  %79 = load %struct.device*, %struct.device** %8, align 8
  %80 = call i32 @dev_info(%struct.device* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %81 = load i32, i32* @AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_411, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  store i32 0, i32* %4, align 4
  br label %107

83:                                               ; preds = %66
  br label %102

84:                                               ; preds = %62
  %85 = load %struct.device_node*, %struct.device_node** %9, align 8
  %86 = call i64 @of_device_is_compatible(%struct.device_node* %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  switch i32 %89, label %100 [
    i32 4, label %90
    i32 514, label %95
  ]

90:                                               ; preds = %88
  %91 = load %struct.device*, %struct.device** %8, align 8
  %92 = call i32 @dev_info(%struct.device* %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %93 = load i32, i32* @AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_SINGLE, align 4
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  store i32 0, i32* %4, align 4
  br label %107

95:                                               ; preds = %88
  %96 = load %struct.device*, %struct.device** %8, align 8
  %97 = call i32 @dev_info(%struct.device* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %98 = load i32, i32* @AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_DUAL, align 4
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  store i32 0, i32* %4, align 4
  br label %107

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %84
  br label %102

102:                                              ; preds = %101, %83
  br label %103

103:                                              ; preds = %102, %61
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %104, %95, %90, %78, %73, %68, %56, %51, %36, %31, %26, %21
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
