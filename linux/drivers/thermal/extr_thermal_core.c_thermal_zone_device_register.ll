; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c_thermal_zone_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c_thermal_zone_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_governor = type { i32 }
%struct.thermal_zone_device = type { i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, %struct.thermal_zone_params*, i32, %struct.thermal_zone_device_ops*, i8*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.thermal_zone_device_ops = type { i64 (%struct.thermal_zone_device.0*, i32, i32*)*, i64 (%struct.thermal_zone_device.1*, i32, i32*)* }
%struct.thermal_zone_device.0 = type opaque
%struct.thermal_zone_device.1 = type opaque
%struct.thermal_zone_params = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Error: No thermal zone type defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@THERMAL_NAME_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"Error: Thermal zone name (%s) too long, should be under %d chars\0A\00", align 1
@THERMAL_MAX_TRIPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Error: Incorrect number of thermal trips\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Error: Thermal zone device ops not defined\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@thermal_tz_ida = common dso_local global i32 0, align 4
@thermal_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"thermal_zone%d\00", align 1
@thermal_governor_lock = common dso_local global i32 0, align 4
@def_governor = common dso_local global %struct.thermal_governor* null, align 8
@thermal_list_lock = common dso_local global i32 0, align 4
@thermal_tz_list = common dso_local global i32 0, align 4
@thermal_zone_device_check = common dso_local global i32 0, align 4
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thermal_zone_device* @thermal_zone_device_register(i8* %0, i32 %1, i32 %2, i8* %3, %struct.thermal_zone_device_ops* %4, %struct.thermal_zone_params* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.thermal_zone_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.thermal_zone_device_ops*, align 8
  %15 = alloca %struct.thermal_zone_params*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.thermal_zone_device*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.thermal_governor*, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store %struct.thermal_zone_device_ops* %4, %struct.thermal_zone_device_ops** %14, align 8
  store %struct.thermal_zone_params* %5, %struct.thermal_zone_params** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %8
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %8
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.thermal_zone_device* @ERR_PTR(i32 %34)
  store %struct.thermal_zone_device* %35, %struct.thermal_zone_device** %9, align 8
  br label %302

36:                                               ; preds = %27
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = load i64, i64* @THERMAL_NAME_LENGTH, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* @THERMAL_NAME_LENGTH, align 8
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i8* %45, i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.thermal_zone_device* @ERR_PTR(i32 %49)
  store %struct.thermal_zone_device* %50, %struct.thermal_zone_device** %9, align 8
  br label %302

51:                                               ; preds = %39, %36
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @THERMAL_MAX_TRIPS, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = ashr i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58, %55, %51
  %64 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.thermal_zone_device* @ERR_PTR(i32 %66)
  store %struct.thermal_zone_device* %67, %struct.thermal_zone_device** %9, align 8
  br label %302

68:                                               ; preds = %58
  %69 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %14, align 8
  %70 = icmp ne %struct.thermal_zone_device_ops* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.thermal_zone_device* @ERR_PTR(i32 %74)
  store %struct.thermal_zone_device* %75, %struct.thermal_zone_device** %9, align 8
  br label %302

76:                                               ; preds = %68
  %77 = load i32, i32* %11, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %14, align 8
  %81 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %80, i32 0, i32 1
  %82 = load i64 (%struct.thermal_zone_device.1*, i32, i32*)*, i64 (%struct.thermal_zone_device.1*, i32, i32*)** %81, align 8
  %83 = icmp ne i64 (%struct.thermal_zone_device.1*, i32, i32*)* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %14, align 8
  %86 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %85, i32 0, i32 0
  %87 = load i64 (%struct.thermal_zone_device.0*, i32, i32*)*, i64 (%struct.thermal_zone_device.0*, i32, i32*)** %86, align 8
  %88 = icmp ne i64 (%struct.thermal_zone_device.0*, i32, i32*)* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %84, %79
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  %92 = call %struct.thermal_zone_device* @ERR_PTR(i32 %91)
  store %struct.thermal_zone_device* %92, %struct.thermal_zone_device** %9, align 8
  br label %302

93:                                               ; preds = %84, %76
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call %struct.thermal_zone_device* @kzalloc(i32 88, i32 %94)
  store %struct.thermal_zone_device* %95, %struct.thermal_zone_device** %18, align 8
  %96 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %97 = icmp ne %struct.thermal_zone_device* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  %101 = call %struct.thermal_zone_device* @ERR_PTR(i32 %100)
  store %struct.thermal_zone_device* %101, %struct.thermal_zone_device** %9, align 8
  br label %302

102:                                              ; preds = %93
  %103 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %104 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %103, i32 0, i32 15
  %105 = call i32 @INIT_LIST_HEAD(i32* %104)
  %106 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %107 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %106, i32 0, i32 14
  %108 = call i32 @ida_init(i32* %107)
  %109 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %110 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %109, i32 0, i32 13
  %111 = call i32 @mutex_init(i32* %110)
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call i32 @ida_simple_get(i32* @thermal_tz_ida, i32 0, i32 0, i32 %112)
  store i32 %113, i32* %21, align 4
  %114 = load i32, i32* %21, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %102
  %117 = load i32, i32* %21, align 4
  store i32 %117, i32* %22, align 4
  br label %297

118:                                              ; preds = %102
  %119 = load i32, i32* %21, align 4
  %120 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %121 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %123 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %122, i32 0, i32 12
  %124 = load i32, i32* %123, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @strlcpy(i32 %124, i8* %125, i32 4)
  %127 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %14, align 8
  %128 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %129 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %128, i32 0, i32 10
  store %struct.thermal_zone_device_ops* %127, %struct.thermal_zone_device_ops** %129, align 8
  %130 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %15, align 8
  %131 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %132 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %131, i32 0, i32 8
  store %struct.thermal_zone_params* %130, %struct.thermal_zone_params** %132, align 8
  %133 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %134 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  store i32* @thermal_class, i32** %135, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %138 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %137, i32 0, i32 11
  store i8* %136, i8** %138, align 8
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %141 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %144 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %17, align 4
  %146 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %147 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @thermal_zone_create_device_groups(%struct.thermal_zone_device* %148, i32 %149)
  store i32 %150, i32* %22, align 4
  %151 = load i32, i32* %22, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %118
  br label %294

154:                                              ; preds = %118
  %155 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %156 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %155, i32 0, i32 5
  %157 = call i32 @atomic_set(i32* %156, i32 1)
  %158 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %159 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %158, i32 0, i32 4
  %160 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %161 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @dev_set_name(%struct.TYPE_5__* %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %162)
  %164 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %165 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %164, i32 0, i32 4
  %166 = call i32 @device_register(%struct.TYPE_5__* %165)
  store i32 %166, i32* %22, align 4
  %167 = load i32, i32* %22, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %154
  br label %290

170:                                              ; preds = %154
  store i32 0, i32* %23, align 4
  br label %171

171:                                              ; preds = %216, %170
  %172 = load i32, i32* %23, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %219

175:                                              ; preds = %171
  %176 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %177 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %176, i32 0, i32 10
  %178 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %177, align 8
  %179 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %178, i32 0, i32 1
  %180 = load i64 (%struct.thermal_zone_device.1*, i32, i32*)*, i64 (%struct.thermal_zone_device.1*, i32, i32*)** %179, align 8
  %181 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %182 = bitcast %struct.thermal_zone_device* %181 to %struct.thermal_zone_device.1*
  %183 = load i32, i32* %23, align 4
  %184 = call i64 %180(%struct.thermal_zone_device.1* %182, i32 %183, i32* %19)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %175
  %187 = load i32, i32* %23, align 4
  %188 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %189 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %188, i32 0, i32 9
  %190 = call i32 @set_bit(i32 %187, i32* %189)
  br label %191

191:                                              ; preds = %186, %175
  %192 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %193 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %192, i32 0, i32 10
  %194 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %193, align 8
  %195 = getelementptr inbounds %struct.thermal_zone_device_ops, %struct.thermal_zone_device_ops* %194, i32 0, i32 0
  %196 = load i64 (%struct.thermal_zone_device.0*, i32, i32*)*, i64 (%struct.thermal_zone_device.0*, i32, i32*)** %195, align 8
  %197 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %198 = bitcast %struct.thermal_zone_device* %197 to %struct.thermal_zone_device.0*
  %199 = load i32, i32* %23, align 4
  %200 = call i64 %196(%struct.thermal_zone_device.0* %198, i32 %199, i32* %20)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %191
  %203 = load i32, i32* %23, align 4
  %204 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %205 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %204, i32 0, i32 9
  %206 = call i32 @set_bit(i32 %203, i32* %205)
  br label %207

207:                                              ; preds = %202, %191
  %208 = load i32, i32* %20, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = load i32, i32* %23, align 4
  %212 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %213 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %212, i32 0, i32 9
  %214 = call i32 @set_bit(i32 %211, i32* %213)
  br label %215

215:                                              ; preds = %210, %207
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %23, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %23, align 4
  br label %171

219:                                              ; preds = %171
  %220 = call i32 @mutex_lock(i32* @thermal_governor_lock)
  %221 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %222 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %221, i32 0, i32 8
  %223 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %222, align 8
  %224 = icmp ne %struct.thermal_zone_params* %223, null
  br i1 %224, label %225, label %232

225:                                              ; preds = %219
  %226 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %227 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %226, i32 0, i32 8
  %228 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %227, align 8
  %229 = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call %struct.thermal_governor* @__find_governor(i32 %230)
  store %struct.thermal_governor* %231, %struct.thermal_governor** %24, align 8
  br label %234

232:                                              ; preds = %219
  %233 = load %struct.thermal_governor*, %struct.thermal_governor** @def_governor, align 8
  store %struct.thermal_governor* %233, %struct.thermal_governor** %24, align 8
  br label %234

234:                                              ; preds = %232, %225
  %235 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %236 = load %struct.thermal_governor*, %struct.thermal_governor** %24, align 8
  %237 = call i32 @thermal_set_governor(%struct.thermal_zone_device* %235, %struct.thermal_governor* %236)
  store i32 %237, i32* %22, align 4
  %238 = load i32, i32* %22, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %234
  %241 = call i32 @mutex_unlock(i32* @thermal_governor_lock)
  br label %286

242:                                              ; preds = %234
  %243 = call i32 @mutex_unlock(i32* @thermal_governor_lock)
  %244 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %245 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %244, i32 0, i32 8
  %246 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %245, align 8
  %247 = icmp ne %struct.thermal_zone_params* %246, null
  br i1 %247, label %248, label %255

248:                                              ; preds = %242
  %249 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %250 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %249, i32 0, i32 8
  %251 = load %struct.thermal_zone_params*, %struct.thermal_zone_params** %250, align 8
  %252 = getelementptr inbounds %struct.thermal_zone_params, %struct.thermal_zone_params* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %262, label %255

255:                                              ; preds = %248, %242
  %256 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %257 = call i32 @thermal_add_hwmon_sysfs(%struct.thermal_zone_device* %256)
  store i32 %257, i32* %22, align 4
  %258 = load i32, i32* %22, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  br label %286

261:                                              ; preds = %255
  br label %262

262:                                              ; preds = %261, %248
  %263 = call i32 @mutex_lock(i32* @thermal_list_lock)
  %264 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %265 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %264, i32 0, i32 7
  %266 = call i32 @list_add_tail(i32* %265, i32* @thermal_tz_list)
  %267 = call i32 @mutex_unlock(i32* @thermal_list_lock)
  %268 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %269 = call i32 @bind_tz(%struct.thermal_zone_device* %268)
  %270 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %271 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %270, i32 0, i32 6
  %272 = load i32, i32* @thermal_zone_device_check, align 4
  %273 = call i32 @INIT_DELAYED_WORK(i32* %271, i32 %272)
  %274 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %275 = call i32 @thermal_zone_device_reset(%struct.thermal_zone_device* %274)
  %276 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %277 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %276, i32 0, i32 5
  %278 = call i64 @atomic_cmpxchg(i32* %277, i32 1, i32 0)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %262
  %281 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %282 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %283 = call i32 @thermal_zone_device_update(%struct.thermal_zone_device* %281, i32 %282)
  br label %284

284:                                              ; preds = %280, %262
  %285 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  store %struct.thermal_zone_device* %285, %struct.thermal_zone_device** %9, align 8
  br label %302

286:                                              ; preds = %260, %240
  %287 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %288 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %287, i32 0, i32 4
  %289 = call i32 @device_del(%struct.TYPE_5__* %288)
  br label %290

290:                                              ; preds = %286, %169
  %291 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %292 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %291, i32 0, i32 4
  %293 = call i32 @put_device(%struct.TYPE_5__* %292)
  store %struct.thermal_zone_device* null, %struct.thermal_zone_device** %18, align 8
  br label %294

294:                                              ; preds = %290, %153
  %295 = load i32, i32* %21, align 4
  %296 = call i32 @ida_simple_remove(i32* @thermal_tz_ida, i32 %295)
  br label %297

297:                                              ; preds = %294, %116
  %298 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %18, align 8
  %299 = call i32 @kfree(%struct.thermal_zone_device* %298)
  %300 = load i32, i32* %22, align 4
  %301 = call %struct.thermal_zone_device* @ERR_PTR(i32 %300)
  store %struct.thermal_zone_device* %301, %struct.thermal_zone_device** %9, align 8
  br label %302

302:                                              ; preds = %297, %284, %98, %89, %71, %63, %44, %31
  %303 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %9, align 8
  ret %struct.thermal_zone_device* %303
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.thermal_zone_device* @ERR_PTR(i32) #1

declare dso_local %struct.thermal_zone_device* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @thermal_zone_create_device_groups(%struct.thermal_zone_device*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.thermal_governor* @__find_governor(i32) #1

declare dso_local i32 @thermal_set_governor(%struct.thermal_zone_device*, %struct.thermal_governor*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @thermal_add_hwmon_sysfs(%struct.thermal_zone_device*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bind_tz(%struct.thermal_zone_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @thermal_zone_device_reset(%struct.thermal_zone_device*) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @thermal_zone_device_update(%struct.thermal_zone_device*, i32) #1

declare dso_local i32 @device_del(%struct.TYPE_5__*) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.thermal_zone_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
