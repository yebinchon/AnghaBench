; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8660.c_max8660_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8660.c_max8660_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i64 }
%struct.i2c_device_id = type { i64 }
%struct.max8660_platform_data = type { i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.regulator_config = type { %struct.max8660*, %struct.device_node*, %struct.TYPE_8__*, %struct.device* }
%struct.max8660 = type { i32*, %struct.i2c_client* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i64 }
%struct.regulator_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX8660_V_END = common dso_local global i32 0, align 4
@max8660_dt_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Too many regulators found!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX8660_OVER1 = common dso_local global i64 0, align 8
@max8660_dcdc_enable = common dso_local global i32 0, align 4
@max8660_dcdc_ops = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@max8660_dcdc_disable = common dso_local global i32 0, align 4
@MAX8660_SDTV2 = common dso_local global i64 0, align 8
@MAX8660_SDTV1 = common dso_local global i64 0, align 8
@MAX8660_ADTV2 = common dso_local global i64 0, align 8
@MAX8660_ADTV1 = common dso_local global i64 0, align 8
@MAX8660_MDTV2 = common dso_local global i64 0, align 8
@MAX8660_MDTV1 = common dso_local global i64 0, align 8
@MAX8660_OVER2 = common dso_local global i64 0, align 8
@MAX8661 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Regulator not on this chip!\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid regulator %s\0A\00", align 1
@max8660_reg = common dso_local global %struct.TYPE_10__* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max8660_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8660_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.max8660_platform_data, align 8
  %8 = alloca %struct.max8660_platform_data*, align 8
  %9 = alloca %struct.regulator_config, align 8
  %10 = alloca %struct.max8660*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.of_device_id*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.regulator_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %6, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call %struct.max8660_platform_data* @dev_get_platdata(%struct.device* %23)
  store %struct.max8660_platform_data* %24, %struct.max8660_platform_data** %8, align 8
  %25 = bitcast %struct.regulator_config* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 32, i1 false)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* @MAX8660_V_END, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %15, align 8
  %31 = alloca %struct.device_node*, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %2
  %37 = load %struct.max8660_platform_data*, %struct.max8660_platform_data** %8, align 8
  %38 = icmp ne %struct.max8660_platform_data* %37, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @max8660_dt_ids, align 4
  %41 = call i32 @of_match_ptr(i32 %40)
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call %struct.of_device_id* @of_match_device(i32 %41, %struct.device* %42)
  store %struct.of_device_id* %43, %struct.of_device_id** %18, align 8
  %44 = load %struct.of_device_id*, %struct.of_device_id** %18, align 8
  %45 = icmp ne %struct.of_device_id* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %311

49:                                               ; preds = %39
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = call i32 @max8660_pdata_from_dt(%struct.device* %50, %struct.device_node** %31, %struct.max8660_platform_data* %7)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %311

56:                                               ; preds = %49
  store %struct.max8660_platform_data* %7, %struct.max8660_platform_data** %8, align 8
  %57 = load %struct.of_device_id*, %struct.of_device_id** %18, align 8
  %58 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %17, align 8
  br label %67

60:                                               ; preds = %36, %2
  %61 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %62 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %17, align 8
  %64 = mul nuw i64 8, %29
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memset(%struct.device_node** %31, i32 0, i32 %65)
  br label %67

67:                                               ; preds = %60, %56
  %68 = load %struct.max8660_platform_data*, %struct.max8660_platform_data** %8, align 8
  %69 = getelementptr inbounds %struct.max8660_platform_data, %struct.max8660_platform_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MAX8660_V_END, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %311

78:                                               ; preds = %67
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.max8660* @devm_kzalloc(%struct.device* %79, i32 16, i32 %80)
  store %struct.max8660* %81, %struct.max8660** %10, align 8
  %82 = load %struct.max8660*, %struct.max8660** %10, align 8
  %83 = icmp ne %struct.max8660* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %311

87:                                               ; preds = %78
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = load %struct.max8660*, %struct.max8660** %10, align 8
  %90 = getelementptr inbounds %struct.max8660, %struct.max8660* %89, i32 0, i32 1
  store %struct.i2c_client* %88, %struct.i2c_client** %90, align 8
  %91 = load %struct.max8660_platform_data*, %struct.max8660_platform_data** %8, align 8
  %92 = getelementptr inbounds %struct.max8660_platform_data, %struct.max8660_platform_data* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load %struct.max8660*, %struct.max8660** %10, align 8
  %97 = getelementptr inbounds %struct.max8660, %struct.max8660* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @MAX8660_OVER1, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 5, i32* %100, align 4
  br label %104

