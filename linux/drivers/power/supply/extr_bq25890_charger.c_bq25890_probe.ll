; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_field = type { i32 }
%struct.i2c_client = type { i32, %struct.device, %struct.i2c_adapter* }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.bq25890_device = type { i64, %struct.TYPE_3__, i32, i32, i32*, i32, i32, %struct.device*, %struct.i2c_client* }
%struct.TYPE_3__ = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No support for SMBUS_BYTE_DATA\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bq25890_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate register map\0A\00", align 1
@bq25890_reg_fields = common dso_local global %struct.reg_field* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot allocate regmap field\0A\00", align 1
@F_PN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Cannot read chip ID.\0A\00", align 1
@BQ25890_ID = common dso_local global i64 0, align 8
@BQ25895_ID = common dso_local global i64 0, align 8
@BQ25896_ID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Chip with ID=%d, not supported!\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Cannot read device properties.\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Cannot initialize the chip.\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"No irq resource found.\0A\00", align 1
@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@bq25890_usb_work = common dso_local global i32 0, align 4
@bq25890_usb_notifier = common dso_local global i32 0, align 4
@bq25890_irq_handler_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@BQ25890_IRQ_PIN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Failed to register power supply\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bq25890_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq25890_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.bq25890_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.reg_field*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 2
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %18 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %19 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %269

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.bq25890_device* @devm_kzalloc(%struct.device* %27, i32 56, i32 %28)
  store %struct.bq25890_device* %29, %struct.bq25890_device** %8, align 8
  %30 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %31 = icmp ne %struct.bq25890_device* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %269

35:                                               ; preds = %26
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %38 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %37, i32 0, i32 8
  store %struct.i2c_client* %36, %struct.i2c_client** %38, align 8
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %41 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %40, i32 0, i32 7
  store %struct.device* %39, %struct.device** %41, align 8
  %42 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %43 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %42, i32 0, i32 6
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %45, i32* @bq25890_regmap_config)
  %47 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %48 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %50 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %35
  %55 = load %struct.device*, %struct.device** %7, align 8
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %58 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %3, align 4
  br label %269

61:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %107, %61
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.reg_field*, %struct.reg_field** @bq25890_reg_fields, align 8
  %65 = call i32 @ARRAY_SIZE(%struct.reg_field* %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %110

67:                                               ; preds = %62
  %68 = load %struct.reg_field*, %struct.reg_field** @bq25890_reg_fields, align 8
  store %struct.reg_field* %68, %struct.reg_field** %11, align 8
  %69 = load %struct.device*, %struct.device** %7, align 8
  %70 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %71 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.reg_field*, %struct.reg_field** %11, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %73, i64 %75
  %77 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @devm_regmap_field_alloc(%struct.device* %69, i32 %72, i32 %78)
  %80 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %81 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  %86 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %87 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @IS_ERR(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %67
  %96 = load %struct.device*, %struct.device** %7, align 8
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %99 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @PTR_ERR(i32 %104)
  store i32 %105, i32* %3, align 4
  br label %269

106:                                              ; preds = %67
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %62

110:                                              ; preds = %62
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %113 = call i32 @i2c_set_clientdata(%struct.i2c_client* %111, %struct.bq25890_device* %112)
  %114 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %115 = load i32, i32* @F_PN, align 4
  %116 = call i64 @bq25890_field_read(%struct.bq25890_device* %114, i32 %115)
  %117 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %118 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %120 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %110
  %124 = load %struct.device*, %struct.device** %7, align 8
  %125 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %126 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %127 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %3, align 4
  br label %269

130:                                              ; preds = %110
  %131 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %132 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @BQ25890_ID, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %156

136:                                              ; preds = %130
  %137 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %138 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @BQ25895_ID, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %136
  %143 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %144 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @BQ25896_ID, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %142
  %149 = load %struct.device*, %struct.device** %7, align 8
  %150 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %151 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %152)
  %154 = load i32, i32* @ENODEV, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %269

156:                                              ; preds = %142, %136, %130
  %157 = load %struct.device*, %struct.device** %7, align 8
  %158 = getelementptr inbounds %struct.device, %struct.device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %156
  %162 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %163 = call i32 @bq25890_fw_probe(%struct.bq25890_device* %162)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load %struct.device*, %struct.device** %7, align 8
  %168 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %167, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %3, align 4
  br label %269

170:                                              ; preds = %161
  br label %174

171:                                              ; preds = %156
  %172 = load i32, i32* @ENODEV, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %3, align 4
  br label %269

174:                                              ; preds = %170
  %175 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %176 = call i32 @bq25890_hw_init(%struct.bq25890_device* %175)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load %struct.device*, %struct.device** %7, align 8
  %181 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %180, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %3, align 4
  br label %269

183:                                              ; preds = %174
  %184 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %185 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp sle i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %190 = call i32 @bq25890_irq_probe(%struct.bq25890_device* %189)
  %191 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %192 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %188, %183
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %193
  %199 = load %struct.device*, %struct.device** %7, align 8
  %200 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %199, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %201 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %202 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  store i32 %203, i32* %3, align 4
  br label %269

204:                                              ; preds = %193
  %205 = load %struct.device*, %struct.device** %7, align 8
  %206 = load i32, i32* @USB_PHY_TYPE_USB2, align 4
  %207 = call i32 @devm_usb_get_phy(%struct.device* %205, i32 %206)
  %208 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %209 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 4
  %210 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %211 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @IS_ERR_OR_NULL(i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %230, label %215

215:                                              ; preds = %204
  %216 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %217 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %216, i32 0, i32 3
  %218 = load i32, i32* @bq25890_usb_work, align 4
  %219 = call i32 @INIT_WORK(i32* %217, i32 %218)
  %220 = load i32, i32* @bq25890_usb_notifier, align 4
  %221 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %222 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  store i32 %220, i32* %223, align 8
  %224 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %225 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %228 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %227, i32 0, i32 1
  %229 = call i32 @usb_register_notifier(i32 %226, %struct.TYPE_3__* %228)
  br label %230

230:                                              ; preds = %215, %204
  %231 = load %struct.device*, %struct.device** %7, align 8
  %232 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %233 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @bq25890_irq_handler_thread, align 4
  %236 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %237 = load i32, i32* @IRQF_ONESHOT, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @BQ25890_IRQ_PIN, align 4
  %240 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %241 = call i32 @devm_request_threaded_irq(%struct.device* %231, i32 %234, i32* null, i32 %235, i32 %238, i32 %239, %struct.bq25890_device* %240)
  store i32 %241, i32* %9, align 4
  %242 = load i32, i32* %9, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %230
  br label %254

245:                                              ; preds = %230
  %246 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %247 = call i32 @bq25890_power_supply_init(%struct.bq25890_device* %246)
  store i32 %247, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %245
  %251 = load %struct.device*, %struct.device** %7, align 8
  %252 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %251, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %254

253:                                              ; preds = %245
  store i32 0, i32* %3, align 4
  br label %269

254:                                              ; preds = %250, %244
  %255 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %256 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @IS_ERR_OR_NULL(i32 %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %267, label %260

260:                                              ; preds = %254
  %261 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %262 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.bq25890_device*, %struct.bq25890_device** %8, align 8
  %265 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %264, i32 0, i32 1
  %266 = call i32 @usb_unregister_notifier(i32 %263, %struct.TYPE_3__* %265)
  br label %267

267:                                              ; preds = %260, %254
  %268 = load i32, i32* %9, align 4
  store i32 %268, i32* %3, align 4
  br label %269

269:                                              ; preds = %267, %253, %198, %179, %171, %166, %148, %123, %95, %54, %32, %21
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.bq25890_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.reg_field*) #1

declare dso_local i32 @devm_regmap_field_alloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.bq25890_device*) #1

declare dso_local i64 @bq25890_field_read(%struct.bq25890_device*, i32) #1

declare dso_local i32 @bq25890_fw_probe(%struct.bq25890_device*) #1

declare dso_local i32 @bq25890_hw_init(%struct.bq25890_device*) #1

declare dso_local i32 @bq25890_irq_probe(%struct.bq25890_device*) #1

declare dso_local i32 @devm_usb_get_phy(%struct.device*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @usb_register_notifier(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.bq25890_device*) #1

declare dso_local i32 @bq25890_power_supply_init(%struct.bq25890_device*) #1

declare dso_local i32 @usb_unregister_notifier(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
