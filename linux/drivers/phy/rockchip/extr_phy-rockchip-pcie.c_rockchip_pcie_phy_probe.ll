; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-pcie.c_rockchip_pcie_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-pcie.c_rockchip_pcie_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rockchip_pcie_phy = type { %struct.TYPE_4__*, %struct.regmap*, %struct.regmap*, i32, %struct.regmap*, %struct.rockchip_pcie_data* }
%struct.TYPE_4__ = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }
%struct.rockchip_pcie_data = type { i32 }
%struct.phy_provider = type { i32 }
%struct.of_device_id = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"Cannot find GRF syscon\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rockchip_pcie_phy_dt_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"missing phy property for reset controller\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"refclk not found.\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@PHY_MAX_LANE_NUM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"phy number is %d\0A\00", align 1
@ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"failed to create PHY%d\0A\00", align 1
@rockchip_pcie_phy_of_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_pcie_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rockchip_pcie_phy*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.regmap* @syscon_node_to_regmap(i32 %17)
  store %struct.regmap* %18, %struct.regmap** %7, align 8
  %19 = load %struct.regmap*, %struct.regmap** %7, align 8
  %20 = call i64 @IS_ERR(%struct.regmap* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.regmap*, %struct.regmap** %7, align 8
  %26 = call i32 @PTR_ERR(%struct.regmap* %25)
  store i32 %26, i32* %2, align 4
  br label %197

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.rockchip_pcie_phy* @devm_kzalloc(%struct.device* %28, i32 48, i32 %29)
  store %struct.rockchip_pcie_phy* %30, %struct.rockchip_pcie_phy** %5, align 8
  %31 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %32 = icmp ne %struct.rockchip_pcie_phy* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %197

36:                                               ; preds = %27
  %37 = load i32, i32* @rockchip_pcie_phy_dt_ids, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call %struct.of_device_id* @of_match_device(i32 %37, %struct.device* %39)
  store %struct.of_device_id* %40, %struct.of_device_id** %8, align 8
  %41 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %42 = icmp ne %struct.of_device_id* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %197

46:                                               ; preds = %36
  %47 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %48 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.rockchip_pcie_data*
  %51 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %52 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %51, i32 0, i32 5
  store %struct.rockchip_pcie_data* %50, %struct.rockchip_pcie_data** %52, align 8
  %53 = load %struct.regmap*, %struct.regmap** %7, align 8
  %54 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %55 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %54, i32 0, i32 4
  store %struct.regmap* %53, %struct.regmap** %55, align 8
  %56 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %57 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %56, i32 0, i32 3
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call %struct.regmap* @devm_reset_control_get(%struct.device* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %62 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %61, i32 0, i32 2
  store %struct.regmap* %60, %struct.regmap** %62, align 8
  %63 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %64 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %63, i32 0, i32 2
  %65 = load %struct.regmap*, %struct.regmap** %64, align 8
  %66 = call i64 @IS_ERR(%struct.regmap* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %46
  %69 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %70 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %69, i32 0, i32 2
  %71 = load %struct.regmap*, %struct.regmap** %70, align 8
  %72 = call i32 @PTR_ERR(%struct.regmap* %71)
  %73 = load i32, i32* @EPROBE_DEFER, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %68
  %80 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %81 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %80, i32 0, i32 2
  %82 = load %struct.regmap*, %struct.regmap** %81, align 8
  %83 = call i32 @PTR_ERR(%struct.regmap* %82)
  store i32 %83, i32* %2, align 4
  br label %197

84:                                               ; preds = %46
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = call %struct.regmap* @devm_clk_get(%struct.device* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %88 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %87, i32 0, i32 1
  store %struct.regmap* %86, %struct.regmap** %88, align 8
  %89 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %90 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %89, i32 0, i32 1
  %91 = load %struct.regmap*, %struct.regmap** %90, align 8
  %92 = call i64 @IS_ERR(%struct.regmap* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %84
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %98 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %97, i32 0, i32 1
  %99 = load %struct.regmap*, %struct.regmap** %98, align 8
  %100 = call i32 @PTR_ERR(%struct.regmap* %99)
  store i32 %100, i32* %2, align 4
  br label %197

101:                                              ; preds = %84
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = getelementptr inbounds %struct.device, %struct.device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @of_property_read_u32(i32 %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %10)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @ENOENT, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %197

110:                                              ; preds = %101
  %111 = load i32, i32* %10, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @PHY_MAX_LANE_NUM, align 4
  br label %116

116:                                              ; preds = %114, %113
  %117 = phi i32 [ 1, %113 ], [ %115, %114 ]
  store i32 %117, i32* %10, align 4
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @dev_dbg(%struct.device* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %185, %116
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %188

125:                                              ; preds = %121
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = getelementptr inbounds %struct.device, %struct.device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.regmap* @devm_phy_create(%struct.device* %126, i32 %129, i32* @ops)
  %131 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %132 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  store %struct.regmap* %130, %struct.regmap** %137, align 8
  %138 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %139 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load %struct.regmap*, %struct.regmap** %144, align 8
  %146 = call i64 @IS_ERR(%struct.regmap* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %125
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %150)
  %152 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %153 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load %struct.regmap*, %struct.regmap** %158, align 8
  %160 = call i32 @PTR_ERR(%struct.regmap* %159)
  store i32 %160, i32* %2, align 4
  br label %197

161:                                              ; preds = %125
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %164 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  store i32 %162, i32* %169, align 8
  %170 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %171 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %170, i32 0, i32 0
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load %struct.regmap*, %struct.regmap** %176, align 8
  %178 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %179 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 %182
  %184 = call i32 @phy_set_drvdata(%struct.regmap* %177, %struct.TYPE_4__* %183)
  br label %185

185:                                              ; preds = %161
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %121

188:                                              ; preds = %121
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %191 = call i32 @platform_set_drvdata(%struct.platform_device* %189, %struct.rockchip_pcie_phy* %190)
  %192 = load %struct.device*, %struct.device** %4, align 8
  %193 = load i32, i32* @rockchip_pcie_phy_of_xlate, align 4
  %194 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %192, i32 %193)
  store %struct.phy_provider* %194, %struct.phy_provider** %6, align 8
  %195 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %196 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %195)
  store i32 %196, i32* %2, align 4
  br label %197

197:                                              ; preds = %188, %148, %107, %94, %79, %43, %33, %22
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.rockchip_pcie_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.regmap* @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local %struct.regmap* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local %struct.regmap* @devm_phy_create(%struct.device*, i32, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.regmap*, %struct.TYPE_4__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rockchip_pcie_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
