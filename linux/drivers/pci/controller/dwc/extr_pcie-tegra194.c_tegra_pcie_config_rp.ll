; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_config_rp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_config_rp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_dw = type { i32, i32, %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { %struct.pcie_port }
%struct.pcie_port = type { i32 }
%struct.device = type { i32 }

@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to get MSI interrupt\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to get runtime sync for PCIe dev: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to configure sideband pins: %d\0A\00", align 1
@ENOMEDIUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%pOFP\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to create debugfs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie_dw*)* @tegra_pcie_config_rp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_config_rp(%struct.tegra_pcie_dw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie_dw*, align 8
  %4 = alloca %struct.pcie_port*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_pcie_dw* %0, %struct.tegra_pcie_dw** %3, align 8
  %8 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.pcie_port* %10, %struct.pcie_port** %4, align 8
  %11 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %11, i32 0, i32 3
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %15 = call i64 @IS_ENABLED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @of_irq_get_byname(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.pcie_port*, %struct.pcie_port** %4, align 8
  %23 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.pcie_port*, %struct.pcie_port** %4, align 8
  %25 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %17
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %108

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 @pm_runtime_enable(%struct.device* %35)
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call i32 @pm_runtime_get_sync(%struct.device* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %104

45:                                               ; preds = %34
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = call i32 @pinctrl_pm_select_default_state(%struct.device* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %101

54:                                               ; preds = %45
  %55 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %56 = call i32 @tegra_pcie_init_controller(%struct.tegra_pcie_dw* %55)
  %57 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %57, i32 0, i32 2
  %59 = call i32 @tegra_pcie_dw_link_up(%struct.TYPE_2__* %58)
  %60 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %61 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* @ENOMEDIUM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %98

69:                                               ; preds = %54
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @devm_kasprintf(%struct.device* %70, i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  store i8* %75, i8** %6, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %69
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %98

81:                                               ; preds = %69
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @debugfs_create_dir(i8* %82, i32* null)
  %84 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %85 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %87 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %81
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %96

93:                                               ; preds = %81
  %94 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %95 = call i32 @init_debugfs(%struct.tegra_pcie_dw* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %108

98:                                               ; preds = %78, %66
  %99 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %100 = call i32 @tegra_pcie_deinit_controller(%struct.tegra_pcie_dw* %99)
  br label %101

101:                                              ; preds = %98, %50
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = call i32 @pm_runtime_put_sync(%struct.device* %102)
  br label %104

104:                                              ; preds = %101, %41
  %105 = load %struct.device*, %struct.device** %5, align 8
  %106 = call i32 @pm_runtime_disable(%struct.device* %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %104, %96, %28
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @of_irq_get_byname(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pinctrl_pm_select_default_state(%struct.device*) #1

declare dso_local i32 @tegra_pcie_init_controller(%struct.tegra_pcie_dw*) #1

declare dso_local i32 @tegra_pcie_dw_link_up(%struct.TYPE_2__*) #1

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @init_debugfs(%struct.tegra_pcie_dw*) #1

declare dso_local i32 @tegra_pcie_deinit_controller(%struct.tegra_pcie_dw*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
