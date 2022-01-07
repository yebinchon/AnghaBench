; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { %struct.smb347_charger_platform_data* }
%struct.smb347_charger_platform_data = type { i64, i64, i64 }
%struct.i2c_device_id = type { i32 }
%struct.power_supply_config = type { i8**, %struct.smb347_charger*, i32 }
%struct.smb347_charger = type { i8*, i8*, %struct.smb347_charger_platform_data*, i8*, i8*, %struct.device*, i32 }

@smb347_probe.battery = internal global [1 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)], align 8
@.str = private unnamed_addr constant [15 x i8] c"smb347-battery\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@smb347_regmap = common dso_local global i32 0, align 4
@smb347_mains_desc = common dso_local global i32 0, align 4
@smb347_usb_desc = common dso_local global i32 0, align 4
@smb347_battery_desc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to initialize IRQ: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"disabling IRQ support\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @smb347_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb347_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.smb347_charger_platform_data*, align 8
  %7 = alloca %struct.power_supply_config, align 8
  %8 = alloca %struct.power_supply_config, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.smb347_charger*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = bitcast %struct.power_supply_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = bitcast %struct.power_supply_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %9, align 8
  %16 = load %struct.device*, %struct.device** %9, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %17, align 8
  store %struct.smb347_charger_platform_data* %18, %struct.smb347_charger_platform_data** %6, align 8
  %19 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %6, align 8
  %20 = icmp ne %struct.smb347_charger_platform_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %207

24:                                               ; preds = %2
  %25 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %6, align 8
  %26 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %6, align 8
  %31 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %207

37:                                               ; preds = %29, %24
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.smb347_charger* @devm_kzalloc(%struct.device* %38, i32 56, i32 %39)
  store %struct.smb347_charger* %40, %struct.smb347_charger** %10, align 8
  %41 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %42 = icmp ne %struct.smb347_charger* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %207

46:                                               ; preds = %37
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %49 = call i32 @i2c_set_clientdata(%struct.i2c_client* %47, %struct.smb347_charger* %48)
  %50 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %51 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %50, i32 0, i32 6
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %56 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %55, i32 0, i32 5
  store %struct.device* %54, %struct.device** %56, align 8
  %57 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %6, align 8
  %58 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %59 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %58, i32 0, i32 2
  store %struct.smb347_charger_platform_data* %57, %struct.smb347_charger_platform_data** %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %60, i32* @smb347_regmap)
  %62 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %63 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %65 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @IS_ERR(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %46
  %70 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %71 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @PTR_ERR(i8* %72)
  store i32 %73, i32* %3, align 4
  br label %207

74:                                               ; preds = %46
  %75 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %76 = call i32 @smb347_hw_init(%struct.smb347_charger* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %3, align 4
  br label %207

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 0
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @smb347_probe.battery, i64 0, i64 0), i8*** %82, align 8
  %83 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @smb347_probe.battery, i64 0, i64 0))
  %84 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 2
  store i32 %83, i32* %84, align 8
  %85 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %86 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 1
  store %struct.smb347_charger* %85, %struct.smb347_charger** %86, align 8
  %87 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %88 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %87, i32 0, i32 2
  %89 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %88, align 8
  %90 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %81
  %94 = load %struct.device*, %struct.device** %9, align 8
  %95 = call i8* @power_supply_register(%struct.device* %94, i32* @smb347_mains_desc, %struct.power_supply_config* %7)
  %96 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %97 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %99 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @IS_ERR(i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %93
  %104 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %105 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @PTR_ERR(i8* %106)
  store i32 %107, i32* %3, align 4
  br label %207

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %81
  %110 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %111 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %110, i32 0, i32 2
  %112 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %111, align 8
  %113 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %144

116:                                              ; preds = %109
  %117 = load %struct.device*, %struct.device** %9, align 8
  %118 = call i8* @power_supply_register(%struct.device* %117, i32* @smb347_usb_desc, %struct.power_supply_config* %7)
  %119 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %120 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  %121 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %122 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @IS_ERR(i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %116
  %127 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %128 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %127, i32 0, i32 2
  %129 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %128, align 8
  %130 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %135 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @power_supply_unregister(i8* %136)
  br label %138

138:                                              ; preds = %133, %126
  %139 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %140 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @PTR_ERR(i8* %141)
  store i32 %142, i32* %3, align 4
  br label %207

143:                                              ; preds = %116
  br label %144

144:                                              ; preds = %143, %109
  %145 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %146 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %8, i32 0, i32 1
  store %struct.smb347_charger* %145, %struct.smb347_charger** %146, align 8
  %147 = load %struct.device*, %struct.device** %9, align 8
  %148 = call i8* @power_supply_register(%struct.device* %147, i32* @smb347_battery_desc, %struct.power_supply_config* %8)
  %149 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %150 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  %151 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %152 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @IS_ERR(i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %185

156:                                              ; preds = %144
  %157 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %158 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %157, i32 0, i32 2
  %159 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %158, align 8
  %160 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  %164 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %165 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %164, i32 0, i32 3
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @power_supply_unregister(i8* %166)
  br label %168

168:                                              ; preds = %163, %156
  %169 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %170 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %169, i32 0, i32 2
  %171 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %170, align 8
  %172 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %168
  %176 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %177 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @power_supply_unregister(i8* %178)
  br label %180

180:                                              ; preds = %175, %168
  %181 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %182 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @PTR_ERR(i8* %183)
  store i32 %184, i32* %3, align 4
  br label %207

185:                                              ; preds = %144
  %186 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %6, align 8
  %187 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp sge i64 %188, 0
  br i1 %189, label %190, label %206

190:                                              ; preds = %185
  %191 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %192 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %193 = call i32 @smb347_irq_init(%struct.smb347_charger* %191, %struct.i2c_client* %192)
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  %197 = load %struct.device*, %struct.device** %9, align 8
  %198 = load i32, i32* %11, align 4
  %199 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %198)
  %200 = load %struct.device*, %struct.device** %9, align 8
  %201 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %205

202:                                              ; preds = %190
  %203 = load %struct.smb347_charger*, %struct.smb347_charger** %10, align 8
  %204 = call i32 @smb347_irq_enable(%struct.smb347_charger* %203)
  br label %205

205:                                              ; preds = %202, %196
  br label %206

206:                                              ; preds = %205, %185
  store i32 0, i32* %3, align 4
  br label %207

207:                                              ; preds = %206, %180, %138, %103, %79, %69, %43, %34, %21
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.smb347_charger* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.smb347_charger*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @smb347_hw_init(%struct.smb347_charger*) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i8* @power_supply_register(%struct.device*, i32*, %struct.power_supply_config*) #2

declare dso_local i32 @power_supply_unregister(i8*) #2

declare dso_local i32 @smb347_irq_init(%struct.smb347_charger*, %struct.i2c_client*) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #2

declare dso_local i32 @smb347_irq_enable(%struct.smb347_charger*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
