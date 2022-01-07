; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2760_battery.c_w1_ds2760_add_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2760_battery.c_w1_ds2760_add_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { %struct.ds2760_device_info*, %struct.device }
%struct.ds2760_device_info = type { i8*, i32, %struct.TYPE_3__, i32, i32, i32, %struct.device*, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32, i64 }
%struct.power_supply_config = type { i64, %struct.ds2760_device_info* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ds2760-battery.%d\00", align 1
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@ds2760_battery_props = common dso_local global i32 0, align 4
@ds2760_battery_get_property = common dso_local global i32 0, align 4
@ds2760_battery_set_property = common dso_local global i32 0, align 4
@ds2760_battery_property_is_writeable = common dso_local global i32 0, align 4
@ds2760_battery_set_charged = common dso_local global i32 0, align 4
@ds2760_battery_external_power_changed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"maxim,pmod-enabled\00", align 1
@pmod_enabled = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"maxim,cache-time-ms\00", align 1
@cache_time = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"rated-capacity-microamp-hours\00", align 1
@rated_capacity = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@DS2760_STATUS_REG = common dso_local global i64 0, align 8
@DS2760_STATUS_PMOD = common dso_local global i8 0, align 1
@current_accum = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to register battery\0A\00", align 1
@ds2760_battery_work = common dso_local global i32 0, align 4
@ds2760_battery_set_charged_work = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ds2760_pm_notifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*)* @w1_ds2760_add_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_ds2760_add_slave(%struct.w1_slave* %0) #0 {
  %2 = alloca %struct.w1_slave*, align 8
  %3 = alloca %struct.power_supply_config, align 8
  %4 = alloca %struct.ds2760_device_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %2, align 8
  %10 = bitcast %struct.power_supply_config* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %12 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ds2760_device_info* @devm_kzalloc(%struct.device* %13, i32 88, i32 %14)
  store %struct.ds2760_device_info* %15, %struct.ds2760_device_info** %4, align 8
  %16 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %17 = icmp ne %struct.ds2760_device_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %215

