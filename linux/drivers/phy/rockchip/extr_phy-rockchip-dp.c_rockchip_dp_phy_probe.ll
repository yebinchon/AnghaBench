; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-dp.c_rockchip_dp_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-dp.c_rockchip_dp_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_2__*, %struct.device_node* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }
%struct.phy_provider = type { i32 }
%struct.rockchip_dp_phy = type { %struct.device*, %struct.phy*, %struct.phy* }
%struct.phy = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"24m\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot get clock 24m\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot set clock phy_24m %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"rk3288-dp needs the General Register Files syscon\0A\00", align 1
@GRF_SOC_CON12 = common dso_local global i32 0, align 4
@GRF_EDP_REF_CLK_SEL_INTER = common dso_local global i32 0, align 4
@GRF_EDP_REF_CLK_SEL_INTER_HIWORD_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Could not config GRF edp ref clk: %d\0A\00", align 1
@rockchip_dp_phy_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"failed to create phy\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_dp_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_dp_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  %7 = alloca %struct.rockchip_dp_phy*, align 8
  %8 = alloca %struct.phy*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %138

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25, %20
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %138

35:                                               ; preds = %25
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.rockchip_dp_phy* @devm_kzalloc(%struct.device* %36, i32 24, i32 %37)
  store %struct.rockchip_dp_phy* %38, %struct.rockchip_dp_phy** %7, align 8
  %39 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %7, align 8
  %40 = icmp ne %struct.rockchip_dp_phy* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %138

44:                                               ; preds = %35
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %7, align 8
  %47 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %46, i32 0, i32 0
  store %struct.device* %45, %struct.device** %47, align 8
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call %struct.phy* @devm_clk_get(%struct.device* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %7, align 8
  %51 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %50, i32 0, i32 2
  store %struct.phy* %49, %struct.phy** %51, align 8
  %52 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %7, align 8
  %53 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %52, i32 0, i32 2
  %54 = load %struct.phy*, %struct.phy** %53, align 8
  %55 = call i64 @IS_ERR(%struct.phy* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %44
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %7, align 8
  %61 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %60, i32 0, i32 2
  %62 = load %struct.phy*, %struct.phy** %61, align 8
  %63 = call i32 @PTR_ERR(%struct.phy* %62)
  store i32 %63, i32* %2, align 4
  br label %138

64:                                               ; preds = %44
  %65 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %7, align 8
  %66 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %65, i32 0, i32 2
  %67 = load %struct.phy*, %struct.phy** %66, align 8
  %68 = call i32 @clk_set_rate(%struct.phy* %67, i32 24000000)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %7, align 8
  %73 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %72, i32 0, i32 0
  %74 = load %struct.device*, %struct.device** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %138

78:                                               ; preds = %64
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = getelementptr inbounds %struct.device, %struct.device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.phy* @syscon_node_to_regmap(i32 %83)
  %85 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %7, align 8
  %86 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %85, i32 0, i32 1
  store %struct.phy* %84, %struct.phy** %86, align 8
  %87 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %7, align 8
  %88 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %87, i32 0, i32 1
  %89 = load %struct.phy*, %struct.phy** %88, align 8
  %90 = call i64 @IS_ERR(%struct.phy* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %78
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %93, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %7, align 8
  %96 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %95, i32 0, i32 1
  %97 = load %struct.phy*, %struct.phy** %96, align 8
  %98 = call i32 @PTR_ERR(%struct.phy* %97)
  store i32 %98, i32* %2, align 4
  br label %138

99:                                               ; preds = %78
  %100 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %7, align 8
  %101 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %100, i32 0, i32 1
  %102 = load %struct.phy*, %struct.phy** %101, align 8
  %103 = load i32, i32* @GRF_SOC_CON12, align 4
  %104 = load i32, i32* @GRF_EDP_REF_CLK_SEL_INTER, align 4
  %105 = load i32, i32* @GRF_EDP_REF_CLK_SEL_INTER_HIWORD_MASK, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @regmap_write(%struct.phy* %102, i32 %103, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %99
  %111 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %7, align 8
  %112 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %111, i32 0, i32 0
  %113 = load %struct.device*, %struct.device** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %113, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %2, align 4
  br label %138

117:                                              ; preds = %99
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load %struct.device_node*, %struct.device_node** %5, align 8
  %120 = call %struct.phy* @devm_phy_create(%struct.device* %118, %struct.device_node* %119, i32* @rockchip_dp_phy_ops)
  store %struct.phy* %120, %struct.phy** %8, align 8
  %121 = load %struct.phy*, %struct.phy** %8, align 8
  %122 = call i64 @IS_ERR(%struct.phy* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %127 = load %struct.phy*, %struct.phy** %8, align 8
  %128 = call i32 @PTR_ERR(%struct.phy* %127)
  store i32 %128, i32* %2, align 4
  br label %138

129:                                              ; preds = %117
  %130 = load %struct.phy*, %struct.phy** %8, align 8
  %131 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %7, align 8
  %132 = call i32 @phy_set_drvdata(%struct.phy* %130, %struct.rockchip_dp_phy* %131)
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = load i32, i32* @of_phy_simple_xlate, align 4
  %135 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %133, i32 %134)
  store %struct.phy_provider* %135, %struct.phy_provider** %6, align 8
  %136 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %137 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %136)
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %129, %124, %110, %92, %71, %57, %41, %32, %17
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.rockchip_dp_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.phy* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local i32 @clk_set_rate(%struct.phy*, i32) #1

declare dso_local %struct.phy* @syscon_node_to_regmap(i32) #1

declare dso_local i32 @regmap_write(%struct.phy*, i32, i32) #1

declare dso_local %struct.phy* @devm_phy_create(%struct.device*, %struct.device_node*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.rockchip_dp_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
