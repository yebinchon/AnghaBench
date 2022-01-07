; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-abx80x.c_abx80x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-abx80x.c_abx80x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i64 }
%struct.i2c_client = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.abx80x_priv = type { %struct.TYPE_12__*, %struct.i2c_client* }
%struct.TYPE_12__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ABX8XX_REG_ID0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to read partnumber\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"model %04x, revision %u.%u, lot %x, wafer %x, uid %x\0A\00", align 1
@ABX8XX_REG_CTRL1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to read control register\0A\00", align 1
@ABX8XX_CTRL_12_24 = common dso_local global i32 0, align 4
@ABX8XX_CTRL_ARST = common dso_local global i32 0, align 4
@ABX8XX_CTRL_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Unable to write control register\0A\00", align 1
@RV1805 = common dso_local global i32 0, align 4
@ABX8XX_REG_CTRL2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Unable to read control2 register\0A\00", align 1
@ABX8XX_CTRL2_RSVD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Unable to write control2 register\0A\00", align 1
@ABX8XX_REG_OUT_CTRL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Unable to read output control register\0A\00", align 1
@ABX8XX_REG_CFG_KEY = common dso_local global i32 0, align 4
@ABX8XX_CFG_KEY_MISC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Unable to write configuration key\0A\00", align 1
@ABX8XX_OUT_CTRL_EXDS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"Unable to write output control register\0A\00", align 1
@ABX80X = common dso_local global i32 0, align 4
@abx80x_caps = common dso_local global %struct.TYPE_14__* null, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"Unknown part: %04x\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"partnumber mismatch %04x != %04x\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Enabling trickle charger: %02x\0A\00", align 1
@ABX8XX_REG_CD_TIMER_CTL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@abx80x_rtc_ops = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"IRQ %d supplied\0A\00", align 1
@abx80x_handle_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"abx8xx\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"unable to request IRQ, alarms disabled\0A\00", align 1
@rtc_calib_attr_group = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"Failed to create sysfs group: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @abx80x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx80x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.abx80x_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [7 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  store %struct.device_node* %23, %struct.device_node** %6, align 8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  %26 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %27 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @I2C_FUNC_I2C, align 4
  %33 = call i32 @i2c_check_functionality(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %412

38:                                               ; preds = %2
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load i32, i32* @ABX8XX_REG_ID0, align 4
  %41 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  %42 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %39, i32 %40, i32 7, i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 1
  %48 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %412

51:                                               ; preds = %38
  %52 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = shl i32 %54, 8
  %56 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = or i32 %55, %58
  store i32 %59, i32* %14, align 4
  %60 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = ashr i32 %62, 3
  store i32 %63, i32* %15, align 4
  %64 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 2
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = and i32 %66, 7
  store i32 %67, i32* %16, align 4
  %68 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 4
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = and i32 %70, 128
  %72 = shl i32 %71, 2
  %73 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 6
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = and i32 %75, 128
  %77 = shl i32 %76, 1
  %78 = or i32 %72, %77
  %79 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 3
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = or i32 %78, %81
  store i32 %82, i32* %17, align 4
  %83 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 4
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = and i32 %85, 127
  %87 = shl i32 %86, 8
  %88 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 5
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = or i32 %87, %90
  store i32 %91, i32* %19, align 4
  %92 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 6
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = and i32 %94, 124
  %96 = ashr i32 %95, 2
  store i32 %96, i32* %18, align 4
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 1
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %19, align 4
  %105 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @dev_info(%struct.TYPE_13__* %98, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = load i32, i32* @ABX8XX_REG_CTRL1, align 4
  %108 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %106, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %51
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 1
  %114 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %412

117:                                              ; preds = %51
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = load i32, i32* @ABX8XX_REG_CTRL1, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @ABX8XX_CTRL_12_24, align 4
  %122 = load i32, i32* @ABX8XX_CTRL_ARST, align 4
  %123 = or i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = and i32 %120, %124
  %126 = load i32, i32* @ABX8XX_CTRL_WRITE, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %118, i32 %119, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %117
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %132, i32 0, i32 1
  %134 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %412

137:                                              ; preds = %117
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @RV1805, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %210

141:                                              ; preds = %137
  %142 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %143 = load i32, i32* @ABX8XX_REG_CTRL2, align 4
  %144 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %142, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 1
  %150 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %149, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %151 = load i32, i32* @EIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %412

153:                                              ; preds = %141
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = load i32, i32* @ABX8XX_REG_CTRL2, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @ABX8XX_CTRL2_RSVD, align 4
  %158 = xor i32 %157, -1
  %159 = and i32 %156, %158
  %160 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %154, i32 %155, i32 %159)
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %153
  %164 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %165 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %164, i32 0, i32 1
  %166 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %167 = load i32, i32* @EIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %412

169:                                              ; preds = %153
  %170 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %171 = load i32, i32* @ABX8XX_REG_OUT_CTRL, align 4
  %172 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %170, i32 %171)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %177 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %176, i32 0, i32 1
  %178 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %177, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %179 = load i32, i32* @EIO, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %3, align 4
  br label %412

