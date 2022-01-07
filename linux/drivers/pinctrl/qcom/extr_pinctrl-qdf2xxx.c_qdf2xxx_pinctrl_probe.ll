; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-qdf2xxx.c_qdf2xxx_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-qdf2xxx.c_qdf2xxx_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.msm_pinctrl_soc_data = type { i32, i32, i32, %struct.msm_pingroup*, %struct.pinctrl_pin_desc* }
%struct.msm_pingroup = type { i32*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.pinctrl_pin_desc = type { i32, i8* }

@NAME_SIZE = common dso_local global i32 0, align 4
@MAX_GPIOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"num-gpios\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"missing 'num-gpios' property\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid 'num-gpios' property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"missing 'gpios' property\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"invalid 'gpios' property\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"could not read list of GPIOs\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"gpio%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qdf2xxx_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdf2xxx_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.msm_pinctrl_soc_data*, align 8
  %5 = alloca %struct.pinctrl_pin_desc*, align 8
  %6 = alloca %struct.msm_pingroup*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load i32, i32* @NAME_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* @MAX_GPIOS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @device_property_read_u32(i32* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %318

32:                                               ; preds = %1
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MAX_GPIOS, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35, %32
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %318

45:                                               ; preds = %35
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @device_property_count_u8(i32* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %318

56:                                               ; preds = %45
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59, %56
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %318

69:                                               ; preds = %59
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %10, align 4
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @device_property_read_u8_array(i32* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %21, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %318

82:                                               ; preds = %69
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.msm_pinctrl_soc_data* @devm_kzalloc(i32* %84, i32 32, i32 %85)
  store %struct.msm_pinctrl_soc_data* %86, %struct.msm_pinctrl_soc_data** %4, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i8* @devm_kcalloc(i32* %88, i32 %89, i32 16, i32 %90)
  %92 = bitcast i8* %91 to %struct.pinctrl_pin_desc*
  store %struct.pinctrl_pin_desc* %92, %struct.pinctrl_pin_desc** %5, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i8* @devm_kcalloc(i32* %94, i32 %95, i32 120, i32 %96)
  %98 = bitcast i8* %97 to %struct.msm_pingroup*
  store %struct.msm_pingroup* %98, %struct.msm_pingroup** %6, align 8
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @NAME_SIZE, align 4
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i8* @devm_kcalloc(i32* %100, i32 %101, i32 %102, i32 %103)
  store i8* %104, i8** %7, align 8
  %105 = load %struct.msm_pinctrl_soc_data*, %struct.msm_pinctrl_soc_data** %4, align 8
  %106 = icmp ne %struct.msm_pinctrl_soc_data* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %82
  %108 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %109 = icmp ne %struct.pinctrl_pin_desc* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %112 = icmp ne %struct.msm_pingroup* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i8*, i8** %7, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %113, %110, %107, %82
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %318

119:                                              ; preds = %113
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %141, %119
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %120
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %126, i64 %128
  %130 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %129, i32 0, i32 0
  store i32 %125, i32* %130, align 8
  %131 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %132 = load i32, i32* %8, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %131, i64 %133
  %135 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %134, i32 0, i32 0
  %136 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %137 = load i32, i32* %8, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %136, i64 %138
  %140 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %139, i32 0, i32 0
  store i32* %135, i32** %140, align 8
  br label %141

141:                                              ; preds = %124
  %142 = load i32, i32* %8, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %120

144:                                              ; preds = %120
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %296, %144
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %299

149:                                              ; preds = %145
  %150 = load i32, i32* %8, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %21, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %15, align 4
  %154 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %155 = load i32, i32* %15, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %154, i64 %156
  %158 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %157, i32 0, i32 1
  store i32 1, i32* %158, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = zext i32 %160 to i64
  %162 = mul nsw i64 %161, %17
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  %164 = load i32, i32* @NAME_SIZE, align 4
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @snprintf(i8* %163, i32 %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %165)
  %167 = load i8*, i8** %7, align 8
  %168 = load i32, i32* %8, align 4
  %169 = zext i32 %168 to i64
  %170 = mul nsw i64 %169, %17
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  %172 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %173 = load i32, i32* %15, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %172, i64 %174
  %176 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %175, i32 0, i32 1
  store i8* %171, i8** %176, align 8
  %177 = load i8*, i8** %7, align 8
  %178 = load i32, i32* %8, align 4
  %179 = zext i32 %178 to i64
  %180 = mul nsw i64 %179, %17
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  %182 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %183 = load i32, i32* %15, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %182, i64 %184
  %186 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %185, i32 0, i32 2
  store i8* %181, i8** %186, align 8
  %187 = load i32, i32* %15, align 4
  %188 = mul i32 65536, %187
  %189 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %190 = load i32, i32* %15, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %189, i64 %191
  %193 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %192, i32 0, i32 3
  store i32 %188, i32* %193, align 8
  %194 = load i32, i32* %15, align 4
  %195 = mul i32 65536, %194
  %196 = add i32 4, %195
  %197 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %198 = load i32, i32* %15, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %197, i64 %199
  %201 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %200, i32 0, i32 4
  store i32 %196, i32* %201, align 4
  %202 = load i32, i32* %15, align 4
  %203 = mul i32 65536, %202
  %204 = add i32 8, %203
  %205 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %206 = load i32, i32* %15, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %205, i64 %207
  %209 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %208, i32 0, i32 5
  store i32 %204, i32* %209, align 8
  %210 = load i32, i32* %15, align 4
  %211 = mul i32 65536, %210
  %212 = add i32 12, %211
  %213 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %214 = load i32, i32* %15, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %213, i64 %215
  %217 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %216, i32 0, i32 6
  store i32 %212, i32* %217, align 4
  %218 = load i32, i32* %15, align 4
  %219 = mul i32 65536, %218
  %220 = add i32 8, %219
  %221 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %222 = load i32, i32* %15, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %221, i64 %223
  %225 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %224, i32 0, i32 7
  store i32 %220, i32* %225, align 8
  %226 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %227 = load i32, i32* %15, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %226, i64 %228
  %230 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %229, i32 0, i32 8
  store i32 2, i32* %230, align 4
  %231 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %232 = load i32, i32* %15, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %231, i64 %233
  %235 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %234, i32 0, i32 21
  store i64 0, i64* %235, align 8
  %236 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %237 = load i32, i32* %15, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %236, i64 %238
  %240 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %239, i32 0, i32 9
  store i32 6, i32* %240, align 8
  %241 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %242 = load i32, i32* %15, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %241, i64 %243
  %245 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %244, i32 0, i32 10
  store i32 9, i32* %245, align 4
  %246 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %247 = load i32, i32* %15, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %246, i64 %248
  %250 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %249, i32 0, i32 20
  store i64 0, i64* %250, align 8
  %251 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %252 = load i32, i32* %15, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %251, i64 %253
  %255 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %254, i32 0, i32 11
  store i32 1, i32* %255, align 8
  %256 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %257 = load i32, i32* %15, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %256, i64 %258
  %260 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %259, i32 0, i32 19
  store i64 0, i64* %260, align 8
  %261 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %262 = load i32, i32* %15, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %261, i64 %263
  %265 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %264, i32 0, i32 18
  store i64 0, i64* %265, align 8
  %266 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %267 = load i32, i32* %15, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %266, i64 %268
  %270 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %269, i32 0, i32 12
  store i32 5, i32* %270, align 4
  %271 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %272 = load i32, i32* %15, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %271, i64 %273
  %275 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %274, i32 0, i32 13
  store i32 1, i32* %275, align 8
  %276 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %277 = load i32, i32* %15, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %276, i64 %278
  %280 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %279, i32 0, i32 14
  store i32 4, i32* %280, align 4
  %281 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %282 = load i32, i32* %15, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %281, i64 %283
  %285 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %284, i32 0, i32 15
  store i32 1, i32* %285, align 8
  %286 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %287 = load i32, i32* %15, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %286, i64 %288
  %290 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %289, i32 0, i32 16
  store i32 2, i32* %290, align 4
  %291 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %292 = load i32, i32* %15, align 4
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %291, i64 %293
  %295 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %294, i32 0, i32 17
  store i32 2, i32* %295, align 8
  br label %296

296:                                              ; preds = %149
  %297 = load i32, i32* %8, align 4
  %298 = add i32 %297, 1
  store i32 %298, i32* %8, align 4
  br label %145

299:                                              ; preds = %145
  %300 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %301 = load %struct.msm_pinctrl_soc_data*, %struct.msm_pinctrl_soc_data** %4, align 8
  %302 = getelementptr inbounds %struct.msm_pinctrl_soc_data, %struct.msm_pinctrl_soc_data* %301, i32 0, i32 4
  store %struct.pinctrl_pin_desc* %300, %struct.pinctrl_pin_desc** %302, align 8
  %303 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %304 = load %struct.msm_pinctrl_soc_data*, %struct.msm_pinctrl_soc_data** %4, align 8
  %305 = getelementptr inbounds %struct.msm_pinctrl_soc_data, %struct.msm_pinctrl_soc_data* %304, i32 0, i32 3
  store %struct.msm_pingroup* %303, %struct.msm_pingroup** %305, align 8
  %306 = load i32, i32* %9, align 4
  %307 = load %struct.msm_pinctrl_soc_data*, %struct.msm_pinctrl_soc_data** %4, align 8
  %308 = getelementptr inbounds %struct.msm_pinctrl_soc_data, %struct.msm_pinctrl_soc_data* %307, i32 0, i32 0
  store i32 %306, i32* %308, align 8
  %309 = load i32, i32* %9, align 4
  %310 = load %struct.msm_pinctrl_soc_data*, %struct.msm_pinctrl_soc_data** %4, align 8
  %311 = getelementptr inbounds %struct.msm_pinctrl_soc_data, %struct.msm_pinctrl_soc_data* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 4
  %312 = load i32, i32* %9, align 4
  %313 = load %struct.msm_pinctrl_soc_data*, %struct.msm_pinctrl_soc_data** %4, align 8
  %314 = getelementptr inbounds %struct.msm_pinctrl_soc_data, %struct.msm_pinctrl_soc_data* %313, i32 0, i32 2
  store i32 %312, i32* %314, align 8
  %315 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %316 = load %struct.msm_pinctrl_soc_data*, %struct.msm_pinctrl_soc_data** %4, align 8
  %317 = call i32 @msm_pinctrl_probe(%struct.platform_device* %315, %struct.msm_pinctrl_soc_data* %316)
  store i32 %317, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %318

318:                                              ; preds = %299, %116, %77, %63, %51, %39, %27
  %319 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %319)
  %320 = load i32, i32* %2, align 4
  ret i32 %320
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @device_property_read_u32(i32*, i8*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @device_property_count_u8(i32*, i8*) #2

declare dso_local i32 @device_property_read_u8_array(i32*, i8*, i32*, i32) #2

declare dso_local %struct.msm_pinctrl_soc_data* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @msm_pinctrl_probe(%struct.platform_device*, %struct.msm_pinctrl_soc_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
