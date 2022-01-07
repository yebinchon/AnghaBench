; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_field = type { i32 }
%struct.i2c_client = type { i32, %struct.device, %struct.i2c_adapter* }
%struct.device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.acpi_device_id = type { i64 }
%struct.bq24257_device = type { i32, i32, %struct.device*, i32, i32, i32*, i32, i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No support for SMBUS_BYTE_DATA\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to match ACPI device\0A\00", align 1
@bq24257_regmap_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to allocate register map\0A\00", align 1
@bq24257_reg_fields = common dso_local global %struct.reg_field* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot allocate regmap field\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Cannot read device properties.\0A\00", align 1
@BQ24250 = common dso_local global i64 0, align 8
@bq24257_iilimit_setup_work = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"using SW-based power-good detection\0A\00", align 1
@F_RESET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Cannot initialize the chip.\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed to register power supply\0A\00", align 1
@bq24257_irq_handler_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@bq2425x_chip_name = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ #%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bq24257_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24257_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.acpi_device_id*, align 8
  %9 = alloca %struct.bq24257_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.reg_field*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %6, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  store %struct.device* %17, %struct.device** %7, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %19 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %20 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %284

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.bq24257_device* @devm_kzalloc(%struct.device* %28, i32 48, i32 %29)
  store %struct.bq24257_device* %30, %struct.bq24257_device** %9, align 8
  %31 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %32 = icmp ne %struct.bq24257_device* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %284

36:                                               ; preds = %27
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %39 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %38, i32 0, i32 8
  store %struct.i2c_client* %37, %struct.i2c_client** %39, align 8
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %42 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %41, i32 0, i32 2
  store %struct.device* %40, %struct.device** %42, align 8
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = call i64 @ACPI_HANDLE(%struct.device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %36
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 1
  %54 = call %struct.acpi_device_id* @acpi_match_device(i32 %51, %struct.device* %53)
  store %struct.acpi_device_id* %54, %struct.acpi_device_id** %8, align 8
  %55 = load %struct.acpi_device_id*, %struct.acpi_device_id** %8, align 8
  %56 = icmp ne %struct.acpi_device_id* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %46
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %284

62:                                               ; preds = %46
  %63 = load %struct.acpi_device_id*, %struct.acpi_device_id** %8, align 8
  %64 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %68 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %76

69:                                               ; preds = %36
  %70 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %71 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %75 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %69, %62
  %77 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %78 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %77, i32 0, i32 7
  %79 = call i32 @mutex_init(i32* %78)
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %80, i32* @bq24257_regmap_config)
  %82 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %83 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %85 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %76
  %90 = load %struct.device*, %struct.device** %7, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %93 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @PTR_ERR(i32 %94)
  store i32 %95, i32* %3, align 4
  br label %284

96:                                               ; preds = %76
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %142, %96
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.reg_field*, %struct.reg_field** @bq24257_reg_fields, align 8
  %100 = call i32 @ARRAY_SIZE(%struct.reg_field* %99)
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %145

102:                                              ; preds = %97
  %103 = load %struct.reg_field*, %struct.reg_field** @bq24257_reg_fields, align 8
  store %struct.reg_field* %103, %struct.reg_field** %12, align 8
  %104 = load %struct.device*, %struct.device** %7, align 8
  %105 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %106 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.reg_field*, %struct.reg_field** %12, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %108, i64 %110
  %112 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @devm_regmap_field_alloc(%struct.device* %104, i32 %107, i32 %113)
  %115 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %116 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %115, i32 0, i32 5
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %114, i32* %120, align 4
  %121 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %122 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @IS_ERR(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %102
  %131 = load %struct.device*, %struct.device** %7, align 8
  %132 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %131, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %133 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %134 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @PTR_ERR(i32 %139)
  store i32 %140, i32* %3, align 4
  br label %284

141:                                              ; preds = %102
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %97

145:                                              ; preds = %97
  %146 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %147 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %148 = call i32 @i2c_set_clientdata(%struct.i2c_client* %146, %struct.bq24257_device* %147)
  %149 = load %struct.device*, %struct.device** %7, align 8
  %150 = getelementptr inbounds %struct.device, %struct.device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %145
  %154 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %155 = call i32 @bq24257_fw_probe(%struct.bq24257_device* %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load %struct.device*, %struct.device** %7, align 8
  %160 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %159, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %161 = load i32, i32* %10, align 4
  store i32 %161, i32* %3, align 4
  br label %284

162:                                              ; preds = %153
  br label %166

163:                                              ; preds = %145
  %164 = load i32, i32* @ENODEV, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %284

166:                                              ; preds = %162
  %167 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %168 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* @BQ24250, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %166
  %174 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %175 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %174, i32 0, i32 1
  store i32 0, i32* %175, align 4
  br label %176

176:                                              ; preds = %173, %166
  %177 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %178 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %183 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %182, i32 0, i32 4
  %184 = load i32, i32* @bq24257_iilimit_setup_work, align 4
  %185 = call i32 @INIT_DELAYED_WORK(i32* %183, i32 %184)
  br label %186

186:                                              ; preds = %181, %176
  %187 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %188 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* @BQ24250, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %195 = call i32 @bq24257_pg_gpio_probe(%struct.bq24257_device* %194)
  br label %196

196:                                              ; preds = %193, %186
  %197 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %198 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @PTR_ERR(i32 %199)
  %201 = load i32, i32* @EPROBE_DEFER, align 4
  %202 = sub nsw i32 0, %201
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %196
  %205 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %206 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @PTR_ERR(i32 %207)
  store i32 %208, i32* %3, align 4
  br label %284

209:                                              ; preds = %196
  %210 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %211 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %209
  %215 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %216 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %215, i32 0, i32 2
  %217 = load %struct.device*, %struct.device** %216, align 8
  %218 = call i32 @dev_info(%struct.device* %217, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %219

219:                                              ; preds = %214, %209
  br label %220

220:                                              ; preds = %219
  %221 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %222 = load i32, i32* @F_RESET, align 4
  %223 = call i32 @bq24257_field_write(%struct.bq24257_device* %221, i32 %222, i32 1)
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %220
  %227 = load i32, i32* %10, align 4
  store i32 %227, i32* %3, align 4
  br label %284

228:                                              ; preds = %220
  %229 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %230 = load i32, i32* @F_RESET, align 4
  %231 = call i32 @bq24257_field_write(%struct.bq24257_device* %229, i32 %230, i32 0)
  store i32 %231, i32* %10, align 4
  %232 = load i32, i32* %10, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %228
  %235 = load i32, i32* %10, align 4
  store i32 %235, i32* %3, align 4
  br label %284

236:                                              ; preds = %228
  %237 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %238 = call i32 @bq24257_hw_init(%struct.bq24257_device* %237)
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = load %struct.device*, %struct.device** %7, align 8
  %243 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %242, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %244 = load i32, i32* %10, align 4
  store i32 %244, i32* %3, align 4
  br label %284

245:                                              ; preds = %236
  %246 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %247 = call i32 @bq24257_power_supply_init(%struct.bq24257_device* %246)
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load %struct.device*, %struct.device** %7, align 8
  %252 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %251, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %253 = load i32, i32* %10, align 4
  store i32 %253, i32* %3, align 4
  br label %284

254:                                              ; preds = %245
  %255 = load %struct.device*, %struct.device** %7, align 8
  %256 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %257 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @bq24257_irq_handler_thread, align 4
  %260 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %261 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @IRQF_ONESHOT, align 4
  %264 = or i32 %262, %263
  %265 = load i32*, i32** @bq2425x_chip_name, align 8
  %266 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %267 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %265, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %273 = call i32 @devm_request_threaded_irq(%struct.device* %255, i32 %258, i32* null, i32 %259, i32 %264, i32 %271, %struct.bq24257_device* %272)
  store i32 %273, i32* %10, align 4
  %274 = load i32, i32* %10, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %254
  %277 = load %struct.device*, %struct.device** %7, align 8
  %278 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %279 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %277, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %280)
  %282 = load i32, i32* %10, align 4
  store i32 %282, i32* %3, align 4
  br label %284

283:                                              ; preds = %254
  store i32 0, i32* %3, align 4
  br label %284

284:                                              ; preds = %283, %276, %250, %241, %234, %226, %204, %163, %158, %130, %89, %57, %33, %22
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.bq24257_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @ACPI_HANDLE(%struct.device*) #1

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.reg_field*) #1

declare dso_local i32 @devm_regmap_field_alloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.bq24257_device*) #1

declare dso_local i32 @bq24257_fw_probe(%struct.bq24257_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @bq24257_pg_gpio_probe(%struct.bq24257_device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @bq24257_field_write(%struct.bq24257_device*, i32, i32) #1

declare dso_local i32 @bq24257_hw_init(%struct.bq24257_device*) #1

declare dso_local i32 @bq24257_power_supply_init(%struct.bq24257_device*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.bq24257_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