181:                                              ; preds = %169
  %182 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %183 = load i32, i32* @ABX8XX_REG_CFG_KEY, align 4
  %184 = load i32, i32* @ABX8XX_CFG_KEY_MISC, align 4
  %185 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %182, i32 %183, i32 %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %181
  %189 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %190 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %189, i32 0, i32 1
  %191 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %190, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %192 = load i32, i32* @EIO, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %3, align 4
  br label %412

194:                                              ; preds = %181
  %195 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %196 = load i32, i32* @ABX8XX_REG_OUT_CTRL, align 4
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* @ABX8XX_OUT_CTRL_EXDS, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %195, i32 %196, i32 %199)
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %194
  %204 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %205 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %204, i32 0, i32 1
  %206 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %205, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %207 = load i32, i32* @EIO, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %3, align 4
  br label %412

209:                                              ; preds = %194
  br label %210

210:                                              ; preds = %209, %137
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* @ABX80X, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %254

214:                                              ; preds = %210
  store i32 0, i32* %8, align 4
  br label %215

215:                                              ; preds = %234, %214
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** @abx80x_caps, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %237

223:                                              ; preds = %215
  %224 = load i32, i32* %14, align 4
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** @abx80x_caps, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp eq i32 %224, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %223
  br label %237

233:                                              ; preds = %223
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  br label %215

237:                                              ; preds = %232, %215
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** @abx80x_caps, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %237
  %246 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %247 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %246, i32 0, i32 1
  %248 = load i32, i32* %14, align 4
  %249 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %247, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %248)
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %3, align 4
  br label %412

252:                                              ; preds = %237
  %253 = load i32, i32* %8, align 4
  store i32 %253, i32* %13, align 4
  br label %254

254:                                              ; preds = %252, %210
  %255 = load i32, i32* %14, align 4
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** @abx80x_caps, align 8
  %257 = load i32, i32* %13, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %255, %261
  br i1 %262, label %263, label %276

263:                                              ; preds = %254
  %264 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %265 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %264, i32 0, i32 1
  %266 = load i32, i32* %14, align 4
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** @abx80x_caps, align 8
  %268 = load i32, i32* %13, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %265, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %266, i32 %272)
  %274 = load i32, i32* @EINVAL, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %3, align 4
  br label %412

276:                                              ; preds = %254
  %277 = load %struct.device_node*, %struct.device_node** %6, align 8
  %278 = icmp ne %struct.device_node* %277, null
  br i1 %278, label %279, label %290

279:                                              ; preds = %276
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** @abx80x_caps, align 8
  %281 = load i32, i32* %13, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %279
  %288 = load %struct.device_node*, %struct.device_node** %6, align 8
  %289 = call i32 @abx80x_dt_trickle_cfg(%struct.device_node* %288)
  store i32 %289, i32* %11, align 4
  br label %290