21:                                               ; preds = %1
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @snprintf(i8* %22, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %29 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %28, i32 0, i32 6
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %31 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %32 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %35 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %36 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 8
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @ds2760_battery_props, align 4
  %39 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %40 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 7
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @ds2760_battery_props, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %45 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 6
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @ds2760_battery_get_property, align 4
  %48 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %49 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @ds2760_battery_set_property, align 4
  %52 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %53 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @ds2760_battery_property_is_writeable, align 4
  %56 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %57 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @ds2760_battery_set_charged, align 4
  %60 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %61 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @ds2760_battery_external_power_changed, align 4
  %64 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %65 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  %67 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %68 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %3, i32 0, i32 1
  store %struct.ds2760_device_info* %67, %struct.ds2760_device_info** %68, align 8
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = getelementptr inbounds %struct.device, %struct.device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %21
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = getelementptr inbounds %struct.device, %struct.device* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %3, i32 0, i32 0
  store i64 %76, i64* %77, align 8
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = getelementptr inbounds %struct.device, %struct.device* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @of_property_read_bool(i64 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  store i32 1, i32* @pmod_enabled, align 4
  br label %84

84:                                               ; preds = %83, %73
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = getelementptr inbounds %struct.device, %struct.device* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @of_property_read_u32(i64 %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* @cache_time, align 4
  br label %92

92:                                               ; preds = %90, %84
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = getelementptr inbounds %struct.device, %struct.device* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @of_property_read_u32(i64 %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %9, align 4
  %100 = sdiv i32 %99, 10
  store i32 %100, i32* @rated_capacity, align 4
  br label %101

101:                                              ; preds = %98, %92
  br label %102

102:                                              ; preds = %101, %21
  %103 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %104 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %105 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %104, i32 0, i32 8
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %107 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %108 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %107, i32 0, i32 0
  store %struct.ds2760_device_info* %106, %struct.ds2760_device_info** %108, align 8
  %109 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %110 = call i32 @ds2760_battery_read_status(%struct.ds2760_device_info* %109)
  %111 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %112 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i64, i64* @DS2760_STATUS_REG, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8, i8* %115, align 1
  store i8 %116, i8* %8, align 1
  %117 = load i32, i32* @pmod_enabled, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %102
  %120 = load i8, i8* @DS2760_STATUS_PMOD, align 1
  %121 = sext i8 %120 to i32
  %122 = load i8, i8* %8, align 1
  %123 = sext i8 %122 to i32
  %124 = or i32 %123, %121
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %8, align 1
  br label %134

126:                                              ; preds = %102
  %127 = load i8, i8* @DS2760_STATUS_PMOD, align 1
  %128 = sext i8 %127 to i32
  %129 = xor i32 %128, -1
  %130 = load i8, i8* %8, align 1
  %131 = sext i8 %130 to i32
  %132 = and i32 %131, %129
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %8, align 1
  br label %134

134:                                              ; preds = %126, %119
  %135 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %136 = load i8, i8* %8, align 1
  %137 = call i32 @ds2760_battery_write_status(%struct.ds2760_device_info* %135, i8 signext %136)
  %138 = load i32, i32* @rated_capacity, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %142 = load i32, i32* @rated_capacity, align 4
  %143 = call i32 @ds2760_battery_write_rated_capacity(%struct.ds2760_device_info* %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %134
  %145 = load i64, i64* @current_accum, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %149 = load i64, i64* @current_accum, align 8
  %150 = call i32 @ds2760_battery_set_current_accum(%struct.ds2760_device_info* %148, i64 %149)
  br label %151

151:                                              ; preds = %147, %144
  %152 = load %struct.device*, %struct.device** %5, align 8
  %153 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %154 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %153, i32 0, i32 7
  %155 = call i32 @power_supply_register(%struct.device* %152, %struct.TYPE_4__* %154, %struct.power_supply_config* %3)
  %156 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %157 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 8
  %158 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %159 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @IS_ERR(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %151
  %164 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %165 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %164, i32 0, i32 6
  %166 = load %struct.device*, %struct.device** %165, align 8
  %167 = call i32 @dev_err(%struct.device* %166, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %168 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %169 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @PTR_ERR(i32 %170)
  store i32 %171, i32* %6, align 4
  br label %214

172:                                              ; preds = %151
  %173 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %174 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %173, i32 0, i32 3
  %175 = load i32, i32* @ds2760_battery_work, align 4
  %176 = call i32 @INIT_DELAYED_WORK(i32* %174, i32 %175)
  %177 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %178 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %177, i32 0, i32 5
  %179 = load i32, i32* @ds2760_battery_set_charged_work, align 4
  %180 = call i32 @INIT_DELAYED_WORK(i32* %178, i32 %179)
  %181 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %182 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %183 = call i32 @alloc_ordered_workqueue(i8* %181, i32 %182)
  %184 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %185 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 4
  %186 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %187 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %172
  %191 = load i32, i32* @ESRCH, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %6, align 4
  br label %209

193:                                              ; preds = %172
  %194 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %195 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %198 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %197, i32 0, i32 3
  %199 = load i32, i32* @HZ, align 4
  %200 = mul nsw i32 %199, 1
  %201 = call i32 @queue_delayed_work(i32 %196, i32* %198, i32 %200)
  %202 = load i32, i32* @ds2760_pm_notifier, align 4
  %203 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %204 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  store i32 %202, i32* %205, align 4
  %206 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %207 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %206, i32 0, i32 2
  %208 = call i32 @register_pm_notifier(%struct.TYPE_3__* %207)
  br label %216

209:                                              ; preds = %190
  %210 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %4, align 8
  %211 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @power_supply_unregister(i32 %212)
  br label %214

214:                                              ; preds = %209, %163
  br label %215

215:                                              ; preds = %214, %18
  br label %216

216:                                              ; preds = %215, %193
  %217 = load i32, i32* %6, align 4
  ret i32 %217
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ds2760_device_info* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @of_property_read_bool(i64, i8*) #2

declare dso_local i32 @of_property_read_u32(i64, i8*, i32*) #2

declare dso_local i32 @ds2760_battery_read_status(%struct.ds2760_device_info*) #2

declare dso_local i32 @ds2760_battery_write_status(%struct.ds2760_device_info*, i8 signext) #2

declare dso_local i32 @ds2760_battery_write_rated_capacity(%struct.ds2760_device_info*, i32) #2

declare dso_local i32 @ds2760_battery_set_current_accum(%struct.ds2760_device_info*, i64) #2

declare dso_local i32 @power_supply_register(%struct.device*, %struct.TYPE_4__*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #2

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #2

declare dso_local i32 @register_pm_notifier(%struct.TYPE_3__*) #2

declare dso_local i32 @power_supply_unregister(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
