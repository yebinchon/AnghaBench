; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.exynos5_usbdrd_phy = type { %struct.device*, %struct.TYPE_2__*, %struct.regmap*, %struct.regmap*, %struct.exynos5_usbdrd_phy_drvdata*, %struct.regmap* }
%struct.TYPE_2__ = type { i32, i32*, i32, %struct.regmap*, %struct.regmap* }
%struct.exynos5_usbdrd_phy_drvdata = type { i32*, i32, i32 }
%struct.regmap = type { i32 }
%struct.phy_provider = type opaque
%struct.resource = type { i32 }
%struct.phy = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to initialize clocks\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"samsung,pmu-syscon\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to lookup PMU regmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"usbdrdphy\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Not a multi-controller usbdrd phy\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to get VBUS supply regulator\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"vbus-boost\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Failed to get VBUS boost supply regulator\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Creating usbdrd_phy phy\0A\00", align 1
@EXYNOS5_DRDPHYS_NUM = common dso_local global i32 0, align 4
@exynos5_usbdrd_phy_ops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed to create usbdrd_phy phy\0A\00", align 1
@exynos5_usbdrd_phy_xlate = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"Failed to register phy provider\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos5_usbdrd_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5_usbdrd_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.exynos5_usbdrd_phy*, align 8
  %7 = alloca %struct.phy_provider*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.exynos5_usbdrd_phy_drvdata*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.phy*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %4, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %5, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.exynos5_usbdrd_phy* @devm_kzalloc(%struct.device* %21, i32 48, i32 %22)
  store %struct.exynos5_usbdrd_phy* %23, %struct.exynos5_usbdrd_phy** %6, align 8
  %24 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %25 = icmp ne %struct.exynos5_usbdrd_phy* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %262