290:                                              ; preds = %287, %279, %276
  %291 = load i32, i32* %11, align 4
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %290
  %294 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %295 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %294, i32 0, i32 1
  %296 = load i32, i32* %11, align 4
  %297 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @dev_info(%struct.TYPE_13__* %295, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %296)
  %298 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %299 = load i32, i32* %11, align 4
  %300 = call i32 @abx80x_enable_trickle_charger(%struct.i2c_client* %298, i32 %299)
  br label %301

301:                                              ; preds = %293, %290
  %302 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %303 = load i32, i32* @ABX8XX_REG_CD_TIMER_CTL, align 4
  %304 = call i32 @BIT(i32 2)
  %305 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %302, i32 %303, i32 %304)
  store i32 %305, i32* %10, align 4
  %306 = load i32, i32* %10, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %301
  %309 = load i32, i32* %10, align 4
  store i32 %309, i32* %3, align 4
  br label %412

310:                                              ; preds = %301
  %311 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %312 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %311, i32 0, i32 1
  %313 = load i32, i32* @GFP_KERNEL, align 4
  %314 = call %struct.abx80x_priv* @devm_kzalloc(%struct.TYPE_13__* %312, i32 16, i32 %313)
  store %struct.abx80x_priv* %314, %struct.abx80x_priv** %7, align 8
  %315 = load %struct.abx80x_priv*, %struct.abx80x_priv** %7, align 8
  %316 = icmp eq %struct.abx80x_priv* %315, null
  br i1 %316, label %317, label %320

317:                                              ; preds = %310
  %318 = load i32, i32* @ENOMEM, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %3, align 4
  br label %412

