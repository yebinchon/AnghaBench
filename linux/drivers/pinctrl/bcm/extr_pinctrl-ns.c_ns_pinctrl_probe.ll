; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns.c_ns_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns.c_ns_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_pin_desc = type { i32, i64 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i64 }
%struct.ns_pinctrl = type { i64, i32, i32, %struct.pinctrl_pin_desc*, i32, %struct.pinctrl_pin_desc*, i32, i32, %struct.device*, %struct.pinctrl_desc }
%struct.pinctrl_desc = type { i32, i32* }
%struct.ns_pinctrl_group = type { i32, i64 }
%struct.ns_pinctrl_function = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ns_pinctrl_of_match_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to map pinctrl regs: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to get register offset\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ns_pinctrl_desc = common dso_local global %struct.pinctrl_pin_desc zeroinitializer, align 8
@ns_pinctrl_pins = common dso_local global %struct.pinctrl_pin_desc* null, align 8
@ns_pinctrl_groups = common dso_local global %struct.pinctrl_pin_desc* null, align 8
@ns_pinctrl_functions = common dso_local global %struct.pinctrl_pin_desc* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to register pinctrl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ns_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.ns_pinctrl*, align 8
  %8 = alloca %struct.pinctrl_desc*, align 8
  %9 = alloca %struct.pinctrl_pin_desc*, align 8
  %10 = alloca %struct.ns_pinctrl_group*, align 8
  %11 = alloca %struct.ns_pinctrl_function*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pinctrl_pin_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ns_pinctrl_group*, align 8
  %17 = alloca %struct.ns_pinctrl_function*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %4, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  store %struct.device_node* %22, %struct.device_node** %5, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ns_pinctrl* @devm_kzalloc(%struct.device* %23, i32 72, i32 %24)
  store %struct.ns_pinctrl* %25, %struct.ns_pinctrl** %7, align 8
  %26 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %27 = icmp ne %struct.ns_pinctrl* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %277

31:                                               ; preds = %1
  %32 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %33 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %32, i32 0, i32 9
  store %struct.pinctrl_desc* %33, %struct.pinctrl_desc** %8, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %36 = call i32 @platform_set_drvdata(%struct.platform_device* %34, %struct.ns_pinctrl* %35)
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %39 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %38, i32 0, i32 8
  store %struct.device* %37, %struct.device** %39, align 8
  %40 = load i32, i32* @ns_pinctrl_of_match_table, align 4
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call %struct.of_device_id* @of_match_device(i32 %40, %struct.device* %41)
  store %struct.of_device_id* %42, %struct.of_device_id** %6, align 8
  %43 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %44 = icmp ne %struct.of_device_id* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %277

48:                                               ; preds = %31
  %49 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %50 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %53 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = call i32 @of_get_parent(%struct.device_node* %54)
  %56 = call i32 @syscon_node_to_regmap(i32 %55)
  %57 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %58 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %60 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %48
  %65 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %66 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %2, align 4
  br label %277

