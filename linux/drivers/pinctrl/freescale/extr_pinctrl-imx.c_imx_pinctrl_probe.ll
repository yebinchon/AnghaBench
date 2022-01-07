; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i8* }
%struct.TYPE_11__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.imx_pinctrl_soc_info = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.pinctrl_desc = type { i32, i32, i32, i32, i32*, %struct.TYPE_11__*, i32*, i64, i32 }
%struct.imx_pinctrl = type { i32, %struct.TYPE_10__*, %struct.imx_pinctrl_soc_info*, i32, i32, %struct.regmap*, %struct.TYPE_12__* }
%struct.regmap = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"gpr\00", align 1
@__const.imx_pinctrl_probe.config = private unnamed_addr constant %struct.regmap_config { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"wrong pinctrl info\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IMX_USE_SCU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"fsl,input-sel\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"iomuxc fsl,input-sel property not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"iomuxc input select base address not found\0A\00", align 1
@imx_pctrl_ops = common dso_local global i32 0, align 4
@imx_pmx_ops = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@imx_pinconf_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"could not register IMX pinctrl driver\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"fail to probe dt properties\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"initialized IMX pinctrl driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_pinctrl_probe(%struct.platform_device* %0, %struct.imx_pinctrl_soc_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.imx_pinctrl_soc_info*, align 8
  %6 = alloca %struct.regmap_config, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.pinctrl_desc*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.imx_pinctrl*, align 8
  %11 = alloca %struct.regmap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.imx_pinctrl_soc_info* %1, %struct.imx_pinctrl_soc_info** %5, align 8
  %14 = bitcast %struct.regmap_config* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.regmap_config* @__const.imx_pinctrl_probe.config to i8*), i64 8, i1 false)
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %7, align 8
  %19 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %5, align 8
  %20 = icmp ne %struct.imx_pinctrl_soc_info* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %5, align 8
  %23 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %5, align 8
  %28 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26, %21, %2
  %32 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(%struct.TYPE_10__* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %262

37:                                               ; preds = %26
  %38 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %5, align 8
  %39 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %5, align 8
  %44 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = call %struct.regmap* @syscon_regmap_lookup_by_compatible(i64 %45)
  store %struct.regmap* %46, %struct.regmap** %11, align 8
  %47 = load %struct.regmap*, %struct.regmap** %11, align 8
  %48 = call i64 @IS_ERR(%struct.regmap* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %42
  %51 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.regmap*, %struct.regmap** %11, align 8
  %54 = call i32 @regmap_attach_dev(%struct.TYPE_10__* %52, %struct.regmap* %53, %struct.regmap_config* %6)
  br label %55

55:                                               ; preds = %50, %42
  br label %56

56:                                               ; preds = %55, %37
  %57 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @devm_kzalloc(%struct.TYPE_10__* %58, i32 48, i32 %59)
  %61 = bitcast i8* %60 to %struct.imx_pinctrl*
  store %struct.imx_pinctrl* %61, %struct.imx_pinctrl** %10, align 8
  %62 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %63 = icmp ne %struct.imx_pinctrl* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %262

67:                                               ; preds = %56
  %68 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %5, align 8
  %69 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IMX_USE_SCU, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %165, label %74

74:                                               ; preds = %67
  %75 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %5, align 8
  %78 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.TYPE_12__* @devm_kmalloc_array(%struct.TYPE_10__* %76, i32 %79, i32 8, i32 %80)
  %82 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %83 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %82, i32 0, i32 6
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %83, align 8
  %84 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %85 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %84, i32 0, i32 6
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = icmp ne %struct.TYPE_12__* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %74
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %262

91:                                               ; preds = %74
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %113, %91
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %5, align 8
  %95 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %92
  %99 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %100 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %99, i32 0, i32 6
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  store i32 -1, i32* %105, align 4
  %106 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %107 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %106, i32 0, i32 6
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  store i32 -1, i32* %112, align 4
  br label %113

113:                                              ; preds = %98
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %92

116:                                              ; preds = %92
  %117 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %118 = call %struct.regmap* @devm_platform_ioremap_resource(%struct.platform_device* %117, i32 0)
  %119 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %120 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %119, i32 0, i32 5
  store %struct.regmap* %118, %struct.regmap** %120, align 8
  %121 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %122 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %121, i32 0, i32 5
  %123 = load %struct.regmap*, %struct.regmap** %122, align 8
  %124 = call i64 @IS_ERR(%struct.regmap* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %128 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %127, i32 0, i32 5
  %129 = load %struct.regmap*, %struct.regmap** %128, align 8
  %130 = call i32 @PTR_ERR(%struct.regmap* %129)
  store i32 %130, i32* %3, align 4
  br label %262

131:                                              ; preds = %116
  %132 = load %struct.device_node*, %struct.device_node** %7, align 8
  %133 = call i64 @of_property_read_bool(%struct.device_node* %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %164

135:                                              ; preds = %131
  %136 = load %struct.device_node*, %struct.device_node** %7, align 8
  %137 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %137, %struct.device_node** %9, align 8
  %138 = load %struct.device_node*, %struct.device_node** %9, align 8
  %139 = icmp ne %struct.device_node* %138, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %135
  %141 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = call i32 @dev_err(%struct.TYPE_10__* %142, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %262

146:                                              ; preds = %135
  %147 = load %struct.device_node*, %struct.device_node** %9, align 8
  %148 = call i32 @of_iomap(%struct.device_node* %147, i32 0)
  %149 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %150 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load %struct.device_node*, %struct.device_node** %9, align 8
  %152 = call i32 @of_node_put(%struct.device_node* %151)
  %153 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %154 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %146
  %158 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = call i32 @dev_err(%struct.TYPE_10__* %159, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %262

163:                                              ; preds = %146
  br label %164

164:                                              ; preds = %163, %131
  br label %165

165:                                              ; preds = %164, %67
  %166 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = load i32, i32* @GFP_KERNEL, align 4
  %169 = call i8* @devm_kzalloc(%struct.TYPE_10__* %167, i32 56, i32 %168)
  %170 = bitcast i8* %169 to %struct.pinctrl_desc*
  store %struct.pinctrl_desc* %170, %struct.pinctrl_desc** %8, align 8
  %171 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %172 = icmp ne %struct.pinctrl_desc* %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %165
  %174 = load i32, i32* @ENOMEM, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %3, align 4
  br label %262

176:                                              ; preds = %165
  %177 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = call i32 @dev_name(%struct.TYPE_10__* %178)
  %180 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %181 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %180, i32 0, i32 8
  store i32 %179, i32* %181, align 8
  %182 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %5, align 8
  %183 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %186 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %185, i32 0, i32 7
  store i64 %184, i64* %186, align 8
  %187 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %5, align 8
  %188 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %191 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %193 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %192, i32 0, i32 6
  store i32* @imx_pctrl_ops, i32** %193, align 8
  %194 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %195 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %194, i32 0, i32 5
  store %struct.TYPE_11__* @imx_pmx_ops, %struct.TYPE_11__** %195, align 8
  %196 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %197 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %196, i32 0, i32 4
  store i32* @imx_pinconf_ops, i32** %197, align 8
  %198 = load i32, i32* @THIS_MODULE, align 4
  %199 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %200 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 4
  %201 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %5, align 8
  %202 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %205 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 8
  %206 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %5, align 8
  %207 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %210 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  %211 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %5, align 8
  %212 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  store i32 %213, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @imx_pmx_ops, i32 0, i32 0), align 4
  %214 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %215 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %214, i32 0, i32 3
  %216 = call i32 @mutex_init(i32* %215)
  %217 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %5, align 8
  %218 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %219 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %218, i32 0, i32 2
  store %struct.imx_pinctrl_soc_info* %217, %struct.imx_pinctrl_soc_info** %219, align 8
  %220 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %223 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %222, i32 0, i32 1
  store %struct.TYPE_10__* %221, %struct.TYPE_10__** %223, align 8
  %224 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %225 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %226 = call i32 @platform_set_drvdata(%struct.platform_device* %224, %struct.imx_pinctrl* %225)
  %227 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %228 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %227, i32 0, i32 0
  %229 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %230 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %231 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %232 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %231, i32 0, i32 0
  %233 = call i32 @devm_pinctrl_register_and_init(%struct.TYPE_10__* %228, %struct.pinctrl_desc* %229, %struct.imx_pinctrl* %230, i32* %232)
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %176
  %237 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = call i32 @dev_err(%struct.TYPE_10__* %238, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %258

240:                                              ; preds = %176
  %241 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %242 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %243 = call i32 @imx_pinctrl_probe_dt(%struct.platform_device* %241, %struct.imx_pinctrl* %242)
  store i32 %243, i32* %12, align 4
  %244 = load i32, i32* %12, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %240
  %247 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %248 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %247, i32 0, i32 0
  %249 = call i32 @dev_err(%struct.TYPE_10__* %248, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %258

250:                                              ; preds = %240
  %251 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %252 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %251, i32 0, i32 0
  %253 = call i32 @dev_info(%struct.TYPE_10__* %252, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %254 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %255 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @pinctrl_enable(i32 %256)
  store i32 %257, i32* %3, align 4
  br label %262

258:                                              ; preds = %246, %236
  %259 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %260 = call i32 @imx_free_resources(%struct.imx_pinctrl* %259)
  %261 = load i32, i32* %12, align 4
  store i32 %261, i32* %3, align 4
  br label %262

262:                                              ; preds = %258, %250, %173, %157, %140, %126, %88, %64, %31
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #2

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_compatible(i64) #2

declare dso_local i64 @IS_ERR(%struct.regmap*) #2

declare dso_local i32 @regmap_attach_dev(%struct.TYPE_10__*, %struct.regmap*, %struct.regmap_config*) #2

declare dso_local i8* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #2

declare dso_local %struct.TYPE_12__* @devm_kmalloc_array(%struct.TYPE_10__*, i32, i32, i32) #2

declare dso_local %struct.regmap* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #2

declare dso_local i32 @PTR_ERR(%struct.regmap*) #2

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #2

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #2

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.imx_pinctrl*) #2

declare dso_local i32 @devm_pinctrl_register_and_init(%struct.TYPE_10__*, %struct.pinctrl_desc*, %struct.imx_pinctrl*, i32*) #2

declare dso_local i32 @imx_pinctrl_probe_dt(%struct.platform_device*, %struct.imx_pinctrl*) #2

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @pinctrl_enable(i32) #2

declare dso_local i32 @imx_free_resources(%struct.imx_pinctrl*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