101:                                              ; preds = %87
  %102 = load i32, i32* @max8660_dcdc_enable, align 4
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @max8660_dcdc_ops, i32 0, i32 1), align 4
  %103 = load i32, i32* @max8660_dcdc_disable, align 4
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @max8660_dcdc_ops, i32 0, i32 0), align 4
  br label %104

104:                                              ; preds = %101, %95
  %105 = load %struct.max8660*, %struct.max8660** %10, align 8
  %106 = getelementptr inbounds %struct.max8660, %struct.max8660* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @MAX8660_SDTV2, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 27, i32* %109, align 4
  %110 = load %struct.max8660*, %struct.max8660** %10, align 8
  %111 = getelementptr inbounds %struct.max8660, %struct.max8660* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @MAX8660_SDTV1, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 27, i32* %114, align 4
  %115 = load %struct.max8660*, %struct.max8660** %10, align 8
  %116 = getelementptr inbounds %struct.max8660, %struct.max8660* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @MAX8660_ADTV2, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32 27, i32* %119, align 4
  %120 = load %struct.max8660*, %struct.max8660** %10, align 8
  %121 = getelementptr inbounds %struct.max8660, %struct.max8660* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @MAX8660_ADTV1, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 27, i32* %124, align 4
  %125 = load %struct.max8660*, %struct.max8660** %10, align 8
  %126 = getelementptr inbounds %struct.max8660, %struct.max8660* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @MAX8660_MDTV2, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32 4, i32* %129, align 4
  %130 = load %struct.max8660*, %struct.max8660** %10, align 8
  %131 = getelementptr inbounds %struct.max8660, %struct.max8660* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @MAX8660_MDTV1, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32 4, i32* %134, align 4
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %244, %104
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.max8660_platform_data*, %struct.max8660_platform_data** %8, align 8
  %138 = getelementptr inbounds %struct.max8660_platform_data, %struct.max8660_platform_data* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %247

141:                                              ; preds = %135
  %142 = load %struct.max8660_platform_data*, %struct.max8660_platform_data** %8, align 8
  %143 = getelementptr inbounds %struct.max8660_platform_data, %struct.max8660_platform_data* %142, i32 0, i32 1
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = icmp ne %struct.TYPE_8__* %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %141
  store i32 0, i32* %11, align 4
  br label %164

152:                                              ; preds = %141
  %153 = load %struct.max8660_platform_data*, %struct.max8660_platform_data** %8, align 8
  %154 = getelementptr inbounds %struct.max8660_platform_data, %struct.max8660_platform_data* %153, i32 0, i32 1
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %152, %151
  %165 = load %struct.max8660_platform_data*, %struct.max8660_platform_data** %8, align 8
  %166 = getelementptr inbounds %struct.max8660_platform_data, %struct.max8660_platform_data* %165, i32 0, i32 1
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  switch i32 %172, label %231 [
    i32 132, label %173
    i32 131, label %185
    i32 130, label %197
    i32 129, label %198
    i32 128, label %210
  ]

173:                                              ; preds = %164
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %173
  %177 = load %struct.max8660*, %struct.max8660** %10, align 8
  %178 = getelementptr inbounds %struct.max8660, %struct.max8660* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @MAX8660_OVER1, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, 1
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %176, %173
  br label %243

185:                                              ; preds = %164
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %185
  %189 = load %struct.max8660*, %struct.max8660** %10, align 8
  %190 = getelementptr inbounds %struct.max8660, %struct.max8660* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* @MAX8660_OVER1, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, 4
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %188, %185
  br label %243

197:                                              ; preds = %164
  br label %243

198:                                              ; preds = %164
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %198
  %202 = load %struct.max8660*, %struct.max8660** %10, align 8
  %203 = getelementptr inbounds %struct.max8660, %struct.max8660* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* @MAX8660_OVER2, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, 2
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %201, %198
  br label %243

210:                                              ; preds = %164
  %211 = load i64, i64* %17, align 8
  %212 = load i64, i64* @MAX8661, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = load %struct.device*, %struct.device** %6, align 8
  %216 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %215, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %217 = load i32, i32* @EINVAL, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %311

