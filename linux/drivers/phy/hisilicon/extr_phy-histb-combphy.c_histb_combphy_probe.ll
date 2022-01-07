; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-histb-combphy.c_histb_combphy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-histb-combphy.c_histb_combphy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.phy_provider = type { i32 }
%struct.histb_combphy_priv = type { i32, i32, i32, %struct.histb_combphy_mode, i32, i32 }
%struct.histb_combphy_mode = type { i8*, i8*, i8*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to find peri_ctrl syscon regmap\0A\00", align 1
@PHY_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"hisilicon,fixed-mode\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"found fixed phy mode %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"hisilicon,mode-select-bits\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"found select bits for fixed mode phy\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"found mode select bits\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"no valid select bits found for non-fixed phy\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to find ref clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to get poweron reset\0A\00", align 1
@histb_combphy_ops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"failed to create combphy\0A\00", align 1
@histb_combphy_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @histb_combphy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histb_combphy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.phy_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.histb_combphy_priv*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.histb_combphy_mode*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca [3 x i8*], align 16
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %7, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.histb_combphy_priv* @devm_kzalloc(%struct.device* %17, i32 56, i32 %18)
  store %struct.histb_combphy_priv* %19, %struct.histb_combphy_priv** %6, align 8
  %20 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %21 = icmp ne %struct.histb_combphy_priv* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %189

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %9, align 8
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.resource*, %struct.resource** %9, align 8
  %31 = call i32 @devm_ioremap_resource(%struct.device* %29, %struct.resource* %30)
  %32 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %33 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %35 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %25
  %40 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %41 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %2, align 4
  br label %189

45:                                               ; preds = %25
  %46 = load %struct.device_node*, %struct.device_node** %7, align 8
  %47 = getelementptr inbounds %struct.device_node, %struct.device_node* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @syscon_node_to_regmap(i32 %48)
  %50 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %51 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %53 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %45
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %61 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %189

64:                                               ; preds = %45
  %65 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %66 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %65, i32 0, i32 3
  store %struct.histb_combphy_mode* %66, %struct.histb_combphy_mode** %8, align 8
  %67 = load i32, i32* @PHY_NONE, align 4
  %68 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %8, align 8
  %69 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.device_node*, %struct.device_node** %7, align 8
  %71 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %8, align 8
  %72 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %71, i32 0, i32 3
  %73 = call i32 @of_property_read_u32(%struct.device_node* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %64
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %8, align 8
  %79 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %76, %64
  %83 = load %struct.device_node*, %struct.device_node** %7, align 8
  %84 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 0
  %85 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 0
  %86 = call i32 @ARRAY_SIZE(i8** %85)
  %87 = call i32 @of_property_read_u32_array(%struct.device_node* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %84, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %82
  %91 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %8, align 8
  %92 = call i64 @is_mode_fixed(%struct.histb_combphy_mode* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %189

99:                                               ; preds = %90
  %100 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 0
  %101 = load i8*, i8** %100, align 16
  %102 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %8, align 8
  %103 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 1
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %8, align 8
  %107 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 2
  %109 = load i8*, i8** %108, align 16
  %110 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %8, align 8
  %111 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %124

114:                                              ; preds = %82
  %115 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %8, align 8
  %116 = call i64 @is_mode_fixed(%struct.histb_combphy_mode* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = load %struct.device*, %struct.device** %5, align 8
  %120 = call i32 @dev_err(%struct.device* %119, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %121 = load i32, i32* @ENODEV, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %189

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %99
  %125 = load %struct.device*, %struct.device** %5, align 8
  %126 = call i32 @devm_clk_get(%struct.device* %125, i32* null)
  %127 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %128 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %130 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @IS_ERR(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %124
  %135 = load %struct.device*, %struct.device** %5, align 8
  %136 = call i32 @dev_err(%struct.device* %135, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %137 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %138 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @PTR_ERR(i32 %139)
  store i32 %140, i32* %2, align 4
  br label %189

141:                                              ; preds = %124
  %142 = load %struct.device*, %struct.device** %5, align 8
  %143 = call i32 @devm_reset_control_get(%struct.device* %142, i32* null)
  %144 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %145 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %147 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @IS_ERR(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %141
  %152 = load %struct.device*, %struct.device** %5, align 8
  %153 = call i32 @dev_err(%struct.device* %152, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %154 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %155 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @PTR_ERR(i32 %156)
  store i32 %157, i32* %2, align 4
  br label %189

158:                                              ; preds = %141
  %159 = load %struct.device*, %struct.device** %5, align 8
  %160 = call i32 @devm_phy_create(%struct.device* %159, i32* null, i32* @histb_combphy_ops)
  %161 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %162 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %164 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @IS_ERR(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %158
  %169 = load %struct.device*, %struct.device** %5, align 8
  %170 = call i32 @dev_err(%struct.device* %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %171 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %172 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @PTR_ERR(i32 %173)
  store i32 %174, i32* %2, align 4
  br label %189

175:                                              ; preds = %158
  %176 = load %struct.device*, %struct.device** %5, align 8
  %177 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %178 = call i32 @dev_set_drvdata(%struct.device* %176, %struct.histb_combphy_priv* %177)
  %179 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %180 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %183 = call i32 @phy_set_drvdata(i32 %181, %struct.histb_combphy_priv* %182)
  %184 = load %struct.device*, %struct.device** %5, align 8
  %185 = load i32, i32* @histb_combphy_xlate, align 4
  %186 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %184, i32 %185)
  store %struct.phy_provider* %186, %struct.phy_provider** %4, align 8
  %187 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %188 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %187)
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %175, %168, %151, %134, %118, %94, %57, %39, %22
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.histb_combphy_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i8**, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @is_mode_fixed(%struct.histb_combphy_mode*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @devm_reset_control_get(%struct.device*, i32*) #1

declare dso_local i32 @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.histb_combphy_priv*) #1

declare dso_local i32 @phy_set_drvdata(i32, %struct.histb_combphy_priv*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
