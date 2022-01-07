; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-emmc.c_rockchip_emmc_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-emmc.c_rockchip_emmc_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rockchip_emmc_phy = type { i32, i32, %struct.regmap* }
%struct.regmap = type { i32 }
%struct.phy = type opaque
%struct.phy_provider = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Missing rockchip,grf property\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"missing reg property in node %pOFn\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PHYCTRL_DR_50OHM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"drive-impedance-ohm\00", align 1
@ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_emmc_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_emmc_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rockchip_emmc_phy*, align 8
  %6 = alloca %struct.phy*, align 8
  %7 = alloca %struct.phy_provider*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17, %1
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %113

27:                                               ; preds = %17
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.regmap* @syscon_node_to_regmap(i32 %32)
  store %struct.regmap* %33, %struct.regmap** %8, align 8
  %34 = load %struct.regmap*, %struct.regmap** %8, align 8
  %35 = call i64 @IS_ERR(%struct.regmap* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.regmap*, %struct.regmap** %8, align 8
  %41 = call i32 @PTR_ERR(%struct.regmap* %40)
  store i32 %41, i32* %2, align 4
  br label %113

42:                                               ; preds = %27
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.rockchip_emmc_phy* @devm_kzalloc(%struct.device* %43, i32 16, i32 %44)
  store %struct.rockchip_emmc_phy* %45, %struct.rockchip_emmc_phy** %5, align 8
  %46 = load %struct.rockchip_emmc_phy*, %struct.rockchip_emmc_phy** %5, align 8
  %47 = icmp ne %struct.rockchip_emmc_phy* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %113

51:                                               ; preds = %42
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @of_property_read_u32(i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %113

65:                                               ; preds = %51
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.rockchip_emmc_phy*, %struct.rockchip_emmc_phy** %5, align 8
  %68 = getelementptr inbounds %struct.rockchip_emmc_phy, %struct.rockchip_emmc_phy* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.regmap*, %struct.regmap** %8, align 8
  %70 = load %struct.rockchip_emmc_phy*, %struct.rockchip_emmc_phy** %5, align 8
  %71 = getelementptr inbounds %struct.rockchip_emmc_phy, %struct.rockchip_emmc_phy* %70, i32 0, i32 2
  store %struct.regmap* %69, %struct.regmap** %71, align 8
  %72 = load i32, i32* @PHYCTRL_DR_50OHM, align 4
  %73 = load %struct.rockchip_emmc_phy*, %struct.rockchip_emmc_phy** %5, align 8
  %74 = getelementptr inbounds %struct.rockchip_emmc_phy, %struct.rockchip_emmc_phy* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @of_property_read_u32(i32 %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %10)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %65
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @convert_drive_impedance_ohm(%struct.platform_device* %81, i32 %82)
  %84 = load %struct.rockchip_emmc_phy*, %struct.rockchip_emmc_phy** %5, align 8
  %85 = getelementptr inbounds %struct.rockchip_emmc_phy, %struct.rockchip_emmc_phy* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %80, %65
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = getelementptr inbounds %struct.device, %struct.device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.regmap* @devm_phy_create(%struct.device* %87, i32 %90, i32* @ops)
  %92 = bitcast %struct.regmap* %91 to %struct.phy*
  store %struct.phy* %92, %struct.phy** %6, align 8
  %93 = load %struct.phy*, %struct.phy** %6, align 8
  %94 = bitcast %struct.phy* %93 to %struct.regmap*
  %95 = call i64 @IS_ERR(%struct.regmap* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %86
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %100 = load %struct.phy*, %struct.phy** %6, align 8
  %101 = bitcast %struct.phy* %100 to %struct.regmap*
  %102 = call i32 @PTR_ERR(%struct.regmap* %101)
  store i32 %102, i32* %2, align 4
  br label %113

103:                                              ; preds = %86
  %104 = load %struct.phy*, %struct.phy** %6, align 8
  %105 = bitcast %struct.phy* %104 to %struct.regmap*
  %106 = load %struct.rockchip_emmc_phy*, %struct.rockchip_emmc_phy** %5, align 8
  %107 = call i32 @phy_set_drvdata(%struct.regmap* %105, %struct.rockchip_emmc_phy* %106)
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = load i32, i32* @of_phy_simple_xlate, align 4
  %110 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %108, i32 %109)
  store %struct.phy_provider* %110, %struct.phy_provider** %7, align 8
  %111 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %112 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %111)
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %103, %97, %57, %48, %37, %24
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.rockchip_emmc_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @convert_drive_impedance_ohm(%struct.platform_device*, i32) #1

declare dso_local %struct.regmap* @devm_phy_create(%struct.device*, i32, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.regmap*, %struct.rockchip_emmc_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