73:                                               ; preds = %48
  %74 = load %struct.device_node*, %struct.device_node** %5, align 8
  %75 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %76 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %75, i32 0, i32 6
  %77 = call i64 @of_property_read_u32(%struct.device_node* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %277

84:                                               ; preds = %73
  %85 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %86 = call i32 @memcpy(%struct.pinctrl_desc* %85, %struct.pinctrl_pin_desc* @ns_pinctrl_desc, i32 16)
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** @ns_pinctrl_pins, align 8
  %89 = call i32 @ARRAY_SIZE(%struct.pinctrl_pin_desc* %88)
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i8* @devm_kcalloc(%struct.device* %87, i32 %89, i32 16, i32 %90)
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %94 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  %95 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %96 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %84
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %277

102:                                              ; preds = %84
  store i32 0, i32* %12, align 4
  %103 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %104 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = bitcast i32* %106 to %struct.pinctrl_pin_desc*
  store %struct.pinctrl_pin_desc* %107, %struct.pinctrl_pin_desc** %9, align 8
  br label %108

108:                                              ; preds = %140, %102
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** @ns_pinctrl_pins, align 8
  %111 = call i32 @ARRAY_SIZE(%struct.pinctrl_pin_desc* %110)
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %143

113:                                              ; preds = %108
  %114 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** @ns_pinctrl_pins, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %114, i64 %116
  store %struct.pinctrl_pin_desc* %117, %struct.pinctrl_pin_desc** %14, align 8
  %118 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %14, align 8
  %119 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = zext i32 %122 to i64
  %124 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %125 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = and i64 %123, %126
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %113
  %130 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %9, align 8
  %131 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %130, i32 1
  store %struct.pinctrl_pin_desc* %131, %struct.pinctrl_pin_desc** %9, align 8
  %132 = bitcast %struct.pinctrl_pin_desc* %130 to %struct.pinctrl_desc*
  %133 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %14, align 8
  %134 = call i32 @memcpy(%struct.pinctrl_desc* %132, %struct.pinctrl_pin_desc* %133, i32 16)
  %135 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %136 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %129, %113
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %108

143:                                              ; preds = %108
  %144 = load %struct.device*, %struct.device** %4, align 8
  %145 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** @ns_pinctrl_groups, align 8
  %146 = call i32 @ARRAY_SIZE(%struct.pinctrl_pin_desc* %145)
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call i8* @devm_kcalloc(%struct.device* %144, i32 %146, i32 16, i32 %147)
  %149 = bitcast i8* %148 to %struct.pinctrl_pin_desc*
  %150 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %151 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %150, i32 0, i32 5
  store %struct.pinctrl_pin_desc* %149, %struct.pinctrl_pin_desc** %151, align 8
  %152 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %153 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %152, i32 0, i32 5
  %154 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %153, align 8
  %155 = icmp ne %struct.pinctrl_pin_desc* %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %143
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %277

159:                                              ; preds = %143
  store i32 0, i32* %12, align 4
  %160 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %161 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %160, i32 0, i32 5
  %162 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %161, align 8
  %163 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %162, i64 0
  %164 = bitcast %struct.pinctrl_pin_desc* %163 to %struct.ns_pinctrl_group*
  store %struct.ns_pinctrl_group* %164, %struct.ns_pinctrl_group** %10, align 8
  br label %165

165:                                              ; preds = %197, %159
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** @ns_pinctrl_groups, align 8
  %168 = call i32 @ARRAY_SIZE(%struct.pinctrl_pin_desc* %167)
  %169 = icmp slt i32 %166, %168
  br i1 %169, label %170, label %200

170:                                              ; preds = %165
  %171 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** @ns_pinctrl_groups, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %171, i64 %173
  %175 = bitcast %struct.pinctrl_pin_desc* %174 to %struct.ns_pinctrl_group*
  store %struct.ns_pinctrl_group* %175, %struct.ns_pinctrl_group** %16, align 8
  %176 = load %struct.ns_pinctrl_group*, %struct.ns_pinctrl_group** %16, align 8
  %177 = getelementptr inbounds %struct.ns_pinctrl_group, %struct.ns_pinctrl_group* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %181 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = and i64 %179, %182
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %170
  %186 = load %struct.ns_pinctrl_group*, %struct.ns_pinctrl_group** %10, align 8
  %187 = getelementptr inbounds %struct.ns_pinctrl_group, %struct.ns_pinctrl_group* %186, i32 1
  store %struct.ns_pinctrl_group* %187, %struct.ns_pinctrl_group** %10, align 8
  %188 = bitcast %struct.ns_pinctrl_group* %186 to %struct.pinctrl_desc*
  %189 = load %struct.ns_pinctrl_group*, %struct.ns_pinctrl_group** %16, align 8
  %190 = bitcast %struct.ns_pinctrl_group* %189 to %struct.pinctrl_pin_desc*
  %191 = call i32 @memcpy(%struct.pinctrl_desc* %188, %struct.pinctrl_pin_desc* %190, i32 16)
  %192 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %193 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %185, %170
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %12, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %12, align 4
  br label %165

200:                                              ; preds = %165
  %201 = load %struct.device*, %struct.device** %4, align 8
  %202 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** @ns_pinctrl_functions, align 8
  %203 = call i32 @ARRAY_SIZE(%struct.pinctrl_pin_desc* %202)
  %204 = load i32, i32* @GFP_KERNEL, align 4
  %205 = call i8* @devm_kcalloc(%struct.device* %201, i32 %203, i32 16, i32 %204)
  %206 = bitcast i8* %205 to %struct.pinctrl_pin_desc*
  %207 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %208 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %207, i32 0, i32 3
  store %struct.pinctrl_pin_desc* %206, %struct.pinctrl_pin_desc** %208, align 8
  %209 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %210 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %209, i32 0, i32 3
  %211 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %210, align 8
  %212 = icmp ne %struct.pinctrl_pin_desc* %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %200
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %2, align 4
  br label %277

216:                                              ; preds = %200
  store i32 0, i32* %12, align 4
  %217 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %218 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %217, i32 0, i32 3
  %219 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %218, align 8
  %220 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %219, i64 0
  %221 = bitcast %struct.pinctrl_pin_desc* %220 to %struct.ns_pinctrl_function*
  store %struct.ns_pinctrl_function* %221, %struct.ns_pinctrl_function** %11, align 8
  br label %222

222:                                              ; preds = %254, %216
  %223 = load i32, i32* %12, align 4
  %224 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** @ns_pinctrl_functions, align 8
  %225 = call i32 @ARRAY_SIZE(%struct.pinctrl_pin_desc* %224)
  %226 = icmp slt i32 %223, %225
  br i1 %226, label %227, label %257

227:                                              ; preds = %222
  %228 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** @ns_pinctrl_functions, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %228, i64 %230
  %232 = bitcast %struct.pinctrl_pin_desc* %231 to %struct.ns_pinctrl_function*
  store %struct.ns_pinctrl_function* %232, %struct.ns_pinctrl_function** %17, align 8
  %233 = load %struct.ns_pinctrl_function*, %struct.ns_pinctrl_function** %17, align 8
  %234 = getelementptr inbounds %struct.ns_pinctrl_function, %struct.ns_pinctrl_function* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %238 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = and i64 %236, %239
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %253

242:                                              ; preds = %227
  %243 = load %struct.ns_pinctrl_function*, %struct.ns_pinctrl_function** %11, align 8
  %244 = getelementptr inbounds %struct.ns_pinctrl_function, %struct.ns_pinctrl_function* %243, i32 1
  store %struct.ns_pinctrl_function* %244, %struct.ns_pinctrl_function** %11, align 8
  %245 = bitcast %struct.ns_pinctrl_function* %243 to %struct.pinctrl_desc*
  %246 = load %struct.ns_pinctrl_function*, %struct.ns_pinctrl_function** %17, align 8
  %247 = bitcast %struct.ns_pinctrl_function* %246 to %struct.pinctrl_pin_desc*
  %248 = call i32 @memcpy(%struct.pinctrl_desc* %245, %struct.pinctrl_pin_desc* %247, i32 16)
  %249 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %250 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %242, %227
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %12, align 4
  br label %222

257:                                              ; preds = %222
  %258 = load %struct.device*, %struct.device** %4, align 8
  %259 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %260 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %261 = call i32 @devm_pinctrl_register(%struct.device* %258, %struct.pinctrl_desc* %259, %struct.ns_pinctrl* %260)
  %262 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %263 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 8
  %264 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %265 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = call i64 @IS_ERR(i32 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %257
  %270 = load %struct.device*, %struct.device** %4, align 8
  %271 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %270, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %272 = load %struct.ns_pinctrl*, %struct.ns_pinctrl** %7, align 8
  %273 = getelementptr inbounds %struct.ns_pinctrl, %struct.ns_pinctrl* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @PTR_ERR(i32 %274)
  store i32 %275, i32* %2, align 4
  br label %277

276:                                              ; preds = %257
  store i32 0, i32* %2, align 4
  br label %277

277:                                              ; preds = %276, %269, %213, %156, %99, %79, %64, %45, %28
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

declare dso_local %struct.ns_pinctrl* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ns_pinctrl*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i32 @of_get_parent(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @memcpy(%struct.pinctrl_desc*, %struct.pinctrl_pin_desc*, i32) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.pinctrl_pin_desc*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.device*, %struct.pinctrl_desc*, %struct.ns_pinctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
