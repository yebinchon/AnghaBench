; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl1208.c_isl1208_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl1208.c_isl1208_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i32 }
%struct.TYPE_17__ = type { %struct.isl1208_state*, i32 }
%struct.isl1208_state = type { %struct.TYPE_16__*, %struct.TYPE_17__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32* }
%struct.i2c_client = type { i32, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i64 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ISL_LAST_ID = common dso_local global i64 0, align 8
@isl1208_configs = common dso_local global %struct.TYPE_18__* null, align 8
@isl1208_rtc_ops = common dso_local global i32 0, align 4
@isl1208_nvmem_config = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"reading status failed\0A\00", align 1
@ISL1208_REG_SR_RTCF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"rtc power failure detected, please set clock.\0A\00", align 1
@ISL1219_REG_EV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to read EV reg\0A\00", align 1
@ISL1219_REG_EV_EVEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"isil,ev-evienb\00", align 1
@ISL1219_REG_EV_EVIENB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"could not enable tamper detection\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"evdet\00", align 1
@isl1219_rtc_sysfs_files = common dso_local global i32 0, align 4
@isl1208_rtc_sysfs_files = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @isl1208_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl1208_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.isl1208_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @I2C_FUNC_I2C, align 4
  %15 = call i32 @i2c_check_functionality(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %264

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = call i64 @isl1208_i2c_validate_client(%struct.i2c_client* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %264

27:                                               ; preds = %20
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.isl1208_state* @devm_kzalloc(%struct.TYPE_19__* %29, i32 32, i32 %30)
  store %struct.isl1208_state* %31, %struct.isl1208_state** %7, align 8
  %32 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %33 = icmp ne %struct.isl1208_state* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %264

37:                                               ; preds = %27
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %40 = call i32 @i2c_set_clientdata(%struct.i2c_client* %38, %struct.isl1208_state* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load %struct.device_node*, %struct.device_node** %43, align 8
  %45 = icmp ne %struct.device_node* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %37
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 1
  %49 = call %struct.TYPE_18__* @of_device_get_match_data(%struct.TYPE_19__* %48)
  %50 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %51 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %50, i32 0, i32 2
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %51, align 8
  %52 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %53 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %52, i32 0, i32 2
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = icmp ne %struct.TYPE_18__* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %264

59:                                               ; preds = %46
  br label %77

60:                                               ; preds = %37
  %61 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %62 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ISL_LAST_ID, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %264

69:                                               ; preds = %60
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** @isl1208_configs, align 8
  %71 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %72 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i64 %73
  %75 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %76 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %75, i32 0, i32 2
  store %struct.TYPE_18__* %74, %struct.TYPE_18__** %76, align 8
  br label %77

77:                                               ; preds = %69, %59
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 1
  %80 = call %struct.TYPE_16__* @devm_rtc_allocate_device(%struct.TYPE_19__* %79)
  %81 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %82 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %81, i32 0, i32 0
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %82, align 8
  %83 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %84 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %83, i32 0, i32 0
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = call i64 @IS_ERR(%struct.TYPE_16__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %90 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %89, i32 0, i32 0
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = call i32 @PTR_ERR(%struct.TYPE_16__* %91)
  store i32 %92, i32* %3, align 4
  br label %264

93:                                               ; preds = %77
  %94 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %95 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %94, i32 0, i32 0
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  store i32* @isl1208_rtc_ops, i32** %97, align 8
  %98 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %99 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %98, i32 0, i32 1
  %100 = bitcast %struct.TYPE_17__* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 bitcast (%struct.TYPE_17__* @isl1208_nvmem_config to i8*), i64 16, i1 false)
  %101 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %102 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %101, i32 0, i32 2
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %107 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 8
  %109 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %110 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %111 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  store %struct.isl1208_state* %109, %struct.isl1208_state** %112, align 8
  %113 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %114 = call i32 @isl1208_i2c_get_sr(%struct.i2c_client* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %93
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 1
  %120 = call i32 @dev_err(%struct.TYPE_19__* %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %3, align 4
  br label %264

122:                                              ; preds = %93
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @ISL1208_REG_SR_RTCF, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %128, i32 0, i32 1
  %130 = call i32 @dev_warn(%struct.TYPE_19__* %129, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %131

131:                                              ; preds = %127, %122
  %132 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %133 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %132, i32 0, i32 2
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %188

138:                                              ; preds = %131
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load %struct.device_node*, %struct.device_node** %141, align 8
  store %struct.device_node* %142, %struct.device_node** %9, align 8
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = load i32, i32* @ISL1219_REG_EV, align 4
  %145 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %143, i32 %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %138
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 1
  %151 = call i32 @dev_err(%struct.TYPE_19__* %150, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %3, align 4
  br label %264

153:                                              ; preds = %138
  %154 = load i32, i32* @ISL1219_REG_EV_EVEN, align 4
  %155 = load i32, i32* %6, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %6, align 4
  %157 = load %struct.device_node*, %struct.device_node** %9, align 8
  %158 = call i32 @of_property_read_u32(%struct.device_node* %157, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64* %10)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %173, label %160

160:                                              ; preds = %153
  %161 = load i64, i64* %10, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load i32, i32* @ISL1219_REG_EV_EVIENB, align 4
  %165 = load i32, i32* %6, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %6, align 4
  br label %172

167:                                              ; preds = %160
  %168 = load i32, i32* @ISL1219_REG_EV_EVIENB, align 4
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %6, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %167, %163
  br label %173

173:                                              ; preds = %172, %153
  %174 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %175 = load i32, i32* @ISL1219_REG_EV, align 4
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %174, i32 %175, i32 %176)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %173
  %181 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %182 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %181, i32 0, i32 1
  %183 = call i32 @dev_err(%struct.TYPE_19__* %182, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %3, align 4
  br label %264

185:                                              ; preds = %173
  %186 = load %struct.device_node*, %struct.device_node** %9, align 8
  %187 = call i32 @of_irq_get_byname(%struct.device_node* %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %185, %131
  %189 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %190 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %189, i32 0, i32 2
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %188
  %196 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %197 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %196, i32 0, i32 0
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = call i32 @rtc_add_group(%struct.TYPE_16__* %198, i32* @isl1219_rtc_sysfs_files)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %195
  %203 = load i32, i32* %6, align 4
  store i32 %203, i32* %3, align 4
  br label %264

204:                                              ; preds = %195
  br label %205

205:                                              ; preds = %204, %188
  %206 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %207 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %206, i32 0, i32 0
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = call i32 @rtc_add_group(%struct.TYPE_16__* %208, i32* @isl1208_rtc_sysfs_files)
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* %6, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %205
  %213 = load i32, i32* %6, align 4
  store i32 %213, i32* %3, align 4
  br label %264

214:                                              ; preds = %205
  %215 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %216 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %214
  %220 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %221 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %222 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @isl1208_setup_irq(%struct.i2c_client* %220, i32 %223)
  store i32 %224, i32* %6, align 4
  br label %225

225:                                              ; preds = %219, %214
  %226 = load i32, i32* %6, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %225
  %229 = load i32, i32* %6, align 4
  store i32 %229, i32* %3, align 4
  br label %264

230:                                              ; preds = %225
  %231 = load i32, i32* %8, align 4
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %230
  %234 = load i32, i32* %8, align 4
  %235 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %236 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %234, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @isl1208_setup_irq(%struct.i2c_client* %240, i32 %241)
  store i32 %242, i32* %6, align 4
  br label %243

243:                                              ; preds = %239, %233, %230
  %244 = load i32, i32* %6, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = load i32, i32* %6, align 4
  store i32 %247, i32* %3, align 4
  br label %264

248:                                              ; preds = %243
  %249 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %250 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %249, i32 0, i32 0
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %250, align 8
  %252 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %253 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %252, i32 0, i32 1
  %254 = call i32 @rtc_nvmem_register(%struct.TYPE_16__* %251, %struct.TYPE_17__* %253)
  store i32 %254, i32* %6, align 4
  %255 = load i32, i32* %6, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %248
  %258 = load i32, i32* %6, align 4
  store i32 %258, i32* %3, align 4
  br label %264

259:                                              ; preds = %248
  %260 = load %struct.isl1208_state*, %struct.isl1208_state** %7, align 8
  %261 = getelementptr inbounds %struct.isl1208_state, %struct.isl1208_state* %260, i32 0, i32 0
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %261, align 8
  %263 = call i32 @rtc_register_device(%struct.TYPE_16__* %262)
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %259, %257, %246, %228, %212, %202, %180, %148, %117, %88, %66, %56, %34, %24, %17
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i64 @isl1208_i2c_validate_client(%struct.i2c_client*) #1

declare dso_local %struct.isl1208_state* @devm_kzalloc(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.isl1208_state*) #1

declare dso_local %struct.TYPE_18__* @of_device_get_match_data(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_16__* @devm_rtc_allocate_device(%struct.TYPE_19__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_16__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_16__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @isl1208_i2c_get_sr(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @of_irq_get_byname(%struct.device_node*, i8*) #1

declare dso_local i32 @rtc_add_group(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @isl1208_setup_irq(%struct.i2c_client*, i32) #1

declare dso_local i32 @rtc_nvmem_register(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
