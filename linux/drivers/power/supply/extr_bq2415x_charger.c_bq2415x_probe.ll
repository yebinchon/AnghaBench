; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_10__*, %struct.bq2415x_platform_data*, %struct.device_node* }
%struct.TYPE_10__ = type { i32 }
%struct.bq2415x_platform_data = type { i32 }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32, i32 }
%struct.bq2415x_device = type { i32, i8*, i32, i64, %struct.TYPE_13__*, i32, i8*, %struct.TYPE_12__, %struct.TYPE_11__, i64, i8*, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.acpi_device_id = type { i32, i32 }
%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Neither devicetree, nor platform data, nor ACPI support\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@bq2415x_id_mutex = common dso_local global i32 0, align 4
@bq2415x_id = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to match device name\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to allocate device name\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BQ2415X_MODE_OFF = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"ti,current-limit\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"ti,weak-battery-voltage\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"ti,battery-regulation-voltage\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"ti,charge-current\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"ti,termination-current\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"ti,resistor-sense\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"ti,usb-charger-detection\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"failed to register power supply: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"failed to set default values: %d\0A\00", align 1
@bq2415x_notifier_call = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [28 x i8] c"failed to reg notifier: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"automode supported, waiting for events\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"automode not supported\0A\00", align 1
@POWER_SUPPLY_PROP_CURRENT_MAX = common dso_local global i32 0, align 4
@bq2415x_timer_work = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"driver registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bq2415x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bq2415x_device*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.bq2415x_platform_data*, align 8
  %12 = alloca %struct.acpi_device_id*, align 8
  %13 = alloca %struct.power_supply*, align 8
  %14 = alloca %union.power_supply_propval, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i8* null, i8** %8, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.bq2415x_platform_data*, %struct.bq2415x_platform_data** %21, align 8
  store %struct.bq2415x_platform_data* %22, %struct.bq2415x_platform_data** %11, align 8
  store %struct.acpi_device_id* null, %struct.acpi_device_id** %12, align 8
  store %struct.power_supply* null, %struct.power_supply** %13, align 8
  %23 = load %struct.device_node*, %struct.device_node** %10, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %2
  %26 = load %struct.bq2415x_platform_data*, %struct.bq2415x_platform_data** %11, align 8
  %27 = icmp ne %struct.bq2415x_platform_data* %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i64 @ACPI_HANDLE(%struct.TYPE_13__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %35, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %392

39:                                               ; preds = %28, %25, %2
  %40 = call i32 @mutex_lock(i32* @bq2415x_id_mutex)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @idr_alloc(i32* @bq2415x_id, %struct.i2c_client* %41, i32 0, i32 0, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = call i32 @mutex_unlock(i32* @bq2415x_id_mutex)
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %392

49:                                               ; preds = %39
  %50 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %51 = icmp ne %struct.i2c_device_id* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %55 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i8* @kasprintf(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  store i8* %58, i8** %8, align 8
  br label %90

59:                                               ; preds = %49
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = call i64 @ACPI_HANDLE(%struct.TYPE_13__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %59
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = call %struct.acpi_device_id* @acpi_match_device(i32 %70, %struct.TYPE_13__* %72)
  store %struct.acpi_device_id* %73, %struct.acpi_device_id** %12, align 8
  %74 = load %struct.acpi_device_id*, %struct.acpi_device_id** %12, align 8
  %75 = icmp ne %struct.acpi_device_id* %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %64
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %386

82:                                               ; preds = %64
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = load %struct.acpi_device_id*, %struct.acpi_device_id** %12, align 8
  %85 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i8* @kasprintf(i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  store i8* %88, i8** %8, align 8
  br label %89

89:                                               ; preds = %82, %59
  br label %90

90:                                               ; preds = %89, %52
  %91 = load i8*, i8** %8, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %386

99:                                               ; preds = %90
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call %struct.bq2415x_device* @devm_kzalloc(%struct.TYPE_13__* %101, i32 120, i32 %102)
  store %struct.bq2415x_device* %103, %struct.bq2415x_device** %9, align 8
  %104 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %105 = icmp ne %struct.bq2415x_device* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %375

109:                                              ; preds = %99
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %112 = call i32 @i2c_set_clientdata(%struct.i2c_client* %110, %struct.bq2415x_device* %111)
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %115 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %119 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %118, i32 0, i32 4
  store %struct.TYPE_13__* %117, %struct.TYPE_13__** %119, align 8
  %120 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %121 = icmp ne %struct.i2c_device_id* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %109
  %123 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %124 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %127 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %126, i32 0, i32 11
  store i32 %125, i32* %127, align 8
  br label %141

128:                                              ; preds = %109
  %129 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %130 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %129, i32 0, i32 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = call i64 @ACPI_HANDLE(%struct.TYPE_13__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.acpi_device_id*, %struct.acpi_device_id** %12, align 8
  %136 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %139 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %138, i32 0, i32 11
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %134, %128
  br label %141

141:                                              ; preds = %140, %122
  %142 = load i8*, i8** %8, align 8
  %143 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %144 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** @BQ2415X_MODE_OFF, align 8
  %146 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %147 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %146, i32 0, i32 10
  store i8* %145, i8** %147, align 8
  %148 = load i8*, i8** @BQ2415X_MODE_OFF, align 8
  %149 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %150 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %149, i32 0, i32 6
  store i8* %148, i8** %150, align 8
  %151 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %152 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %151, i32 0, i32 9
  store i64 0, i64* %152, align 8
  %153 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %154 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %153, i32 0, i32 2
  store i32 0, i32* %154, align 8
  %155 = load %struct.device_node*, %struct.device_node** %10, align 8
  %156 = icmp ne %struct.device_node* %155, null
  br i1 %156, label %163, label %157

157:                                              ; preds = %141
  %158 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %159 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %158, i32 0, i32 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = call i64 @ACPI_HANDLE(%struct.TYPE_13__* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %238

163:                                              ; preds = %157, %141
  %164 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %165 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %164, i32 0, i32 4
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %168 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 6
  %170 = call i32 @device_property_read_u32(%struct.TYPE_13__* %166, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %169)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  br label %375

174:                                              ; preds = %163
  %175 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %176 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %175, i32 0, i32 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %179 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 5
  %181 = call i32 @device_property_read_u32(%struct.TYPE_13__* %177, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %174
  br label %375

185:                                              ; preds = %174
  %186 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %187 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %186, i32 0, i32 4
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %190 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %189, i32 0, i32 7
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 4
  %192 = call i32 @device_property_read_u32(%struct.TYPE_13__* %188, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32* %191)
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %185
  br label %375

196:                                              ; preds = %185
  %197 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %198 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %197, i32 0, i32 4
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %198, align 8
  %200 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %201 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %200, i32 0, i32 7
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 3
  %203 = call i32 @device_property_read_u32(%struct.TYPE_13__* %199, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32* %202)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %196
  br label %375

207:                                              ; preds = %196
  %208 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %209 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %208, i32 0, i32 4
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %209, align 8
  %211 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %212 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %211, i32 0, i32 7
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 2
  %214 = call i32 @device_property_read_u32(%struct.TYPE_13__* %210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32* %213)
  store i32 %214, i32* %6, align 4
  %215 = load i32, i32* %6, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %207
  br label %375

218:                                              ; preds = %207
  %219 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %220 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %219, i32 0, i32 4
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %220, align 8
  %222 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %223 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %222, i32 0, i32 7
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = call i32 @device_property_read_u32(%struct.TYPE_13__* %221, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32* %224)
  store i32 %225, i32* %6, align 4
  %226 = load i32, i32* %6, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %218
  br label %375

229:                                              ; preds = %218
  %230 = load %struct.device_node*, %struct.device_node** %10, align 8
  %231 = icmp ne %struct.device_node* %230, null
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = load %struct.device_node*, %struct.device_node** %10, align 8
  %234 = call i64 @of_parse_phandle(%struct.device_node* %233, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %235 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %236 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %235, i32 0, i32 3
  store i64 %234, i64* %236, align 8
  br label %237

237:                                              ; preds = %232, %229
  br label %243

238:                                              ; preds = %157
  %239 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %240 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %239, i32 0, i32 7
  %241 = load %struct.bq2415x_platform_data*, %struct.bq2415x_platform_data** %11, align 8
  %242 = call i32 @memcpy(%struct.TYPE_12__* %240, %struct.bq2415x_platform_data* %241, i32 32)
  br label %243

243:                                              ; preds = %238, %237
  %244 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %245 = call i32 @bq2415x_reset_chip(%struct.bq2415x_device* %244)
  %246 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %247 = call i32 @bq2415x_power_supply_init(%struct.bq2415x_device* %246)
  store i32 %247, i32* %6, align 4
  %248 = load i32, i32* %6, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %243
  %251 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %252 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %251, i32 0, i32 4
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %252, align 8
  %254 = load i32, i32* %6, align 4
  %255 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %253, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %254)
  br label %375

256:                                              ; preds = %243
  %257 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %258 = call i32 @bq2415x_set_defaults(%struct.bq2415x_device* %257)
  store i32 %258, i32* %6, align 4
  %259 = load i32, i32* %6, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %256
  %262 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %263 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %262, i32 0, i32 4
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %263, align 8
  %265 = load i32, i32* %6, align 4
  %266 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %264, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %265)
  br label %372

267:                                              ; preds = %256
  %268 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %269 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %278, label %272

272:                                              ; preds = %267
  %273 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %274 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %273, i32 0, i32 7
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %301

278:                                              ; preds = %272, %267
  %279 = load i64, i64* @bq2415x_notifier_call, align 8
  %280 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %281 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %280, i32 0, i32 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 0
  store i64 %279, i64* %282, align 8
  %283 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %284 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %283, i32 0, i32 8
  %285 = call i32 @power_supply_reg_notifier(%struct.TYPE_11__* %284)
  store i32 %285, i32* %6, align 4
  %286 = load i32, i32* %6, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %278
  %289 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %290 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %289, i32 0, i32 4
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %290, align 8
  %292 = load i32, i32* %6, align 4
  %293 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %291, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %292)
  br label %372

294:                                              ; preds = %278
  %295 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %296 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %295, i32 0, i32 2
  store i32 1, i32* %296, align 8
  %297 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %298 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %297, i32 0, i32 4
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %298, align 8
  %300 = call i32 @dev_info(%struct.TYPE_13__* %299, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  br label %308

301:                                              ; preds = %272
  %302 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %303 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %302, i32 0, i32 2
  store i32 -1, i32* %303, align 8
  %304 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %305 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %304, i32 0, i32 4
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %305, align 8
  %307 = call i32 @dev_info(%struct.TYPE_13__* %306, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  br label %308

308:                                              ; preds = %301, %294
  %309 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %310 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %309, i32 0, i32 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %339

314:                                              ; preds = %308
  %315 = load %struct.device_node*, %struct.device_node** %10, align 8
  %316 = icmp ne %struct.device_node* %315, null
  br i1 %316, label %317, label %325

317:                                              ; preds = %314
  %318 = load %struct.device_node*, %struct.device_node** %10, align 8
  %319 = call %struct.power_supply* @power_supply_get_by_phandle(%struct.device_node* %318, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  store %struct.power_supply* %319, %struct.power_supply** %13, align 8
  %320 = load %struct.power_supply*, %struct.power_supply** %13, align 8
  %321 = call i64 @IS_ERR(%struct.power_supply* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %317
  store %struct.power_supply* null, %struct.power_supply** %13, align 8
  br label %324

324:                                              ; preds = %323, %317
  br label %338

325:                                              ; preds = %314
  %326 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %327 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %326, i32 0, i32 7
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %337

331:                                              ; preds = %325
  %332 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %333 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %332, i32 0, i32 7
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = call %struct.power_supply* @power_supply_get_by_name(i64 %335)
  store %struct.power_supply* %336, %struct.power_supply** %13, align 8
  br label %337

337:                                              ; preds = %331, %325
  br label %338

338:                                              ; preds = %337, %324
  br label %339

339:                                              ; preds = %338, %308
  %340 = load %struct.power_supply*, %struct.power_supply** %13, align 8
  %341 = icmp ne %struct.power_supply* %340, null
  br i1 %341, label %342, label %361

342:                                              ; preds = %339
  %343 = load %struct.power_supply*, %struct.power_supply** %13, align 8
  %344 = load i32, i32* @POWER_SUPPLY_PROP_CURRENT_MAX, align 4
  %345 = call i32 @power_supply_get_property(%struct.power_supply* %343, i32 %344, %union.power_supply_propval* %14)
  store i32 %345, i32* %6, align 4
  %346 = load %struct.power_supply*, %struct.power_supply** %13, align 8
  %347 = call i32 @power_supply_put(%struct.power_supply* %346)
  %348 = load i32, i32* %6, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %360

350:                                              ; preds = %342
  %351 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %352 = bitcast %union.power_supply_propval* %14 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @bq2415x_update_reported_mode(%struct.bq2415x_device* %351, i32 %353)
  %355 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %356 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %357 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %356, i32 0, i32 6
  %358 = load i8*, i8** %357, align 8
  %359 = call i32 @bq2415x_set_mode(%struct.bq2415x_device* %355, i8* %358)
  br label %360

360:                                              ; preds = %350, %342
  br label %361

361:                                              ; preds = %360, %339
  %362 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %363 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %362, i32 0, i32 5
  %364 = load i32, i32* @bq2415x_timer_work, align 4
  %365 = call i32 @INIT_DELAYED_WORK(i32* %363, i32 %364)
  %366 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %367 = call i32 @bq2415x_set_autotimer(%struct.bq2415x_device* %366, i32 1)
  %368 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %369 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %368, i32 0, i32 4
  %370 = load %struct.TYPE_13__*, %struct.TYPE_13__** %369, align 8
  %371 = call i32 @dev_info(%struct.TYPE_13__* %370, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %392

372:                                              ; preds = %288, %261
  %373 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %374 = call i32 @bq2415x_power_supply_exit(%struct.bq2415x_device* %373)
  br label %375

375:                                              ; preds = %372, %250, %228, %217, %206, %195, %184, %173, %106
  %376 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %377 = icmp ne %struct.bq2415x_device* %376, null
  br i1 %377, label %378, label %383

378:                                              ; preds = %375
  %379 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %380 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %379, i32 0, i32 3
  %381 = load i64, i64* %380, align 8
  %382 = call i32 @of_node_put(i64 %381)
  br label %383

383:                                              ; preds = %378, %375
  %384 = load i8*, i8** %8, align 8
  %385 = call i32 @kfree(i8* %384)
  br label %386

386:                                              ; preds = %383, %93, %76
  %387 = call i32 @mutex_lock(i32* @bq2415x_id_mutex)
  %388 = load i32, i32* %7, align 4
  %389 = call i32 @idr_remove(i32* @bq2415x_id, i32 %388)
  %390 = call i32 @mutex_unlock(i32* @bq2415x_id_mutex)
  %391 = load i32, i32* %6, align 4
  store i32 %391, i32* %3, align 4
  br label %392

392:                                              ; preds = %386, %361, %47, %33
  %393 = load i32, i32* %3, align 4
  ret i32 %393
}

declare dso_local i64 @ACPI_HANDLE(%struct.TYPE_13__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @kasprintf(i32, i8*, i32, i32) #1

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.TYPE_13__*) #1

declare dso_local %struct.bq2415x_device* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.bq2415x_device*) #1

declare dso_local i32 @device_property_read_u32(%struct.TYPE_13__*, i8*, i32*) #1

declare dso_local i64 @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.bq2415x_platform_data*, i32) #1

declare dso_local i32 @bq2415x_reset_chip(%struct.bq2415x_device*) #1

declare dso_local i32 @bq2415x_power_supply_init(%struct.bq2415x_device*) #1

declare dso_local i32 @bq2415x_set_defaults(%struct.bq2415x_device*) #1

declare dso_local i32 @power_supply_reg_notifier(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.power_supply* @power_supply_get_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.power_supply*) #1

declare dso_local %struct.power_supply* @power_supply_get_by_name(i64) #1

declare dso_local i32 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #1

declare dso_local i32 @power_supply_put(%struct.power_supply*) #1

declare dso_local i32 @bq2415x_update_reported_mode(%struct.bq2415x_device*, i32) #1

declare dso_local i32 @bq2415x_set_mode(%struct.bq2415x_device*, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @bq2415x_set_autotimer(%struct.bq2415x_device*, i32) #1

declare dso_local i32 @bq2415x_power_supply_exit(%struct.bq2415x_device*) #1

declare dso_local i32 @of_node_put(i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
