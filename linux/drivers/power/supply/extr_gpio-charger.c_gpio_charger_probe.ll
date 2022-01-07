; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_gpio-charger.c_gpio_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_gpio-charger.c_gpio_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i64, %struct.device }
%struct.device = type { %struct.TYPE_2__*, %struct.gpio_charger_platform_data* }
%struct.TYPE_2__ = type { i64 }
%struct.gpio_charger_platform_data = type { i32, i32, i32, i64, i32, i64 }
%struct.power_supply_config = type { i32, i32, %struct.gpio_charger*, %struct.TYPE_2__* }
%struct.gpio_charger = type { i32, %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc*, i8*, %struct.power_supply_desc }
%struct.gpio_desc = type { i32 }
%struct.power_supply_desc = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid gpio pin in pdata\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GPIOF_IN = common dso_local global i64 0, align 8
@GPIOF_ACTIVE_LOW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to request gpio pin: %d\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"error getting GPIO descriptor\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"charge-status\00", align 1
@gpio_charger_properties = common dso_local global i32 0, align 4
@gpio_charger_get_property = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to register power supply: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_charger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gpio_charger_platform_data*, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca %struct.gpio_charger*, align 8
  %8 = alloca %struct.power_supply_desc*, align 8
  %9 = alloca %struct.gpio_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 1
  %17 = load %struct.gpio_charger_platform_data*, %struct.gpio_charger_platform_data** %16, align 8
  store %struct.gpio_charger_platform_data* %17, %struct.gpio_charger_platform_data** %5, align 8
  %18 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = load %struct.gpio_charger_platform_data*, %struct.gpio_charger_platform_data** %5, align 8
  %20 = icmp ne %struct.gpio_charger_platform_data* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %263

31:                                               ; preds = %21, %1
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.gpio_charger* @devm_kzalloc(%struct.device* %32, i32 72, i32 %33)
  store %struct.gpio_charger* %34, %struct.gpio_charger** %7, align 8
  %35 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %36 = icmp ne %struct.gpio_charger* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %263

