; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__*, i8* }
%struct.TYPE_14__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_14__ }
%struct.mtk_pinctrl_devdata = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.pinctrl_pin_desc }
%struct.pinctrl_pin_desc = type { i32 }
%struct.regmap = type { i32 }
%struct.mtk_pinctrl = type { %struct.TYPE_13__*, %struct.mtk_pinctrl_devdata*, %struct.regmap*, %struct.TYPE_15__, %struct.TYPE_14__*, %struct.regmap*, %struct.regmap* }
%struct.TYPE_15__ = type { i32, i32*, i32*, i32*, %struct.pinctrl_pin_desc*, i32, i8* }
%struct.property = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pins-are-numbered\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"only support pins-are-numbered format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"mediatek,pctl-regmap\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Pinctrl node has not register regmap.\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"build state failed: %d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@mtk_pconf_ops = common dso_local global i32 0, align 4
@mtk_pctrl_ops = common dso_local global i32 0, align 4
@mtk_pmx_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"couldn't register pinctrl driver\0A\00", align 1
@mtk_gpio_chip = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_pctrl_init(%struct.platform_device* %0, %struct.mtk_pinctrl_devdata* %1, %struct.regmap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.mtk_pinctrl_devdata*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.pinctrl_pin_desc*, align 8
  %9 = alloca %struct.mtk_pinctrl*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca %struct.property*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.mtk_pinctrl_devdata* %1, %struct.mtk_pinctrl_devdata** %6, align 8
  store %struct.regmap* %2, %struct.regmap** %7, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %10, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kzalloc(%struct.TYPE_14__* %20, i32 104, i32 %21)
  %23 = bitcast i8* %22 to %struct.mtk_pinctrl*
  store %struct.mtk_pinctrl* %23, %struct.mtk_pinctrl** %9, align 8
  %24 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %25 = icmp ne %struct.mtk_pinctrl* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %304

29:                                               ; preds = %3
  %30 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %31 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.mtk_pinctrl* %31)
  %33 = load %struct.device_node*, %struct.device_node** %10, align 8
  %34 = call %struct.property* @of_find_property(%struct.device_node* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %34, %struct.property** %12, align 8
  %35 = load %struct.property*, %struct.property** %12, align 8
  %36 = icmp ne %struct.property* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %304

43:                                               ; preds = %29
  %44 = load %struct.device_node*, %struct.device_node** %10, align 8
  %45 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %45, %struct.device_node** %11, align 8
  %46 = load %struct.device_node*, %struct.device_node** %11, align 8
  %47 = icmp ne %struct.device_node* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load %struct.device_node*, %struct.device_node** %11, align 8
  %50 = call i8* @syscon_node_to_regmap(%struct.device_node* %49)
  %51 = bitcast i8* %50 to %struct.regmap*
  %52 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %53 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %52, i32 0, i32 6
  store %struct.regmap* %51, %struct.regmap** %53, align 8
  %54 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %55 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %54, i32 0, i32 6
  %56 = load %struct.regmap*, %struct.regmap** %55, align 8
  %57 = call i64 @IS_ERR(%struct.regmap* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %61 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %60, i32 0, i32 6
  %62 = load %struct.regmap*, %struct.regmap** %61, align 8
  %63 = call i32 @PTR_ERR(%struct.regmap* %62)
  store i32 %63, i32* %4, align 4
  br label %304

64:                                               ; preds = %48
  br label %79

65:                                               ; preds = %43
  %66 = load %struct.regmap*, %struct.regmap** %7, align 8
  %67 = icmp ne %struct.regmap* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.regmap*, %struct.regmap** %7, align 8
  %70 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %71 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %70, i32 0, i32 6
  store %struct.regmap* %69, %struct.regmap** %71, align 8
  br label %78

72:                                               ; preds = %65
  %73 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %304

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %64
  %80 = load %struct.device_node*, %struct.device_node** %10, align 8
  %81 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store %struct.device_node* %81, %struct.device_node** %11, align 8
  %82 = load %struct.device_node*, %struct.device_node** %11, align 8
  %83 = icmp ne %struct.device_node* %82, null
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load %struct.device_node*, %struct.device_node** %11, align 8
  %86 = call i8* @syscon_node_to_regmap(%struct.device_node* %85)
  %87 = bitcast i8* %86 to %struct.regmap*
  %88 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %89 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %88, i32 0, i32 5
  store %struct.regmap* %87, %struct.regmap** %89, align 8
  %90 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %91 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %90, i32 0, i32 5
  %92 = load %struct.regmap*, %struct.regmap** %91, align 8
  %93 = call i64 @IS_ERR(%struct.regmap* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %84
  %96 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %97 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %96, i32 0, i32 5
  %98 = load %struct.regmap*, %struct.regmap** %97, align 8
  %99 = call i32 @PTR_ERR(%struct.regmap* %98)
  store i32 %99, i32* %4, align 4
  br label %304

100:                                              ; preds = %84
  br label %101

101:                                              ; preds = %100, %79
  %102 = load %struct.mtk_pinctrl_devdata*, %struct.mtk_pinctrl_devdata** %6, align 8
  %103 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %104 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %103, i32 0, i32 1
  store %struct.mtk_pinctrl_devdata* %102, %struct.mtk_pinctrl_devdata** %104, align 8
  %105 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %106 = call i32 @mtk_pctrl_build_state(%struct.platform_device* %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %101
  %110 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load i32, i32* %13, align 4
  %113 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %304

116:                                              ; preds = %101
  %117 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %120 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %119, i32 0, i32 1
  %121 = load %struct.mtk_pinctrl_devdata*, %struct.mtk_pinctrl_devdata** %120, align 8
  %122 = getelementptr inbounds %struct.mtk_pinctrl_devdata, %struct.mtk_pinctrl_devdata* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call %struct.pinctrl_pin_desc* @devm_kcalloc(%struct.TYPE_14__* %118, i32 %123, i32 4, i32 %124)
  store %struct.pinctrl_pin_desc* %125, %struct.pinctrl_pin_desc** %8, align 8
  %126 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %127 = icmp ne %struct.pinctrl_pin_desc* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %116
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %304

131:                                              ; preds = %116
  store i32 0, i32* %14, align 4
  br label %132

132:                                              ; preds = %156, %131
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %135 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %134, i32 0, i32 1
  %136 = load %struct.mtk_pinctrl_devdata*, %struct.mtk_pinctrl_devdata** %135, align 8
  %137 = getelementptr inbounds %struct.mtk_pinctrl_devdata, %struct.mtk_pinctrl_devdata* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %133, %138
  br i1 %139, label %140, label %159

140:                                              ; preds = %132
  %141 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %141, i64 %143
  %145 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %146 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %145, i32 0, i32 1
  %147 = load %struct.mtk_pinctrl_devdata*, %struct.mtk_pinctrl_devdata** %146, align 8
  %148 = getelementptr inbounds %struct.mtk_pinctrl_devdata, %struct.mtk_pinctrl_devdata* %147, i32 0, i32 1
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = bitcast %struct.pinctrl_pin_desc* %144 to i8*
  %155 = bitcast %struct.pinctrl_pin_desc* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %154, i8* align 4 %155, i64 4, i1 false)
  br label %156

156:                                              ; preds = %140
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %14, align 4
  br label %132

159:                                              ; preds = %132
  %160 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = call i8* @dev_name(%struct.TYPE_14__* %161)
  %163 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %164 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 6
  store i8* %162, i8** %165, align 8
  %166 = load i32, i32* @THIS_MODULE, align 4
  %167 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %168 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 5
  store i32 %166, i32* %169, align 8
  %170 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %171 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %172 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 4
  store %struct.pinctrl_pin_desc* %170, %struct.pinctrl_pin_desc** %173, align 8
  %174 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %175 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %174, i32 0, i32 1
  %176 = load %struct.mtk_pinctrl_devdata*, %struct.mtk_pinctrl_devdata** %175, align 8
  %177 = getelementptr inbounds %struct.mtk_pinctrl_devdata, %struct.mtk_pinctrl_devdata* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %180 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 8
  %182 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %183 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 3
  store i32* @mtk_pconf_ops, i32** %184, align 8
  %185 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %186 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 2
  store i32* @mtk_pctrl_ops, i32** %187, align 8
  %188 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %189 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  store i32* @mtk_pmx_ops, i32** %190, align 8
  %191 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %194 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %193, i32 0, i32 4
  store %struct.TYPE_14__* %192, %struct.TYPE_14__** %194, align 8
  %195 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %198 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %197, i32 0, i32 3
  %199 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %200 = call %struct.regmap* @devm_pinctrl_register(%struct.TYPE_14__* %196, %struct.TYPE_15__* %198, %struct.mtk_pinctrl* %199)
  %201 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %202 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %201, i32 0, i32 2
  store %struct.regmap* %200, %struct.regmap** %202, align 8
  %203 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %204 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %203, i32 0, i32 2
  %205 = load %struct.regmap*, %struct.regmap** %204, align 8
  %206 = call i64 @IS_ERR(%struct.regmap* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %159
  %209 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %210, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %212 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %213 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %212, i32 0, i32 2
  %214 = load %struct.regmap*, %struct.regmap** %213, align 8
  %215 = call i32 @PTR_ERR(%struct.regmap* %214)
  store i32 %215, i32* %4, align 4
  br label %304

216:                                              ; preds = %159
  %217 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 0
  %219 = load i32, i32* @GFP_KERNEL, align 4
  %220 = call i8* @devm_kzalloc(%struct.TYPE_14__* %218, i32 24, i32 %219)
  %221 = bitcast i8* %220 to %struct.TYPE_13__*
  %222 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %223 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %222, i32 0, i32 0
  store %struct.TYPE_13__* %221, %struct.TYPE_13__** %223, align 8
  %224 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %225 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %224, i32 0, i32 0
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %225, align 8
  %227 = icmp ne %struct.TYPE_13__* %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %216
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %4, align 4
  br label %304

231:                                              ; preds = %216
  %232 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %233 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %232, i32 0, i32 0
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %233, align 8
  %235 = bitcast %struct.TYPE_13__* %234 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %235, i8* align 8 bitcast (%struct.TYPE_13__* @mtk_gpio_chip to i8*), i64 24, i1 false)
  %236 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %237 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %236, i32 0, i32 1
  %238 = load %struct.mtk_pinctrl_devdata*, %struct.mtk_pinctrl_devdata** %237, align 8
  %239 = getelementptr inbounds %struct.mtk_pinctrl_devdata, %struct.mtk_pinctrl_devdata* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %242 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %241, i32 0, i32 0
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  store i32 %240, i32* %244, align 8
  %245 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %246 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %245, i32 0, i32 0
  %247 = call i8* @dev_name(%struct.TYPE_14__* %246)
  %248 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %249 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %248, i32 0, i32 0
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 3
  store i8* %247, i8** %251, align 8
  %252 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %253 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %252, i32 0, i32 0
  %254 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %255 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %254, i32 0, i32 0
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 2
  store %struct.TYPE_14__* %253, %struct.TYPE_14__** %257, align 8
  %258 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %259 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %258, i32 0, i32 0
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 1
  store i32 -1, i32* %261, align 4
  %262 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %263 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %262, i32 0, i32 0
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %263, align 8
  %265 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %266 = call i32 @gpiochip_add_data(%struct.TYPE_13__* %264, %struct.mtk_pinctrl* %265)
  store i32 %266, i32* %13, align 4
  %267 = load i32, i32* %13, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %231
  %270 = load i32, i32* @EINVAL, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %4, align 4
  br label %304

272:                                              ; preds = %231
  %273 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %274 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %273, i32 0, i32 0
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %274, align 8
  %276 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %277 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %276, i32 0, i32 0
  %278 = call i8* @dev_name(%struct.TYPE_14__* %277)
  %279 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %280 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %279, i32 0, i32 1
  %281 = load %struct.mtk_pinctrl_devdata*, %struct.mtk_pinctrl_devdata** %280, align 8
  %282 = getelementptr inbounds %struct.mtk_pinctrl_devdata, %struct.mtk_pinctrl_devdata* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @gpiochip_add_pin_range(%struct.TYPE_13__* %275, i8* %278, i32 0, i32 0, i32 %283)
  store i32 %284, i32* %13, align 4
  %285 = load i32, i32* %13, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %272
  %288 = load i32, i32* @EINVAL, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %13, align 4
  br label %298

290:                                              ; preds = %272
  %291 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %292 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %293 = call i32 @mtk_eint_init(%struct.mtk_pinctrl* %291, %struct.platform_device* %292)
  store i32 %293, i32* %13, align 4
  %294 = load i32, i32* %13, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %290
  br label %298

297:                                              ; preds = %290
  store i32 0, i32* %4, align 4
  br label %304

298:                                              ; preds = %296, %287
  %299 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %300 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %299, i32 0, i32 0
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %300, align 8
  %302 = call i32 @gpiochip_remove(%struct.TYPE_13__* %301)
  %303 = load i32, i32* %13, align 4
  store i32 %303, i32* %4, align 4
  br label %304

304:                                              ; preds = %298, %297, %269, %228, %208, %128, %109, %95, %72, %59, %37, %26
  %305 = load i32, i32* %4, align 4
  ret i32 %305
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_pinctrl*) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i8* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @mtk_pctrl_build_state(%struct.platform_device*) #1

declare dso_local %struct.pinctrl_pin_desc* @devm_kcalloc(%struct.TYPE_14__*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @dev_name(%struct.TYPE_14__*) #1

declare dso_local %struct.regmap* @devm_pinctrl_register(%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.mtk_pinctrl*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_13__*, %struct.mtk_pinctrl*) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.TYPE_13__*, i8*, i32, i32, i32) #1

declare dso_local i32 @mtk_eint_init(%struct.mtk_pinctrl*, %struct.platform_device*) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
