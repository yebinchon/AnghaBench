; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5250-sata.c_exynos_sata_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5250-sata.c_exynos_sata_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.exynos_sata_phy = type { %struct.phy_provider*, %struct.phy_provider*, i32, %struct.phy_provider*, %struct.phy_provider* }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"samsung,syscon-phandle\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"syscon regmap lookup failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"samsung,exynos-sataphy-i2c-phandle\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"sata_phyctrl\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to get clk for PHY\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to enable source clk\0A\00", align 1
@exynos_sata_phy_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_sata_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_sata_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.exynos_sata_phy*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.phy_provider*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.exynos_sata_phy* @devm_kzalloc(%struct.device* %12, i32 40, i32 %13)
  store %struct.exynos_sata_phy* %14, %struct.exynos_sata_phy** %4, align 8
  %15 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %16 = icmp ne %struct.exynos_sata_phy* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %152

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %6, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = call %struct.phy_provider* @devm_ioremap_resource(%struct.device* %24, %struct.resource* %25)
  %27 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %28 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %27, i32 0, i32 4
  store %struct.phy_provider* %26, %struct.phy_provider** %28, align 8
  %29 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %30 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %29, i32 0, i32 4
  %31 = load %struct.phy_provider*, %struct.phy_provider** %30, align 8
  %32 = call i64 @IS_ERR(%struct.phy_provider* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %36 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %35, i32 0, i32 4
  %37 = load %struct.phy_provider*, %struct.phy_provider** %36, align 8
  %38 = call i32 @PTR_ERR(%struct.phy_provider* %37)
  store i32 %38, i32* %2, align 4
  br label %152

39:                                               ; preds = %20
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.phy_provider* @syscon_regmap_lookup_by_phandle(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %45 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %44, i32 0, i32 3
  store %struct.phy_provider* %43, %struct.phy_provider** %45, align 8
  %46 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %47 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %46, i32 0, i32 3
  %48 = load %struct.phy_provider*, %struct.phy_provider** %47, align 8
  %49 = call i64 @IS_ERR(%struct.phy_provider* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %55 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %54, i32 0, i32 3
  %56 = load %struct.phy_provider*, %struct.phy_provider** %55, align 8
  %57 = call i32 @PTR_ERR(%struct.phy_provider* %56)
  store i32 %57, i32* %2, align 4
  br label %152

58:                                               ; preds = %39
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.device_node* @of_parse_phandle(i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %62, %struct.device_node** %8, align 8
  %63 = load %struct.device_node*, %struct.device_node** %8, align 8
  %64 = icmp ne %struct.device_node* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %152

68:                                               ; preds = %58
  %69 = load %struct.device_node*, %struct.device_node** %8, align 8
  %70 = call i32 @of_find_i2c_device_by_node(%struct.device_node* %69)
  %71 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %72 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %74 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* @EPROBE_DEFER, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %152

80:                                               ; preds = %68
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %83 = call i32 @dev_set_drvdata(%struct.device* %81, %struct.exynos_sata_phy* %82)
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = call %struct.phy_provider* @devm_clk_get(%struct.device* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %87 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %86, i32 0, i32 0
  store %struct.phy_provider* %85, %struct.phy_provider** %87, align 8
  %88 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %89 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %88, i32 0, i32 0
  %90 = load %struct.phy_provider*, %struct.phy_provider** %89, align 8
  %91 = call i64 @IS_ERR(%struct.phy_provider* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %80
  %94 = load %struct.device*, %struct.device** %5, align 8
  %95 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %96 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %97 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %96, i32 0, i32 0
  %98 = load %struct.phy_provider*, %struct.phy_provider** %97, align 8
  %99 = call i32 @PTR_ERR(%struct.phy_provider* %98)
  store i32 %99, i32* %2, align 4
  br label %152

100:                                              ; preds = %80
  %101 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %102 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %101, i32 0, i32 0
  %103 = load %struct.phy_provider*, %struct.phy_provider** %102, align 8
  %104 = call i32 @clk_prepare_enable(%struct.phy_provider* %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  br label %152

111:                                              ; preds = %100
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = call %struct.phy_provider* @devm_phy_create(%struct.device* %112, i32* null, i32* @exynos_sata_phy_ops)
  %114 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %115 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %114, i32 0, i32 1
  store %struct.phy_provider* %113, %struct.phy_provider** %115, align 8
  %116 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %117 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %116, i32 0, i32 1
  %118 = load %struct.phy_provider*, %struct.phy_provider** %117, align 8
  %119 = call i64 @IS_ERR(%struct.phy_provider* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %111
  %122 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %123 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %122, i32 0, i32 0
  %124 = load %struct.phy_provider*, %struct.phy_provider** %123, align 8
  %125 = call i32 @clk_disable_unprepare(%struct.phy_provider* %124)
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = call i32 @dev_err(%struct.device* %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %128 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %129 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %128, i32 0, i32 1
  %130 = load %struct.phy_provider*, %struct.phy_provider** %129, align 8
  %131 = call i32 @PTR_ERR(%struct.phy_provider* %130)
  store i32 %131, i32* %2, align 4
  br label %152

132:                                              ; preds = %111
  %133 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %134 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %133, i32 0, i32 1
  %135 = load %struct.phy_provider*, %struct.phy_provider** %134, align 8
  %136 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %137 = call i32 @phy_set_drvdata(%struct.phy_provider* %135, %struct.exynos_sata_phy* %136)
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = load i32, i32* @of_phy_simple_xlate, align 4
  %140 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %138, i32 %139)
  store %struct.phy_provider* %140, %struct.phy_provider** %7, align 8
  %141 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %142 = call i64 @IS_ERR(%struct.phy_provider* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %132
  %145 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %4, align 8
  %146 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %145, i32 0, i32 0
  %147 = load %struct.phy_provider*, %struct.phy_provider** %146, align 8
  %148 = call i32 @clk_disable_unprepare(%struct.phy_provider* %147)
  %149 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %150 = call i32 @PTR_ERR(%struct.phy_provider* %149)
  store i32 %150, i32* %2, align 4
  br label %152

151:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %144, %121, %107, %93, %77, %65, %51, %34, %17
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.exynos_sata_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy_provider* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local %struct.phy_provider* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @of_find_i2c_device_by_node(%struct.device_node*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.exynos_sata_phy*) #1

declare dso_local %struct.phy_provider* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.phy_provider*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.phy_provider*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.exynos_sata_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
