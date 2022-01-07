; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-uniphier.c_uniphier_pcie_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-uniphier.c_uniphier_pcie_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.uniphier_pcie_priv = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, %struct.device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dw_pcie_ops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dbi\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pcie-phy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_pcie_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_pcie_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.uniphier_pcie_priv*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.uniphier_pcie_priv* @devm_kzalloc(%struct.device* %10, i32 40, i32 %11)
  store %struct.uniphier_pcie_priv* %12, %struct.uniphier_pcie_priv** %5, align 8
  %13 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %14 = icmp ne %struct.uniphier_pcie_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %125

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %21 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store %struct.device* %19, %struct.device** %22, align 8
  %23 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %24 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32* @dw_pcie_ops, i32** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %26, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %28, %struct.resource** %6, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.resource*, %struct.resource** %6, align 8
  %31 = call i32 @devm_pci_remap_cfg_resource(%struct.device* %29, %struct.resource* %30)
  %32 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %33 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %36 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %18
  %42 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %43 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %125

47:                                               ; preds = %18
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load i32, i32* @IORESOURCE_MEM, align 4
  %50 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %48, i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %50, %struct.resource** %6, align 8
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.resource*, %struct.resource** %6, align 8
  %53 = call i32 @devm_ioremap_resource(%struct.device* %51, %struct.resource* %52)
  %54 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %55 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %57 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %47
  %62 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %63 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %2, align 4
  br label %125

66:                                               ; preds = %47
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i32 @devm_clk_get(%struct.device* %67, i32* null)
  %69 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %70 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %72 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %78 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %125

81:                                               ; preds = %66
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @devm_reset_control_get_shared(%struct.device* %82, i32* null)
  %84 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %85 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %87 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @IS_ERR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %81
  %92 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %93 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @PTR_ERR(i32 %94)
  store i32 %95, i32* %2, align 4
  br label %125

96:                                               ; preds = %81
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @devm_phy_optional_get(%struct.device* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %100 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %102 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @IS_ERR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %96
  %107 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %108 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @PTR_ERR(i32 %109)
  store i32 %110, i32* %2, align 4
  br label %125

111:                                              ; preds = %96
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %114 = call i32 @platform_set_drvdata(%struct.platform_device* %112, %struct.uniphier_pcie_priv* %113)
  %115 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %116 = call i32 @uniphier_pcie_host_enable(%struct.uniphier_pcie_priv* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %2, align 4
  br label %125

121:                                              ; preds = %111
  %122 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = call i32 @uniphier_add_pcie_port(%struct.uniphier_pcie_priv* %122, %struct.platform_device* %123)
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %119, %106, %91, %76, %61, %41, %15
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.uniphier_pcie_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_pci_remap_cfg_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @devm_reset_control_get_shared(%struct.device*, i32*) #1

declare dso_local i32 @devm_phy_optional_get(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uniphier_pcie_priv*) #1

declare dso_local i32 @uniphier_pcie_host_enable(%struct.uniphier_pcie_priv*) #1

declare dso_local i32 @uniphier_add_pcie_port(%struct.uniphier_pcie_priv*, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
