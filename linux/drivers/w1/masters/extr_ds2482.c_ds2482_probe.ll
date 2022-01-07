; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.ds2482_data = type { i32, %struct.TYPE_4__*, i32, %struct.i2c_client* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__, %struct.ds2482_data* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }

@ENODEV = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DS2482_CMD_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DS2482 reset failed.\0A\00", align 1
@DS2482_REG_STS_LL = common dso_local global i32 0, align 4
@DS2482_REG_STS_RST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"DS2482 reset status 0x%02X - not a DS2482\0A\00", align 1
@DS2482_CMD_WRITE_CONFIG = common dso_local global i32 0, align 4
@ds2482_w1_read_byte = common dso_local global i32 0, align 4
@ds2482_w1_write_byte = common dso_local global i32 0, align 4
@ds2482_w1_touch_bit = common dso_local global i32 0, align 4
@ds2482_w1_triplet = common dso_local global i32 0, align 4
@ds2482_w1_reset_bus = common dso_local global i32 0, align 4
@ds2482_w1_set_pullup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ds2482_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2482_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ds2482_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @i2c_check_functionality(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %226

23:                                               ; preds = %2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ds2482_data* @kzalloc(i32 32, i32 %24)
  store %struct.ds2482_data* %25, %struct.ds2482_data** %6, align 8
  %26 = icmp ne %struct.ds2482_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %224

30:                                               ; preds = %23
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %33 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %32, i32 0, i32 3
  store %struct.i2c_client* %31, %struct.i2c_client** %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %36 = call i32 @i2c_set_clientdata(%struct.i2c_client* %34, %struct.ds2482_data* %35)
  %37 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %38 = load i32, i32* @DS2482_CMD_RESET, align 4
  %39 = call i64 @ds2482_send_cmd(%struct.ds2482_data* %37, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 (i32*, i8*, ...) @dev_warn(i32* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %221

45:                                               ; preds = %30
  %46 = call i32 @ndelay(i32 525)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = call i32 @i2c_smbus_read_byte(%struct.i2c_client* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @DS2482_REG_STS_LL, align 4
  %51 = load i32, i32* @DS2482_REG_STS_RST, align 4
  %52 = or i32 %50, %51
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_warn(i32* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %221

59:                                               ; preds = %45
  %60 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %61 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %63 = call i64 @ds2482_set_channel(%struct.ds2482_data* %62, i32 7)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %67 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %66, i32 0, i32 0
  store i32 8, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %70 = load i32, i32* @DS2482_CMD_WRITE_CONFIG, align 4
  %71 = call i32 @ds2482_calculate_config(i32 0)
  %72 = call i32 @ds2482_send_cmd_data(%struct.ds2482_data* %69, i32 %70, i32 %71)
  %73 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %74 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %73, i32 0, i32 2
  %75 = call i32 @mutex_init(i32* %74)
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %186, %68
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %79 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %189

82:                                               ; preds = %76
  %83 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %84 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %85 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store %struct.ds2482_data* %83, %struct.ds2482_data** %90, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %93 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %91, i32* %98, align 8
  %99 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %100 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %106 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 6
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %112, align 8
  %113 = load i32, i32* @ds2482_w1_read_byte, align 4
  %114 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %115 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 5
  store i32 %113, i32* %121, align 4
  %122 = load i32, i32* @ds2482_w1_write_byte, align 4
  %123 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %124 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  store i32 %122, i32* %130, align 8
  %131 = load i32, i32* @ds2482_w1_touch_bit, align 4
  %132 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %133 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  store i32 %131, i32* %139, align 4
  %140 = load i32, i32* @ds2482_w1_triplet, align 4
  %141 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %142 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  store i32 %140, i32* %148, align 8
  %149 = load i32, i32* @ds2482_w1_reset_bus, align 4
  %150 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %151 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  store i32 %149, i32* %157, align 4
  %158 = load i32, i32* @ds2482_w1_set_pullup, align 4
  %159 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %160 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %159, i32 0, i32 1
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  store i32 %158, i32* %166, align 8
  %167 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %168 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %167, i32 0, i32 1
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = call i32 @w1_add_master_device(%struct.TYPE_5__* %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %82
  %178 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %179 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %178, i32 0, i32 1
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 2
  store %struct.ds2482_data* null, %struct.ds2482_data** %184, align 8
  br label %190

185:                                              ; preds = %82
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %76

189:                                              ; preds = %76
  store i32 0, i32* %3, align 4
  br label %226

190:                                              ; preds = %177
  store i32 0, i32* %9, align 4
  br label %191

191:                                              ; preds = %217, %190
  %192 = load i32, i32* %9, align 4
  %193 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %194 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %220

197:                                              ; preds = %191
  %198 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %199 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %198, i32 0, i32 1
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  %205 = load %struct.ds2482_data*, %struct.ds2482_data** %204, align 8
  %206 = icmp ne %struct.ds2482_data* %205, null
  br i1 %206, label %207, label %216

207:                                              ; preds = %197
  %208 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %209 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %208, i32 0, i32 1
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = call i32 @w1_remove_master_device(%struct.TYPE_5__* %214)
  br label %216

216:                                              ; preds = %207, %197
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %9, align 4
  br label %191

220:                                              ; preds = %191
  br label %221

221:                                              ; preds = %220, %54, %41
  %222 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %223 = call i32 @kfree(%struct.ds2482_data* %222)
  br label %224

224:                                              ; preds = %221, %27
  %225 = load i32, i32* %7, align 4
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %224, %189, %20
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.ds2482_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ds2482_data*) #1

declare dso_local i64 @ds2482_send_cmd(%struct.ds2482_data*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @i2c_smbus_read_byte(%struct.i2c_client*) #1

declare dso_local i64 @ds2482_set_channel(%struct.ds2482_data*, i32) #1

declare dso_local i32 @ds2482_send_cmd_data(%struct.ds2482_data*, i32, i32) #1

declare dso_local i32 @ds2482_calculate_config(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @w1_add_master_device(%struct.TYPE_5__*) #1

declare dso_local i32 @w1_remove_master_device(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.ds2482_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