40:                                               ; preds = %31
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load i32, i32* @GPIOD_IN, align 4
  %43 = call %struct.gpio_desc* @devm_gpiod_get(%struct.device* %41, i32* null, i32 %42)
  %44 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %45 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %44, i32 0, i32 3
  store %struct.gpio_desc* %43, %struct.gpio_desc** %45, align 8
  %46 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %47 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %46, i32 0, i32 3
  %48 = load %struct.gpio_desc*, %struct.gpio_desc** %47, align 8
  %49 = call i64 @IS_ERR(%struct.gpio_desc* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %100

51:                                               ; preds = %40
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %100, label %56

56:                                               ; preds = %51
  %57 = load %struct.gpio_charger_platform_data*, %struct.gpio_charger_platform_data** %5, align 8
  %58 = getelementptr inbounds %struct.gpio_charger_platform_data, %struct.gpio_charger_platform_data* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @gpio_is_valid(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %263

67:                                               ; preds = %56
  %68 = load i64, i64* @GPIOF_IN, align 8
  store i64 %68, i64* %11, align 8
  %69 = load %struct.gpio_charger_platform_data*, %struct.gpio_charger_platform_data** %5, align 8
  %70 = getelementptr inbounds %struct.gpio_charger_platform_data, %struct.gpio_charger_platform_data* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i64, i64* @GPIOF_ACTIVE_LOW, align 8
  %75 = load i64, i64* %11, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %11, align 8
  br label %77

77:                                               ; preds = %73, %67
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load %struct.gpio_charger_platform_data*, %struct.gpio_charger_platform_data** %5, align 8
  %80 = getelementptr inbounds %struct.gpio_charger_platform_data, %struct.gpio_charger_platform_data* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 @dev_name(%struct.device* %83)
  %85 = call i32 @devm_gpio_request_one(%struct.device* %78, i32 %81, i64 %82, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %2, align 4
  br label %263

93:                                               ; preds = %77
  %94 = load %struct.gpio_charger_platform_data*, %struct.gpio_charger_platform_data** %5, align 8
  %95 = getelementptr inbounds %struct.gpio_charger_platform_data, %struct.gpio_charger_platform_data* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call %struct.gpio_desc* @gpio_to_desc(i32 %96)
  %98 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %99 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %98, i32 0, i32 3
  store %struct.gpio_desc* %97, %struct.gpio_desc** %99, align 8
  br label %125

100:                                              ; preds = %51, %40
  %101 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %102 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %101, i32 0, i32 3
  %103 = load %struct.gpio_desc*, %struct.gpio_desc** %102, align 8
  %104 = call i64 @IS_ERR(%struct.gpio_desc* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %100
  %107 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %108 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %107, i32 0, i32 3
  %109 = load %struct.gpio_desc*, %struct.gpio_desc** %108, align 8
  %110 = call i32 @PTR_ERR(%struct.gpio_desc* %109)
  %111 = load i32, i32* @EPROBE_DEFER, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load i32, i32* @EPROBE_DEFER, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %263

117:                                              ; preds = %106
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %120 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %121 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %120, i32 0, i32 3
  %122 = load %struct.gpio_desc*, %struct.gpio_desc** %121, align 8
  %123 = call i32 @PTR_ERR(%struct.gpio_desc* %122)
  store i32 %123, i32* %2, align 4
  br label %263

124:                                              ; preds = %100
  br label %125

125:                                              ; preds = %124, %93
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = load i32, i32* @GPIOD_IN, align 4
  %128 = call %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device* %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  store %struct.gpio_desc* %128, %struct.gpio_desc** %9, align 8
  %129 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %130 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %131 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %130, i32 0, i32 1
  store %struct.gpio_desc* %129, %struct.gpio_desc** %131, align 8
  %132 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %133 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %132, i32 0, i32 1
  %134 = load %struct.gpio_desc*, %struct.gpio_desc** %133, align 8
  %135 = call i64 @IS_ERR(%struct.gpio_desc* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %125
  %138 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %139 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %138, i32 0, i32 1
  %140 = load %struct.gpio_desc*, %struct.gpio_desc** %139, align 8
  %141 = call i32 @PTR_ERR(%struct.gpio_desc* %140)
  store i32 %141, i32* %2, align 4
  br label %263

142:                                              ; preds = %125
  %143 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %144 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %143, i32 0, i32 5
  store %struct.power_supply_desc* %144, %struct.power_supply_desc** %8, align 8
  %145 = load i32, i32* @gpio_charger_properties, align 4
  %146 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %147 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @gpio_charger_properties, align 4
  %149 = call i32 @ARRAY_SIZE(i32 %148)
  %150 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %151 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %153 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %152, i32 0, i32 1
  %154 = load %struct.gpio_desc*, %struct.gpio_desc** %153, align 8
  %155 = icmp ne %struct.gpio_desc* %154, null
  br i1 %155, label %161, label %156

156:                                              ; preds = %142
  %157 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %158 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %156, %142
  %162 = load i32, i32* @gpio_charger_get_property, align 4
  %163 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %164 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = getelementptr inbounds %struct.device, %struct.device* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 3
  store %struct.TYPE_2__* %167, %struct.TYPE_2__** %168, align 8
  %169 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %170 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 2
  store %struct.gpio_charger* %169, %struct.gpio_charger** %170, align 8
  %171 = load %struct.gpio_charger_platform_data*, %struct.gpio_charger_platform_data** %5, align 8
  %172 = icmp ne %struct.gpio_charger_platform_data* %171, null
  br i1 %172, label %173, label %192

173:                                              ; preds = %161
  %174 = load %struct.gpio_charger_platform_data*, %struct.gpio_charger_platform_data** %5, align 8
  %175 = getelementptr inbounds %struct.gpio_charger_platform_data, %struct.gpio_charger_platform_data* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %178 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  %179 = load %struct.gpio_charger_platform_data*, %struct.gpio_charger_platform_data** %5, align 8
  %180 = getelementptr inbounds %struct.gpio_charger_platform_data, %struct.gpio_charger_platform_data* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %183 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  %184 = load %struct.gpio_charger_platform_data*, %struct.gpio_charger_platform_data** %5, align 8
  %185 = getelementptr inbounds %struct.gpio_charger_platform_data, %struct.gpio_charger_platform_data* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 1
  store i32 %186, i32* %187, align 4
  %188 = load %struct.gpio_charger_platform_data*, %struct.gpio_charger_platform_data** %5, align 8
  %189 = getelementptr inbounds %struct.gpio_charger_platform_data, %struct.gpio_charger_platform_data* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store i32 %190, i32* %191, align 8
  br label %204

192:                                              ; preds = %161
  %193 = load %struct.device*, %struct.device** %4, align 8
  %194 = getelementptr inbounds %struct.device, %struct.device* %193, i32 0, i32 0
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %199 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  %200 = load %struct.device*, %struct.device** %4, align 8
  %201 = call i32 @gpio_charger_get_type(%struct.device* %200)
  %202 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %203 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %192, %173
  %205 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %206 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %204
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %214 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %213, i32 0, i32 1
  store i64 %212, i64* %214, align 8
  br label %215

215:                                              ; preds = %209, %204
  %216 = load %struct.device*, %struct.device** %4, align 8
  %217 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %218 = call %struct.gpio_desc* @devm_power_supply_register(%struct.device* %216, %struct.power_supply_desc* %217, %struct.power_supply_config* %6)
  %219 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %220 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %219, i32 0, i32 2
  store %struct.gpio_desc* %218, %struct.gpio_desc** %220, align 8
  %221 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %222 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %221, i32 0, i32 2
  %223 = load %struct.gpio_desc*, %struct.gpio_desc** %222, align 8
  %224 = call i64 @IS_ERR(%struct.gpio_desc* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %215
  %227 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %228 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %227, i32 0, i32 2
  %229 = load %struct.gpio_desc*, %struct.gpio_desc** %228, align 8
  %230 = call i32 @PTR_ERR(%struct.gpio_desc* %229)
  store i32 %230, i32* %12, align 4
  %231 = load %struct.device*, %struct.device** %4, align 8
  %232 = load i32, i32* %12, align 4
  %233 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %231, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* %12, align 4
  store i32 %234, i32* %2, align 4
  br label %263

235:                                              ; preds = %215
  %236 = load %struct.device*, %struct.device** %4, align 8
  %237 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %238 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %237, i32 0, i32 2
  %239 = load %struct.gpio_desc*, %struct.gpio_desc** %238, align 8
  %240 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %241 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %240, i32 0, i32 3
  %242 = load %struct.gpio_desc*, %struct.gpio_desc** %241, align 8
  %243 = call i8* @gpio_charger_get_irq(%struct.device* %236, %struct.gpio_desc* %239, %struct.gpio_desc* %242)
  %244 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %245 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %244, i32 0, i32 4
  store i8* %243, i8** %245, align 8
  %246 = load %struct.device*, %struct.device** %4, align 8
  %247 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %248 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %247, i32 0, i32 2
  %249 = load %struct.gpio_desc*, %struct.gpio_desc** %248, align 8
  %250 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %251 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %250, i32 0, i32 1
  %252 = load %struct.gpio_desc*, %struct.gpio_desc** %251, align 8
  %253 = call i8* @gpio_charger_get_irq(%struct.device* %246, %struct.gpio_desc* %249, %struct.gpio_desc* %252)
  %254 = ptrtoint i8* %253 to i32
  store i32 %254, i32* %10, align 4
  %255 = load i32, i32* %10, align 4
  %256 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %257 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 8
  %258 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %259 = load %struct.gpio_charger*, %struct.gpio_charger** %7, align 8
  %260 = call i32 @platform_set_drvdata(%struct.platform_device* %258, %struct.gpio_charger* %259)
  %261 = load %struct.device*, %struct.device** %4, align 8
  %262 = call i32 @device_init_wakeup(%struct.device* %261, i32 1)
  store i32 0, i32* %2, align 4
  br label %263

263:                                              ; preds = %235, %226, %137, %117, %114, %88, %62, %37, %26
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local %struct.gpio_charger* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local %struct.gpio_desc* @devm_gpiod_get(%struct.device*, i32*, i32) #2

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #2

declare dso_local i32 @gpio_is_valid(i32) #2

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i32, i64, i32) #2

declare dso_local i32 @dev_name(%struct.device*) #2

declare dso_local %struct.gpio_desc* @gpio_to_desc(i32) #2

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #2

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @gpio_charger_get_type(%struct.device*) #2

declare dso_local %struct.gpio_desc* @devm_power_supply_register(%struct.device*, %struct.power_supply_desc*, %struct.power_supply_config*) #2

declare dso_local i8* @gpio_charger_get_irq(%struct.device*, %struct.gpio_desc*, %struct.gpio_desc*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpio_charger*) #2

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
