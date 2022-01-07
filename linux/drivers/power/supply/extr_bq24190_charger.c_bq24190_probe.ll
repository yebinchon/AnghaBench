; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device, %struct.i2c_adapter* }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.power_supply_config = type { %struct.bq24190_dev_info*, i32, i32, i32, i32 }
%struct.bq24190_dev_info = type { i32, i8*, i8*, i32, i8*, i32, i64, i32, i32, %struct.device*, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No support for SMBUS_BYTE_DATA\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't alloc bdi struct\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@BQ24190_REG_SS_VBUS_STAT_MASK = common dso_local global i32 0, align 4
@bq24190_input_current_limit_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Can't get irq info\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bq24190_usb_extcon_cable = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"pm_runtime_get failed: %i\0A\00", align 1
@bq24190_charger_supplied_to = common dso_local global i32 0, align 4
@bq24190_charger_desc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Can't register charger\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"omit-battery-class\00", align 1
@bq24190_battery_desc = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Can't register battery\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Can't get devicetree config\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Hardware init failed\0A\00", align 1
@bq24190_irq_handler_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"bq24190-charger\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Can't set up irq handler\0A\00", align 1
@bq24190_sysfs_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bq24190_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24190_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.power_supply_config, align 8
  %9 = alloca %struct.power_supply_config, align 8
  %10 = alloca %struct.bq24190_dev_info*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 2
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = bitcast %struct.power_supply_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = bitcast %struct.power_supply_config* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %20 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %21 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %253

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.bq24190_dev_info* @devm_kzalloc(%struct.device* %29, i32 80, i32 %30)
  store %struct.bq24190_dev_info* %31, %struct.bq24190_dev_info** %10, align 8
  %32 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %33 = icmp ne %struct.bq24190_dev_info* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %253

39:                                               ; preds = %28
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %42 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %41, i32 0, i32 10
  store %struct.i2c_client* %40, %struct.i2c_client** %42, align 8
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %45 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %44, i32 0, i32 9
  store %struct.device* %43, %struct.device** %45, align 8
  %46 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %47 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %50 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I2C_NAME_SIZE, align 4
  %53 = call i32 @strncpy(i32 %48, i32 %51, i32 %52)
  %54 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %55 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %54, i32 0, i32 7
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %58 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @BQ24190_REG_SS_VBUS_STAT_MASK, align 4
  %60 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %61 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %63 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %62, i32 0, i32 5
  %64 = load i32, i32* @bq24190_input_current_limit_work, align 4
  %65 = call i32 @INIT_DELAYED_WORK(i32* %63, i32 %64)
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %68 = call i32 @i2c_set_clientdata(%struct.i2c_client* %66, %struct.bq24190_dev_info* %67)
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %39
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %253

78:                                               ; preds = %39
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = load i32, i32* @bq24190_usb_extcon_cable, align 4
  %81 = call i8* @devm_extcon_dev_allocate(%struct.device* %79, i32 %80)
  %82 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %83 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  %84 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %85 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %84, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @IS_ERR(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %78
  %90 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %91 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %90, i32 0, i32 4
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @PTR_ERR(i8* %92)
  store i32 %93, i32* %3, align 4
  br label %253

94:                                               ; preds = %78
  %95 = load %struct.device*, %struct.device** %7, align 8
  %96 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %97 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @devm_extcon_dev_register(%struct.device* %95, i8* %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %3, align 4
  br label %253

104:                                              ; preds = %94
  %105 = load %struct.device*, %struct.device** %7, align 8
  %106 = call i32 @pm_runtime_enable(%struct.device* %105)
  %107 = load %struct.device*, %struct.device** %7, align 8
  %108 = call i32 @pm_runtime_use_autosuspend(%struct.device* %107)
  %109 = load %struct.device*, %struct.device** %7, align 8
  %110 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %109, i32 600)
  %111 = load %struct.device*, %struct.device** %7, align 8
  %112 = call i32 @pm_runtime_get_sync(%struct.device* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %104
  %116 = load %struct.device*, %struct.device** %7, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  br label %245

119:                                              ; preds = %104
  %120 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %121 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %8, i32 0, i32 0
  store %struct.bq24190_dev_info* %120, %struct.bq24190_dev_info** %121, align 8
  %122 = load %struct.device*, %struct.device** %7, align 8
  %123 = getelementptr inbounds %struct.device, %struct.device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %8, i32 0, i32 3
  store i32 %124, i32* %125, align 8
  %126 = load i32, i32* @bq24190_charger_supplied_to, align 4
  %127 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %8, i32 0, i32 2
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* @bq24190_charger_supplied_to, align 4
  %129 = call i32 @ARRAY_SIZE(i32 %128)
  %130 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %8, i32 0, i32 1
  store i32 %129, i32* %130, align 8
  %131 = load %struct.device*, %struct.device** %7, align 8
  %132 = call i8* @power_supply_register(%struct.device* %131, i32* @bq24190_charger_desc, %struct.power_supply_config* %8)
  %133 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %134 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %136 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @IS_ERR(i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %119
  %141 = load %struct.device*, %struct.device** %7, align 8
  %142 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %141, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %143 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %144 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @PTR_ERR(i8* %145)
  store i32 %146, i32* %11, align 4
  br label %245

147:                                              ; preds = %119
  %148 = load %struct.device*, %struct.device** %7, align 8
  %149 = call i32 @device_property_read_bool(%struct.device* %148, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %171, label %151

151:                                              ; preds = %147
  %152 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %153 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %9, i32 0, i32 0
  store %struct.bq24190_dev_info* %152, %struct.bq24190_dev_info** %153, align 8
  %154 = load %struct.device*, %struct.device** %7, align 8
  %155 = call i8* @power_supply_register(%struct.device* %154, i32* @bq24190_battery_desc, %struct.power_supply_config* %9)
  %156 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %157 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  %158 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %159 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @IS_ERR(i8* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %151
  %164 = load %struct.device*, %struct.device** %7, align 8
  %165 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %166 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %167 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @PTR_ERR(i8* %168)
  store i32 %169, i32* %11, align 4
  br label %229

170:                                              ; preds = %151
  br label %171

171:                                              ; preds = %170, %147
  %172 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %173 = call i32 @bq24190_get_config(%struct.bq24190_dev_info* %172)
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %11, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load %struct.device*, %struct.device** %7, align 8
  %178 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %177, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %229

179:                                              ; preds = %171
  %180 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %181 = call i32 @bq24190_hw_init(%struct.bq24190_dev_info* %180)
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load %struct.device*, %struct.device** %7, align 8
  %186 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %185, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %229

187:                                              ; preds = %179
  %188 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %189 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %190 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @bq24190_configure_usb_otg(%struct.bq24190_dev_info* %188, i32 %191)
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %229

196:                                              ; preds = %187
  %197 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %198 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %197, i32 0, i32 0
  store i32 1, i32* %198, align 8
  %199 = load %struct.device*, %struct.device** %7, align 8
  %200 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %201 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @bq24190_irq_handler_thread, align 4
  %204 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %205 = load i32, i32* @IRQF_ONESHOT, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %208 = call i32 @devm_request_threaded_irq(%struct.device* %199, i32 %202, i32* null, i32 %203, i32 %206, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), %struct.bq24190_dev_info* %207)
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %196
  %212 = load %struct.device*, %struct.device** %7, align 8
  %213 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %212, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %229

214:                                              ; preds = %196
  %215 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %216 = call i32 @bq24190_register_vbus_regulator(%struct.bq24190_dev_info* %215)
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  br label %229

220:                                              ; preds = %214
  %221 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %222 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @enable_irq_wake(i32 %223)
  %225 = load %struct.device*, %struct.device** %7, align 8
  %226 = call i32 @pm_runtime_mark_last_busy(%struct.device* %225)
  %227 = load %struct.device*, %struct.device** %7, align 8
  %228 = call i32 @pm_runtime_put_autosuspend(%struct.device* %227)
  store i32 0, i32* %3, align 4
  br label %253

229:                                              ; preds = %219, %211, %195, %184, %176, %163
  %230 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %231 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %230, i32 0, i32 2
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @IS_ERR_OR_NULL(i8* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %229
  %236 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %237 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %236, i32 0, i32 2
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @power_supply_unregister(i8* %238)
  br label %240

240:                                              ; preds = %235, %229
  %241 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %10, align 8
  %242 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 @power_supply_unregister(i8* %243)
  br label %245

245:                                              ; preds = %240, %140, %115
  %246 = load %struct.device*, %struct.device** %7, align 8
  %247 = call i32 @pm_runtime_put_sync(%struct.device* %246)
  %248 = load %struct.device*, %struct.device** %7, align 8
  %249 = call i32 @pm_runtime_dont_use_autosuspend(%struct.device* %248)
  %250 = load %struct.device*, %struct.device** %7, align 8
  %251 = call i32 @pm_runtime_disable(%struct.device* %250)
  %252 = load i32, i32* %11, align 4
  store i32 %252, i32* %3, align 4
  br label %253

253:                                              ; preds = %245, %220, %102, %89, %73, %34, %23
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local %struct.bq24190_dev_info* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @strncpy(i32, i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.bq24190_dev_info*) #2

declare dso_local i8* @devm_extcon_dev_allocate(%struct.device*, i32) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @devm_extcon_dev_register(%struct.device*, i8*) #2

declare dso_local i32 @pm_runtime_enable(%struct.device*) #2

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #2

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #2

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i8* @power_supply_register(%struct.device*, i32*, %struct.power_supply_config*) #2

declare dso_local i32 @device_property_read_bool(%struct.device*, i8*) #2

declare dso_local i32 @bq24190_get_config(%struct.bq24190_dev_info*) #2

declare dso_local i32 @bq24190_hw_init(%struct.bq24190_dev_info*) #2

declare dso_local i32 @bq24190_configure_usb_otg(%struct.bq24190_dev_info*, i32) #2

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.bq24190_dev_info*) #2

declare dso_local i32 @bq24190_register_vbus_regulator(%struct.bq24190_dev_info*) #2

declare dso_local i32 @enable_irq_wake(i32) #2

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #2

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #2

declare dso_local i32 @IS_ERR_OR_NULL(i8*) #2

declare dso_local i32 @power_supply_unregister(i8*) #2

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #2

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.device*) #2

declare dso_local i32 @pm_runtime_disable(%struct.device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