219:                                              ; preds = %210
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %219
  %223 = load %struct.max8660*, %struct.max8660** %10, align 8
  %224 = getelementptr inbounds %struct.max8660, %struct.max8660* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* @MAX8660_OVER2, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, 4
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %222, %219
  br label %243

231:                                              ; preds = %164
  %232 = load %struct.device*, %struct.device** %6, align 8
  %233 = load %struct.max8660_platform_data*, %struct.max8660_platform_data** %8, align 8
  %234 = getelementptr inbounds %struct.max8660_platform_data, %struct.max8660_platform_data* %233, i32 0, i32 1
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %232, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* %14, align 4
  store i32 %242, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %311

243:                                              ; preds = %230, %209, %197, %196, %184
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %12, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %12, align 4
  br label %135

247:                                              ; preds = %135
  store i32 0, i32* %12, align 4
  br label %248

248:                                              ; preds = %304, %247
  %249 = load i32, i32* %12, align 4
  %250 = load %struct.max8660_platform_data*, %struct.max8660_platform_data** %8, align 8
  %251 = getelementptr inbounds %struct.max8660_platform_data, %struct.max8660_platform_data* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp slt i32 %249, %252
  br i1 %253, label %254, label %307

254:                                              ; preds = %248
  %255 = load %struct.max8660_platform_data*, %struct.max8660_platform_data** %8, align 8
  %256 = getelementptr inbounds %struct.max8660_platform_data, %struct.max8660_platform_data* %255, i32 0, i32 1
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %256, align 8
  %258 = load i32, i32* %12, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  store i32 %262, i32* %13, align 4
  %263 = load %struct.device*, %struct.device** %6, align 8
  %264 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 3
  store %struct.device* %263, %struct.device** %264, align 8
  %265 = load %struct.max8660_platform_data*, %struct.max8660_platform_data** %8, align 8
  %266 = getelementptr inbounds %struct.max8660_platform_data, %struct.max8660_platform_data* %265, i32 0, i32 1
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %266, align 8
  %268 = load i32, i32* %12, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %271, align 8
  %273 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 2
  store %struct.TYPE_8__* %272, %struct.TYPE_8__** %273, align 8
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.device_node*, %struct.device_node** %31, i64 %275
  %277 = load %struct.device_node*, %struct.device_node** %276, align 8
  %278 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 1
  store %struct.device_node* %277, %struct.device_node** %278, align 8
  %279 = load %struct.max8660*, %struct.max8660** %10, align 8
  %280 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 0
  store %struct.max8660* %279, %struct.max8660** %280, align 8
  %281 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %282 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %281, i32 0, i32 0
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** @max8660_reg, align 8
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i64 %285
  %287 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %282, %struct.TYPE_10__* %286, %struct.regulator_config* %9)
  store %struct.regulator_dev* %287, %struct.regulator_dev** %20, align 8
  %288 = load %struct.regulator_dev*, %struct.regulator_dev** %20, align 8
  %289 = call i64 @IS_ERR(%struct.regulator_dev* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %303

291:                                              ; preds = %254
  %292 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %293 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %292, i32 0, i32 0
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** @max8660_reg, align 8
  %295 = load i32, i32* %13, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %293, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %299)
  %301 = load %struct.regulator_dev*, %struct.regulator_dev** %20, align 8
  %302 = call i32 @PTR_ERR(%struct.regulator_dev* %301)
  store i32 %302, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %311

303:                                              ; preds = %254
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %12, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %12, align 4
  br label %248

307:                                              ; preds = %248
  %308 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %309 = load %struct.max8660*, %struct.max8660** %10, align 8
  %310 = call i32 @i2c_set_clientdata(%struct.i2c_client* %308, %struct.max8660* %309)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %311

311:                                              ; preds = %307, %291, %231, %214, %84, %73, %54, %46
  %312 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %312)
  %313 = load i32, i32* %3, align 4
  ret i32 %313
}

declare dso_local %struct.max8660_platform_data* @dev_get_platdata(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local i32 @max8660_pdata_from_dt(%struct.device*, %struct.device_node**, %struct.max8660_platform_data*) #1

declare dso_local i32 @memset(%struct.device_node**, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.max8660* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, %struct.TYPE_10__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max8660*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
