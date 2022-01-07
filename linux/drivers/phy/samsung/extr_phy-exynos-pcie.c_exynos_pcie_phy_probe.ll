; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-pcie.c_exynos_pcie_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-pcie.c_exynos_pcie_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.exynos_pcie_phy = type { %struct.exynos_pcie_phy_data*, %struct.phy*, %struct.phy* }
%struct.exynos_pcie_phy_data = type { i32 }
%struct.phy = type { i32 }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_pcie_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_pcie_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.exynos_pcie_phy*, align 8
  %6 = alloca %struct.phy*, align 8
  %7 = alloca %struct.phy_provider*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.exynos_pcie_phy_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.exynos_pcie_phy_data* @of_device_get_match_data(%struct.device* %12)
  store %struct.exynos_pcie_phy_data* %13, %struct.exynos_pcie_phy_data** %9, align 8
  %14 = load %struct.exynos_pcie_phy_data*, %struct.exynos_pcie_phy_data** %9, align 8
  %15 = icmp ne %struct.exynos_pcie_phy_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %97

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.exynos_pcie_phy* @devm_kzalloc(%struct.device* %20, i32 24, i32 %21)
  store %struct.exynos_pcie_phy* %22, %struct.exynos_pcie_phy** %5, align 8
  %23 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %5, align 8
  %24 = icmp ne %struct.exynos_pcie_phy* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %97

28:                                               ; preds = %19
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = call %struct.resource* @platform_get_resource(%struct.platform_device* %29, i32 %30, i32 0)
  store %struct.resource* %31, %struct.resource** %8, align 8
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.resource*, %struct.resource** %8, align 8
  %34 = call i8* @devm_ioremap_resource(%struct.device* %32, %struct.resource* %33)
  %35 = bitcast i8* %34 to %struct.phy*
  %36 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %5, align 8
  %37 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %36, i32 0, i32 2
  store %struct.phy* %35, %struct.phy** %37, align 8
  %38 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %5, align 8
  %39 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %38, i32 0, i32 2
  %40 = load %struct.phy*, %struct.phy** %39, align 8
  %41 = call i64 @IS_ERR(%struct.phy* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %5, align 8
  %45 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %44, i32 0, i32 2
  %46 = load %struct.phy*, %struct.phy** %45, align 8
  %47 = call i32 @PTR_ERR(%struct.phy* %46)
  store i32 %47, i32* %2, align 4
  br label %97

48:                                               ; preds = %28
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = call %struct.resource* @platform_get_resource(%struct.platform_device* %49, i32 %50, i32 1)
  store %struct.resource* %51, %struct.resource** %8, align 8
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.resource*, %struct.resource** %8, align 8
  %54 = call i8* @devm_ioremap_resource(%struct.device* %52, %struct.resource* %53)
  %55 = bitcast i8* %54 to %struct.phy*
  %56 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %5, align 8
  %57 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %56, i32 0, i32 1
  store %struct.phy* %55, %struct.phy** %57, align 8
  %58 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %5, align 8
  %59 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %58, i32 0, i32 1
  %60 = load %struct.phy*, %struct.phy** %59, align 8
  %61 = call i64 @IS_ERR(%struct.phy* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %5, align 8
  %65 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %64, i32 0, i32 1
  %66 = load %struct.phy*, %struct.phy** %65, align 8
  %67 = call i32 @PTR_ERR(%struct.phy* %66)
  store i32 %67, i32* %2, align 4
  br label %97

68:                                               ; preds = %48
  %69 = load %struct.exynos_pcie_phy_data*, %struct.exynos_pcie_phy_data** %9, align 8
  %70 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %5, align 8
  %71 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %70, i32 0, i32 0
  store %struct.exynos_pcie_phy_data* %69, %struct.exynos_pcie_phy_data** %71, align 8
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = getelementptr inbounds %struct.device, %struct.device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.exynos_pcie_phy_data*, %struct.exynos_pcie_phy_data** %9, align 8
  %77 = getelementptr inbounds %struct.exynos_pcie_phy_data, %struct.exynos_pcie_phy_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.phy* @devm_phy_create(%struct.device* %72, i32 %75, i32 %78)
  store %struct.phy* %79, %struct.phy** %6, align 8
  %80 = load %struct.phy*, %struct.phy** %6, align 8
  %81 = call i64 @IS_ERR(%struct.phy* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %68
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %86 = load %struct.phy*, %struct.phy** %6, align 8
  %87 = call i32 @PTR_ERR(%struct.phy* %86)
  store i32 %87, i32* %2, align 4
  br label %97

88:                                               ; preds = %68
  %89 = load %struct.phy*, %struct.phy** %6, align 8
  %90 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %5, align 8
  %91 = call i32 @phy_set_drvdata(%struct.phy* %89, %struct.exynos_pcie_phy* %90)
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load i32, i32* @of_phy_simple_xlate, align 4
  %94 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %92, i32 %93)
  store %struct.phy_provider* %94, %struct.phy_provider** %7, align 8
  %95 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %96 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %95)
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %88, %83, %63, %43, %25, %16
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.exynos_pcie_phy_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.exynos_pcie_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local %struct.phy* @devm_phy_create(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.exynos_pcie_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