29:                                               ; preds = %1
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %32 = call i32 @dev_set_drvdata(%struct.device* %30, %struct.exynos5_usbdrd_phy* %31)
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %35 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %34, i32 0, i32 0
  store %struct.device* %33, %struct.device** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %8, align 8
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.resource*, %struct.resource** %8, align 8
  %41 = call %struct.regmap* @devm_ioremap_resource(%struct.device* %39, %struct.resource* %40)
  %42 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %43 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %42, i32 0, i32 5
  store %struct.regmap* %41, %struct.regmap** %43, align 8
  %44 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %45 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %44, i32 0, i32 5
  %46 = load %struct.regmap*, %struct.regmap** %45, align 8
  %47 = call i64 @IS_ERR(%struct.regmap* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %29
  %50 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %51 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %50, i32 0, i32 5
  %52 = load %struct.regmap*, %struct.regmap** %51, align 8
  %53 = call i32 @PTR_ERR(%struct.regmap* %52)
  store i32 %53, i32* %2, align 4
  br label %262

54:                                               ; preds = %29
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call %struct.exynos5_usbdrd_phy_drvdata* @of_device_get_match_data(%struct.device* %55)
  store %struct.exynos5_usbdrd_phy_drvdata* %56, %struct.exynos5_usbdrd_phy_drvdata** %9, align 8
  %57 = load %struct.exynos5_usbdrd_phy_drvdata*, %struct.exynos5_usbdrd_phy_drvdata** %9, align 8
  %58 = icmp ne %struct.exynos5_usbdrd_phy_drvdata* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %262

62:                                               ; preds = %54
  %63 = load %struct.exynos5_usbdrd_phy_drvdata*, %struct.exynos5_usbdrd_phy_drvdata** %9, align 8
  %64 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %65 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %64, i32 0, i32 4
  store %struct.exynos5_usbdrd_phy_drvdata* %63, %struct.exynos5_usbdrd_phy_drvdata** %65, align 8
  %66 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %67 = call i32 @exynos5_usbdrd_phy_clk_handle(%struct.exynos5_usbdrd_phy* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %2, align 4
  br label %262

74:                                               ; preds = %62
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 0
  %77 = load %struct.device_node*, %struct.device_node** %76, align 8
  %78 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store %struct.regmap* %78, %struct.regmap** %10, align 8
  %79 = load %struct.regmap*, %struct.regmap** %10, align 8
  %80 = call i64 @IS_ERR(%struct.regmap* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.regmap*, %struct.regmap** %10, align 8
  %86 = call i32 @PTR_ERR(%struct.regmap* %85)
  store i32 %86, i32* %2, align 4
  br label %262

87:                                               ; preds = %74
  %88 = load %struct.device_node*, %struct.device_node** %5, align 8
  %89 = call i32 @of_alias_get_id(%struct.device_node* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = call i32 @dev_dbg(%struct.device* %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i32, i32* %14, align 4
  switch i32 %96, label %104 [
    i32 1, label %97
    i32 0, label %103
  ]

97:                                               ; preds = %95
  %98 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %99 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %98, i32 0, i32 4
  %100 = load %struct.exynos5_usbdrd_phy_drvdata*, %struct.exynos5_usbdrd_phy_drvdata** %99, align 8
  %101 = getelementptr inbounds %struct.exynos5_usbdrd_phy_drvdata, %struct.exynos5_usbdrd_phy_drvdata* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %11, align 4
  br label %110

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %95, %103
  %105 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %106 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %105, i32 0, i32 4
  %107 = load %struct.exynos5_usbdrd_phy_drvdata*, %struct.exynos5_usbdrd_phy_drvdata** %106, align 8
  %108 = getelementptr inbounds %struct.exynos5_usbdrd_phy_drvdata, %struct.exynos5_usbdrd_phy_drvdata* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %104, %97
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = call i8* @devm_regulator_get(%struct.device* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %113 = bitcast i8* %112 to %struct.regmap*
  %114 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %115 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %114, i32 0, i32 3
  store %struct.regmap* %113, %struct.regmap** %115, align 8
  %116 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %117 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %116, i32 0, i32 3
  %118 = load %struct.regmap*, %struct.regmap** %117, align 8
  %119 = call i64 @IS_ERR(%struct.regmap* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %110
  %122 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %123 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %122, i32 0, i32 3
  %124 = load %struct.regmap*, %struct.regmap** %123, align 8
  %125 = call i32 @PTR_ERR(%struct.regmap* %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @EPROBE_DEFER, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %2, align 4
  br label %262

132:                                              ; preds = %121
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = call i32 @dev_warn(%struct.device* %133, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %135 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %136 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %135, i32 0, i32 3
  store %struct.regmap* null, %struct.regmap** %136, align 8
  br label %137

137:                                              ; preds = %132, %110
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = call i8* @devm_regulator_get(%struct.device* %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %140 = bitcast i8* %139 to %struct.regmap*
  %141 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %142 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %141, i32 0, i32 2
  store %struct.regmap* %140, %struct.regmap** %142, align 8
  %143 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %144 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %143, i32 0, i32 2
  %145 = load %struct.regmap*, %struct.regmap** %144, align 8
  %146 = call i64 @IS_ERR(%struct.regmap* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %137
  %149 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %150 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %149, i32 0, i32 2
  %151 = load %struct.regmap*, %struct.regmap** %150, align 8
  %152 = call i32 @PTR_ERR(%struct.regmap* %151)
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* @EPROBE_DEFER, align 4
  %155 = sub nsw i32 0, %154
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %148
  %158 = load i32, i32* %13, align 4
  store i32 %158, i32* %2, align 4
  br label %262

159:                                              ; preds = %148
  %160 = load %struct.device*, %struct.device** %4, align 8
  %161 = call i32 @dev_warn(%struct.device* %160, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %162 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %163 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %162, i32 0, i32 2
  store %struct.regmap* null, %struct.regmap** %163, align 8
  br label %164

164:                                              ; preds = %159, %137
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = call i32 @dev_vdbg(%struct.device* %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %167

167:                                              ; preds = %241, %164
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @EXYNOS5_DRDPHYS_NUM, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %244

171:                                              ; preds = %167
  %172 = load %struct.device*, %struct.device** %4, align 8
  %173 = call %struct.regmap* @devm_phy_create(%struct.device* %172, i32* null, i32* @exynos5_usbdrd_phy_ops)
  %174 = bitcast %struct.regmap* %173 to %struct.phy*
  store %struct.phy* %174, %struct.phy** %15, align 8
  %175 = load %struct.phy*, %struct.phy** %15, align 8
  %176 = bitcast %struct.phy* %175 to %struct.regmap*
  %177 = call i64 @IS_ERR(%struct.regmap* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %171
  %180 = load %struct.device*, %struct.device** %4, align 8
  %181 = call i32 @dev_err(%struct.device* %180, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %182 = load %struct.phy*, %struct.phy** %15, align 8
  %183 = bitcast %struct.phy* %182 to %struct.regmap*
  %184 = call i32 @PTR_ERR(%struct.regmap* %183)
  store i32 %184, i32* %2, align 4
  br label %262

185:                                              ; preds = %171
  %186 = load %struct.phy*, %struct.phy** %15, align 8
  %187 = bitcast %struct.phy* %186 to %struct.regmap*
  %188 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %189 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %188, i32 0, i32 1
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 4
  store %struct.regmap* %187, %struct.regmap** %194, align 8
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %197 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %196, i32 0, i32 1
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  store i32 %195, i32* %202, align 8
  %203 = load %struct.regmap*, %struct.regmap** %10, align 8
  %204 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %205 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %204, i32 0, i32 1
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 3
  store %struct.regmap* %203, %struct.regmap** %210, align 8
  %211 = load i32, i32* %11, align 4
  %212 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %213 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %212, i32 0, i32 1
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 2
  store i32 %211, i32* %218, align 8
  %219 = load %struct.exynos5_usbdrd_phy_drvdata*, %struct.exynos5_usbdrd_phy_drvdata** %9, align 8
  %220 = getelementptr inbounds %struct.exynos5_usbdrd_phy_drvdata, %struct.exynos5_usbdrd_phy_drvdata* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %226 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %225, i32 0, i32 1
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 1
  store i32* %224, i32** %231, align 8
  %232 = load %struct.phy*, %struct.phy** %15, align 8
  %233 = bitcast %struct.phy* %232 to %struct.regmap*
  %234 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %235 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %234, i32 0, i32 1
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i64 %238
  %240 = call i32 @phy_set_drvdata(%struct.regmap* %233, %struct.TYPE_2__* %239)
  br label %241

241:                                              ; preds = %185
  %242 = load i32, i32* %12, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %12, align 4
  br label %167

244:                                              ; preds = %167
  %245 = load %struct.device*, %struct.device** %4, align 8
  %246 = load i32, i32* @exynos5_usbdrd_phy_xlate, align 4
  %247 = call %struct.regmap* @devm_of_phy_provider_register(%struct.device* %245, i32 %246)
  %248 = bitcast %struct.regmap* %247 to %struct.phy_provider*
  store %struct.phy_provider* %248, %struct.phy_provider** %7, align 8
  %249 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %250 = bitcast %struct.phy_provider* %249 to %struct.regmap*
  %251 = call i64 @IS_ERR(%struct.regmap* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %244
  %254 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %255 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %254, i32 0, i32 0
  %256 = load %struct.device*, %struct.device** %255, align 8
  %257 = call i32 @dev_err(%struct.device* %256, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %258 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %259 = bitcast %struct.phy_provider* %258 to %struct.regmap*
  %260 = call i32 @PTR_ERR(%struct.regmap* %259)
  store i32 %260, i32* %2, align 4
  br label %262

261:                                              ; preds = %244
  store i32 0, i32* %2, align 4
  br label %262

262:                                              ; preds = %261, %253, %179, %157, %130, %82, %70, %59, %49, %26
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local %struct.exynos5_usbdrd_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.exynos5_usbdrd_phy*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.regmap* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.exynos5_usbdrd_phy_drvdata* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @exynos5_usbdrd_phy_clk_handle(%struct.exynos5_usbdrd_phy*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @dev_vdbg(%struct.device*, i8*) #1

declare dso_local %struct.regmap* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.regmap*, %struct.TYPE_2__*) #1

declare dso_local %struct.regmap* @devm_of_phy_provider_register(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