320:                                              ; preds = %310
  %321 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %322 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %321, i32 0, i32 1
  %323 = call %struct.TYPE_12__* @devm_rtc_allocate_device(%struct.TYPE_13__* %322)
  %324 = load %struct.abx80x_priv*, %struct.abx80x_priv** %7, align 8
  %325 = getelementptr inbounds %struct.abx80x_priv, %struct.abx80x_priv* %324, i32 0, i32 0
  store %struct.TYPE_12__* %323, %struct.TYPE_12__** %325, align 8
  %326 = load %struct.abx80x_priv*, %struct.abx80x_priv** %7, align 8
  %327 = getelementptr inbounds %struct.abx80x_priv, %struct.abx80x_priv* %326, i32 0, i32 0
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %327, align 8
  %329 = call i64 @IS_ERR(%struct.TYPE_12__* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %320
  %332 = load %struct.abx80x_priv*, %struct.abx80x_priv** %7, align 8
  %333 = getelementptr inbounds %struct.abx80x_priv, %struct.abx80x_priv* %332, i32 0, i32 0
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %333, align 8
  %335 = call i32 @PTR_ERR(%struct.TYPE_12__* %334)
  store i32 %335, i32* %3, align 4
  br label %412

336:                                              ; preds = %320
  %337 = load %struct.abx80x_priv*, %struct.abx80x_priv** %7, align 8
  %338 = getelementptr inbounds %struct.abx80x_priv, %struct.abx80x_priv* %337, i32 0, i32 0
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 0
  store i32* @abx80x_rtc_ops, i32** %340, align 8
  %341 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %342 = load %struct.abx80x_priv*, %struct.abx80x_priv** %7, align 8
  %343 = getelementptr inbounds %struct.abx80x_priv, %struct.abx80x_priv* %342, i32 0, i32 1
  store %struct.i2c_client* %341, %struct.i2c_client** %343, align 8
  %344 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %345 = load %struct.abx80x_priv*, %struct.abx80x_priv** %7, align 8
  %346 = call i32 @i2c_set_clientdata(%struct.i2c_client* %344, %struct.abx80x_priv* %345)
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** @abx80x_caps, align 8
  %348 = load i32, i32* %13, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %362

354:                                              ; preds = %336
  %355 = load %struct.abx80x_priv*, %struct.abx80x_priv** %7, align 8
  %356 = call i32 @abx80x_setup_watchdog(%struct.abx80x_priv* %355)
  store i32 %356, i32* %10, align 4
  %357 = load i32, i32* %10, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %354
  %360 = load i32, i32* %10, align 4
  store i32 %360, i32* %3, align 4
  br label %412

361:                                              ; preds = %354
  br label %362

362:                                              ; preds = %361, %336
  %363 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %364 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = icmp sgt i32 %365, 0
  br i1 %366, label %367, label %394

367:                                              ; preds = %362
  %368 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %369 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %368, i32 0, i32 1
  %370 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %371 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @dev_info(%struct.TYPE_13__* %369, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %372)
  %374 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %375 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %374, i32 0, i32 1
  %376 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %377 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @abx80x_handle_irq, align 4
  %380 = load i32, i32* @IRQF_SHARED, align 4
  %381 = load i32, i32* @IRQF_ONESHOT, align 4
  %382 = or i32 %380, %381
  %383 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %384 = call i32 @devm_request_threaded_irq(%struct.TYPE_13__* %375, i32 %378, i32* null, i32 %379, i32 %382, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.i2c_client* %383)
  store i32 %384, i32* %10, align 4
  %385 = load i32, i32* %10, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %367
  %388 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %389 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %388, i32 0, i32 1
  %390 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %389, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %391 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %392 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %391, i32 0, i32 0
  store i32 0, i32* %392, align 8
  br label %393

393:                                              ; preds = %387, %367
  br label %394

394:                                              ; preds = %393, %362
  %395 = load %struct.abx80x_priv*, %struct.abx80x_priv** %7, align 8
  %396 = getelementptr inbounds %struct.abx80x_priv, %struct.abx80x_priv* %395, i32 0, i32 0
  %397 = load %struct.TYPE_12__*, %struct.TYPE_12__** %396, align 8
  %398 = call i32 @rtc_add_group(%struct.TYPE_12__* %397, i32* @rtc_calib_attr_group)
  store i32 %398, i32* %10, align 4
  %399 = load i32, i32* %10, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %407

401:                                              ; preds = %394
  %402 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %403 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %402, i32 0, i32 1
  %404 = load i32, i32* %10, align 4
  %405 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %403, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i32 %404)
  %406 = load i32, i32* %10, align 4
  store i32 %406, i32* %3, align 4
  br label %412

407:                                              ; preds = %394
  %408 = load %struct.abx80x_priv*, %struct.abx80x_priv** %7, align 8
  %409 = getelementptr inbounds %struct.abx80x_priv, %struct.abx80x_priv* %408, i32 0, i32 0
  %410 = load %struct.TYPE_12__*, %struct.TYPE_12__** %409, align 8
  %411 = call i32 @rtc_register_device(%struct.TYPE_12__* %410)
  store i32 %411, i32* %3, align 4
  br label %412

412:                                              ; preds = %407, %401, %359, %331, %317, %308, %263, %245, %203, %188, %175, %163, %147, %131, %111, %45, %35
  %413 = load i32, i32* %3, align 4
  ret i32 %413
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*, i32, ...) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @abx80x_dt_trickle_cfg(%struct.device_node*) #1

declare dso_local i32 @abx80x_enable_trickle_charger(%struct.i2c_client*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.abx80x_priv* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @devm_rtc_allocate_device(%struct.TYPE_13__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_12__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_12__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.abx80x_priv*) #1

declare dso_local i32 @abx80x_setup_watchdog(%struct.abx80x_priv*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_13__*, i32, i32*, i32, i32, i8*, %struct.i2c_client*) #1

declare dso_local i32 @rtc_add_group(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
