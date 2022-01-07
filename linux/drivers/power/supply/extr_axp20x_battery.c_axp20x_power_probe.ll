; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_battery.c_axp20x_power_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_battery.c_axp20x_power_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32 }
%struct.axp20x_batt_ps = type { i32, i8*, %struct.axp_data*, i32, i8*, i8*, i8*, %struct.device* }
%struct.axp_data = type { i32 }
%struct.power_supply_config = type { i32, %struct.axp20x_batt_ps* }
%struct.power_supply_battery_info = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"batt_v\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"batt_chrg_i\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"batt_dischrg_i\00", align 1
@axp20x_batt_ps_desc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to register power supply: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"couldn't set voltage_min_design\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"couldn't set constant charge current from DT: fallback to minimum value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axp20x_power_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_power_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.axp20x_batt_ps*, align 8
  %5 = alloca %struct.power_supply_config, align 8
  %6 = alloca %struct.power_supply_battery_info, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = bitcast %struct.power_supply_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @of_device_is_available(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %211

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.axp20x_batt_ps* @devm_kzalloc(%struct.device* %24, i32 64, i32 %25)
  store %struct.axp20x_batt_ps* %26, %struct.axp20x_batt_ps** %4, align 8
  %27 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %28 = icmp ne %struct.axp20x_batt_ps* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %211

32:                                               ; preds = %22
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %36 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %35, i32 0, i32 7
  store %struct.device* %34, %struct.device** %36, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i8* @devm_iio_channel_get(%struct.device* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %41 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %43 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %42, i32 0, i32 6
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %32
  %48 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %49 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %48, i32 0, i32 6
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @EPROBE_DEFER, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %211

58:                                               ; preds = %47
  %59 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %60 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %59, i32 0, i32 6
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  store i32 %62, i32* %2, align 4
  br label %211

63:                                               ; preds = %32
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i8* @devm_iio_channel_get(%struct.device* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %68 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %70 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %69, i32 0, i32 5
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @IS_ERR(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %63
  %75 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %76 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %75, i32 0, i32 5
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @PTR_ERR(i8* %77)
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @EPROBE_DEFER, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %211

85:                                               ; preds = %74
  %86 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %87 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %86, i32 0, i32 5
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  store i32 %89, i32* %2, align 4
  br label %211

90:                                               ; preds = %63
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = call i8* @devm_iio_channel_get(%struct.device* %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %95 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %97 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @IS_ERR(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %90
  %102 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %103 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %102, i32 0, i32 4
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @PTR_ERR(i8* %104)
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* @EPROBE_DEFER, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %211

112:                                              ; preds = %101
  %113 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %114 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @PTR_ERR(i8* %115)
  store i32 %116, i32* %2, align 4
  br label %211

117:                                              ; preds = %90
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.device, %struct.device* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dev_get_regmap(i32 %121, i32* null)
  %123 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %124 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 8
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %127 = call i32 @platform_set_drvdata(%struct.platform_device* %125, %struct.axp20x_batt_ps* %126)
  %128 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %129 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 1
  store %struct.axp20x_batt_ps* %128, %struct.axp20x_batt_ps** %129, align 8
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.device, %struct.device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  store i32 %133, i32* %134, align 8
  %135 = load %struct.device*, %struct.device** %7, align 8
  %136 = call i64 @of_device_get_match_data(%struct.device* %135)
  %137 = inttoptr i64 %136 to %struct.axp_data*
  %138 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %139 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %138, i32 0, i32 2
  store %struct.axp_data* %137, %struct.axp_data** %139, align 8
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i8* @devm_power_supply_register(%struct.device* %141, i32* @axp20x_batt_ps_desc, %struct.power_supply_config* %5)
  %143 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %144 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %146 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @IS_ERR(i8* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %117
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %154 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @PTR_ERR(i8* %155)
  %157 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %152, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %159 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @PTR_ERR(i8* %160)
  store i32 %161, i32* %2, align 4
  br label %211

162:                                              ; preds = %117
  %163 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %164 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @power_supply_get_battery_info(i8* %165, %struct.power_supply_battery_info* %6)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %206, label %168

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %6, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %8, align 4
  %171 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %6, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %168
  %176 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %177 = load i32, i32* %8, align 4
  %178 = call i64 @axp20x_set_voltage_min_design(%struct.axp20x_batt_ps* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 0
  %183 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %182, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %184

184:                                              ; preds = %180, %175, %168
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %187 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* %9, align 4
  %189 = icmp sle i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %184
  %191 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %192 = load i32, i32* %9, align 4
  %193 = call i64 @axp20x_set_constant_charge_current(%struct.axp20x_batt_ps* %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %190, %184
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %196, i32 0, i32 0
  %198 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %197, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0))
  store i32 300000, i32* %9, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %201 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  %202 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %203 = load i32, i32* %9, align 4
  %204 = call i64 @axp20x_set_constant_charge_current(%struct.axp20x_batt_ps* %202, i32 %203)
  br label %205

205:                                              ; preds = %195, %190
  br label %206

206:                                              ; preds = %205, %162
  %207 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %208 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %209 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %208, i32 0, i32 0
  %210 = call i32 @axp20x_get_constant_charge_current(%struct.axp20x_batt_ps* %207, i32* %209)
  store i32 0, i32* %2, align 4
  br label %211

211:                                              ; preds = %206, %150, %112, %109, %85, %82, %58, %55, %29, %19
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @of_device_is_available(i32) #2

declare dso_local %struct.axp20x_batt_ps* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i8* @devm_iio_channel_get(%struct.device*, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @dev_get_regmap(i32, i32*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.axp20x_batt_ps*) #2

declare dso_local i64 @of_device_get_match_data(%struct.device*) #2

declare dso_local i8* @devm_power_supply_register(%struct.device*, i32*, %struct.power_supply_config*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @power_supply_get_battery_info(i8*, %struct.power_supply_battery_info*) #2

declare dso_local i64 @axp20x_set_voltage_min_design(%struct.axp20x_batt_ps*, i32) #2

declare dso_local i64 @axp20x_set_constant_charge_current(%struct.axp20x_batt_ps*, i32) #2

declare dso_local i32 @axp20x_get_constant_charge_current(%struct.axp20x_batt_ps*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
