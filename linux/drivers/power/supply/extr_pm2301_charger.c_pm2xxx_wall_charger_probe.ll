; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2xxx_wall_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2xxx_wall_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32 }
%struct.i2c_client = type { i32, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.pm2xxx_platform_data* }
%struct.pm2xxx_platform_data = type { i64, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.power_supply_config = type { i32, i32 }
%struct.pm2xxx_charger = type { i32, i32*, %struct.TYPE_33__*, %struct.TYPE_32__, %struct.TYPE_30__*, i32, %struct.TYPE_26__, %struct.TYPE_34__*, i32, %struct.TYPE_25__, i32, i32, i32, %struct.TYPE_29__, i64, i32* }
%struct.TYPE_33__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_33__*, i32, i8*, i8*, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32*, i32*, i32* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i8**, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.i2c_device_id*, %struct.i2c_client* }

@.str = private unnamed_addr constant [27 x i8] c"No platform data supplied\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"pm2xxx_charger allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@pm2xxx_int = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"no charger platform data supplied\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"no battery platform data supplied\0A\00", align 1
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"pm2301 i2c_check_functionality failed\0A\00", align 1
@POWER_SUPPLY_TYPE_MAINS = common dso_local global i32 0, align 4
@pm2xxx_charger_ac_props = common dso_local global i8** null, align 8
@pm2xxx_charger_ac_get_property = common dso_local global i32 0, align 4
@pm2xxx_charger_ac_en = common dso_local global i32 0, align 4
@pm2xxx_charger_watchdog_kick = common dso_local global i32 0, align 4
@pm2xxx_charger_update_charger_current = common dso_local global i32 0, align 4
@pm2xxx_charger_voltage_map = common dso_local global i8** null, align 8
@pm2xxx_charger_current_map = common dso_local global i8** null, align 8
@WD_KICK_INTERVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"pm2xxx_charger_wq\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to create work queue\0A\00", align 1
@pm2xxx_charger_ac_work = common dso_local global i32 0, align 4
@pm2xxx_charger_check_main_thermal_prot_work = common dso_local global i32 0, align 4
@pm2xxx_charger_check_hw_failure_work = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"vddadc\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to get vddadc regulator\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to register AC charger\0A\00", align 1
@pm2xxx_charger_irq = common dso_local global %struct.TYPE_27__* null, align 8
@.str.10 = private unnamed_addr constant [33 x i8] c"failed to request %s IRQ %d: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"set active Error\0A\00", align 1
@PM2XXX_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"failed to set irq wake\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"pm2301_lpm_gpio\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"pm2301_lpm_gpio request failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"pm2301_lpm_gpio direction failed\0A\00", align 1
@PM2XXX_NUM_INT_REG = common dso_local global i32 0, align 4
@pm2xxx_interrupt_registers = common dso_local global i32* null, align 8
@AB8500_POW_KEY_1_ON = common dso_local global i32 0, align 4
@AB8500_MAIN_CH_DET = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pm2xxx_wall_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2xxx_wall_charger_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pm2xxx_platform_data*, align 8
  %7 = alloca %struct.power_supply_config, align 4
  %8 = alloca %struct.pm2xxx_charger*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 0
  %15 = load %struct.pm2xxx_platform_data*, %struct.pm2xxx_platform_data** %14, align 8
  store %struct.pm2xxx_platform_data* %15, %struct.pm2xxx_platform_data** %6, align 8
  %16 = bitcast %struct.power_supply_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  store i32 0, i32* %9, align 4
  %17 = load %struct.pm2xxx_platform_data*, %struct.pm2xxx_platform_data** %6, align 8
  %18 = icmp ne %struct.pm2xxx_platform_data* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = call i32 (%struct.TYPE_34__*, i8*, ...) @dev_err(%struct.TYPE_34__* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %482

25:                                               ; preds = %2
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.pm2xxx_charger* @kzalloc(i32 192, i32 %26)
  store %struct.pm2xxx_charger* %27, %struct.pm2xxx_charger** %8, align 8
  %28 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %29 = icmp ne %struct.pm2xxx_charger* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = call i32 (%struct.TYPE_34__*, i8*, ...) @dev_err(%struct.TYPE_34__* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %482

36:                                               ; preds = %25
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 1
  %39 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %40 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %39, i32 0, i32 7
  store %struct.TYPE_34__* %38, %struct.TYPE_34__** %40, align 8
  %41 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %42 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %41, i32 0, i32 15
  store i32* @pm2xxx_int, i32** %42, align 8
  %43 = load %struct.pm2xxx_platform_data*, %struct.pm2xxx_platform_data** %6, align 8
  %44 = getelementptr inbounds %struct.pm2xxx_platform_data, %struct.pm2xxx_platform_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %44, align 8
  %46 = icmp ne %struct.TYPE_30__* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %36
  %48 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %49 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %48, i32 0, i32 7
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %49, align 8
  %51 = call i32 (%struct.TYPE_34__*, i8*, ...) @dev_err(%struct.TYPE_34__* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %478

54:                                               ; preds = %36
  %55 = load %struct.pm2xxx_platform_data*, %struct.pm2xxx_platform_data** %6, align 8
  %56 = getelementptr inbounds %struct.pm2xxx_platform_data, %struct.pm2xxx_platform_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_30__*, %struct.TYPE_30__** %56, align 8
  %58 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %59 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %58, i32 0, i32 4
  store %struct.TYPE_30__* %57, %struct.TYPE_30__** %59, align 8
  %60 = load %struct.pm2xxx_platform_data*, %struct.pm2xxx_platform_data** %6, align 8
  %61 = getelementptr inbounds %struct.pm2xxx_platform_data, %struct.pm2xxx_platform_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %54
  %65 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %66 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %65, i32 0, i32 7
  %67 = load %struct.TYPE_34__*, %struct.TYPE_34__** %66, align 8
  %68 = call i32 (%struct.TYPE_34__*, i8*, ...) @dev_err(%struct.TYPE_34__* %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  br label %478

71:                                               ; preds = %54
  %72 = load %struct.pm2xxx_platform_data*, %struct.pm2xxx_platform_data** %6, align 8
  %73 = getelementptr inbounds %struct.pm2xxx_platform_data, %struct.pm2xxx_platform_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %76 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %75, i32 0, i32 14
  store i64 %74, i64* %76, align 8
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %81 = load i32, i32* @I2C_FUNC_SMBUS_READ_WORD_DATA, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @i2c_check_functionality(i32 %79, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %71
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %9, align 4
  %88 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %89 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %88, i32 0, i32 7
  %90 = load %struct.TYPE_34__*, %struct.TYPE_34__** %89, align 8
  %91 = call i32 @dev_info(%struct.TYPE_34__* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %478

92:                                               ; preds = %71
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %95 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %94, i32 0, i32 13
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 1
  store %struct.i2c_client* %93, %struct.i2c_client** %96, align 8
  %97 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %98 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %99 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %98, i32 0, i32 13
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 0
  store %struct.i2c_device_id* %97, %struct.i2c_device_id** %100, align 8
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %103 = call i32 @i2c_set_clientdata(%struct.i2c_client* %101, %struct.pm2xxx_charger* %102)
  %104 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %105 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %104, i32 0, i32 4
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %110 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %109, i32 0, i32 9
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @POWER_SUPPLY_TYPE_MAINS, align 4
  %113 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %114 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %113, i32 0, i32 9
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 3
  store i32 %112, i32* %115, align 8
  %116 = load i8**, i8*** @pm2xxx_charger_ac_props, align 8
  %117 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %118 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %117, i32 0, i32 9
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  store i8** %116, i8*** %119, align 8
  %120 = load i8**, i8*** @pm2xxx_charger_ac_props, align 8
  %121 = call i32 @ARRAY_SIZE(i8** %120)
  %122 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %123 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %122, i32 0, i32 9
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 8
  %125 = load i32, i32* @pm2xxx_charger_ac_get_property, align 4
  %126 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %127 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %126, i32 0, i32 9
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 4
  %129 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %130 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %129, i32 0, i32 4
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 1
  store i32 %133, i32* %134, align 4
  %135 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %136 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %135, i32 0, i32 4
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 0
  store i32 %139, i32* %140, align 4
  %141 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %142 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 2
  store i32* @pm2xxx_charger_ac_en, i32** %144, align 8
  %145 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %146 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 1
  store i32* @pm2xxx_charger_watchdog_kick, i32** %148, align 8
  %149 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %150 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %151, i32 0, i32 0
  store i32* @pm2xxx_charger_update_charger_current, i32** %152, align 8
  %153 = load i8**, i8*** @pm2xxx_charger_voltage_map, align 8
  %154 = load i8**, i8*** @pm2xxx_charger_voltage_map, align 8
  %155 = call i32 @ARRAY_SIZE(i8** %154)
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %153, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %161 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 5
  store i8* %159, i8** %162, align 8
  %163 = load i8**, i8*** @pm2xxx_charger_current_map, align 8
  %164 = load i8**, i8*** @pm2xxx_charger_current_map, align 8
  %165 = call i32 @ARRAY_SIZE(i8** %164)
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %163, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %171 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %171, i32 0, i32 4
  store i8* %169, i8** %172, align 8
  %173 = load i32, i32* @WD_KICK_INTERVAL, align 4
  %174 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %175 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %175, i32 0, i32 3
  store i32 %173, i32* %176, align 8
  %177 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %178 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 0
  store i32 1, i32* %179, align 8
  %180 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %181 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %181, i32 0, i32 1
  store i32 1, i32* %182, align 4
  %183 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %184 = call i32* @alloc_ordered_workqueue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %183)
  %185 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %186 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %185, i32 0, i32 1
  store i32* %184, i32** %186, align 8
  %187 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %188 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %191, label %198

191:                                              ; preds = %92
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %9, align 4
  %194 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %195 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %194, i32 0, i32 7
  %196 = load %struct.TYPE_34__*, %struct.TYPE_34__** %195, align 8
  %197 = call i32 (%struct.TYPE_34__*, i8*, ...) @dev_err(%struct.TYPE_34__* %196, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %478

198:                                              ; preds = %92
  %199 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %200 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %199, i32 0, i32 12
  %201 = load i32, i32* @pm2xxx_charger_ac_work, align 4
  %202 = call i32 @INIT_WORK(i32* %200, i32 %201)
  %203 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %204 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %203, i32 0, i32 11
  %205 = load i32, i32* @pm2xxx_charger_check_main_thermal_prot_work, align 4
  %206 = call i32 @INIT_WORK(i32* %204, i32 %205)
  %207 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %208 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %207, i32 0, i32 10
  %209 = load i32, i32* @pm2xxx_charger_check_hw_failure_work, align 4
  %210 = call i32 @INIT_DEFERRABLE_WORK(i32* %208, i32 %209)
  %211 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %212 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %211, i32 0, i32 7
  %213 = load %struct.TYPE_34__*, %struct.TYPE_34__** %212, align 8
  %214 = call %struct.TYPE_33__* @regulator_get(%struct.TYPE_34__* %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %215 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %216 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %215, i32 0, i32 2
  store %struct.TYPE_33__* %214, %struct.TYPE_33__** %216, align 8
  %217 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %218 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %217, i32 0, i32 2
  %219 = load %struct.TYPE_33__*, %struct.TYPE_33__** %218, align 8
  %220 = call i64 @IS_ERR(%struct.TYPE_33__* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %198
  %223 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %224 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %223, i32 0, i32 2
  %225 = load %struct.TYPE_33__*, %struct.TYPE_33__** %224, align 8
  %226 = call i32 @PTR_ERR(%struct.TYPE_33__* %225)
  store i32 %226, i32* %9, align 4
  %227 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %228 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %227, i32 0, i32 7
  %229 = load %struct.TYPE_34__*, %struct.TYPE_34__** %228, align 8
  %230 = call i32 (%struct.TYPE_34__*, i8*, ...) @dev_err(%struct.TYPE_34__* %229, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %473

231:                                              ; preds = %198
  %232 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %233 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %232, i32 0, i32 7
  %234 = load %struct.TYPE_34__*, %struct.TYPE_34__** %233, align 8
  %235 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %236 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %235, i32 0, i32 9
  %237 = call %struct.TYPE_33__* @power_supply_register(%struct.TYPE_34__* %234, %struct.TYPE_25__* %236, %struct.power_supply_config* %7)
  %238 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %239 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %239, i32 0, i32 2
  store %struct.TYPE_33__* %237, %struct.TYPE_33__** %240, align 8
  %241 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %242 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_33__*, %struct.TYPE_33__** %243, align 8
  %245 = call i64 @IS_ERR(%struct.TYPE_33__* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %231
  %248 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %249 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %248, i32 0, i32 7
  %250 = load %struct.TYPE_34__*, %struct.TYPE_34__** %249, align 8
  %251 = call i32 (%struct.TYPE_34__*, i8*, ...) @dev_err(%struct.TYPE_34__* %250, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %252 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %253 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_33__*, %struct.TYPE_33__** %254, align 8
  %256 = call i32 @PTR_ERR(%struct.TYPE_33__* %255)
  store i32 %256, i32* %9, align 4
  br label %468

257:                                              ; preds = %231
  %258 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %259 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %258, i32 0, i32 4
  %260 = load %struct.TYPE_30__*, %struct.TYPE_30__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @gpio_to_irq(i32 %262)
  %264 = load %struct.TYPE_27__*, %struct.TYPE_27__** @pm2xxx_charger_irq, align 8
  %265 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %264, i64 0
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %269 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %268, i32 0, i32 4
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_27__*, %struct.TYPE_27__** @pm2xxx_charger_irq, align 8
  %274 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %273, i64 0
  %275 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %278 = call i32 @request_threaded_irq(i32 %263, i32* null, i32 %267, i32 %272, i32 %276, %struct.pm2xxx_charger* %277)
  store i32 %278, i32* %9, align 4
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %297

281:                                              ; preds = %257
  %282 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %283 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %282, i32 0, i32 7
  %284 = load %struct.TYPE_34__*, %struct.TYPE_34__** %283, align 8
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** @pm2xxx_charger_irq, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i64 0
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %290 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %289, i32 0, i32 4
  %291 = load %struct.TYPE_30__*, %struct.TYPE_30__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @gpio_to_irq(i32 %293)
  %295 = load i32, i32* %9, align 4
  %296 = call i32 (%struct.TYPE_34__*, i8*, ...) @dev_err(%struct.TYPE_34__* %284, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %288, i32 %294, i32 %295)
  br label %462

297:                                              ; preds = %257
  %298 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %299 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %298, i32 0, i32 7
  %300 = load %struct.TYPE_34__*, %struct.TYPE_34__** %299, align 8
  %301 = call i32 @pm_runtime_set_active(%struct.TYPE_34__* %300)
  store i32 %301, i32* %9, align 4
  %302 = load i32, i32* %9, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %297
  %305 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %306 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %305, i32 0, i32 7
  %307 = load %struct.TYPE_34__*, %struct.TYPE_34__** %306, align 8
  %308 = call i32 (%struct.TYPE_34__*, i8*, ...) @dev_err(%struct.TYPE_34__* %307, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %309

309:                                              ; preds = %304, %297
  %310 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %311 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %310, i32 0, i32 7
  %312 = load %struct.TYPE_34__*, %struct.TYPE_34__** %311, align 8
  %313 = call i32 @pm_runtime_enable(%struct.TYPE_34__* %312)
  %314 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %315 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %314, i32 0, i32 7
  %316 = load %struct.TYPE_34__*, %struct.TYPE_34__** %315, align 8
  %317 = load i32, i32* @PM2XXX_AUTOSUSPEND_DELAY, align 4
  %318 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_34__* %316, i32 %317)
  %319 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %320 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %319, i32 0, i32 7
  %321 = load %struct.TYPE_34__*, %struct.TYPE_34__** %320, align 8
  %322 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_34__* %321)
  %323 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %324 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %323, i32 0, i32 7
  %325 = load %struct.TYPE_34__*, %struct.TYPE_34__** %324, align 8
  %326 = call i32 @pm_runtime_resume(%struct.TYPE_34__* %325)
  %327 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %328 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %327, i32 0, i32 4
  %329 = load %struct.TYPE_30__*, %struct.TYPE_30__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @gpio_to_irq(i32 %331)
  %333 = call i32 @enable_irq_wake(i32 %332)
  store i32 %333, i32* %9, align 4
  %334 = load i32, i32* %9, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %309
  %337 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %338 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %337, i32 0, i32 7
  %339 = load %struct.TYPE_34__*, %struct.TYPE_34__** %338, align 8
  %340 = call i32 (%struct.TYPE_34__*, i8*, ...) @dev_err(%struct.TYPE_34__* %339, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %453

341:                                              ; preds = %309
  %342 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %343 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %342, i32 0, i32 8
  %344 = call i32 @mutex_init(i32* %343)
  %345 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %346 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %345, i32 0, i32 4
  %347 = load %struct.TYPE_30__*, %struct.TYPE_30__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = call i64 @gpio_is_valid(i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %386

352:                                              ; preds = %341
  %353 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %354 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %353, i32 0, i32 4
  %355 = load %struct.TYPE_30__*, %struct.TYPE_30__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %359 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %358, i32 0, i32 5
  store i32 %357, i32* %359, align 8
  %360 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %361 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %360, i32 0, i32 5
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @gpio_request(i32 %362, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  store i32 %363, i32* %9, align 4
  %364 = load i32, i32* %9, align 4
  %365 = icmp slt i32 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %352
  %367 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %368 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %367, i32 0, i32 7
  %369 = load %struct.TYPE_34__*, %struct.TYPE_34__** %368, align 8
  %370 = call i32 (%struct.TYPE_34__*, i8*, ...) @dev_err(%struct.TYPE_34__* %369, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  br label %445

371:                                              ; preds = %352
  %372 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %373 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %372, i32 0, i32 5
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @gpio_direction_output(i32 %374, i32 0)
  store i32 %375, i32* %9, align 4
  %376 = load i32, i32* %9, align 4
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %383

378:                                              ; preds = %371
  %379 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %380 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %379, i32 0, i32 7
  %381 = load %struct.TYPE_34__*, %struct.TYPE_34__** %380, align 8
  %382 = call i32 (%struct.TYPE_34__*, i8*, ...) @dev_err(%struct.TYPE_34__* %381, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  br label %433

383:                                              ; preds = %371
  %384 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %385 = call i32 @set_lpn_pin(%struct.pm2xxx_charger* %384)
  br label %386

386:                                              ; preds = %383, %341
  store i32 0, i32* %11, align 4
  br label %387

387:                                              ; preds = %399, %386
  %388 = load i32, i32* %11, align 4
  %389 = load i32, i32* @PM2XXX_NUM_INT_REG, align 4
  %390 = icmp slt i32 %388, %389
  br i1 %390, label %391, label %402

391:                                              ; preds = %387
  %392 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %393 = load i32*, i32** @pm2xxx_interrupt_registers, align 8
  %394 = load i32, i32* %11, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = call i32 @pm2xxx_reg_read(%struct.pm2xxx_charger* %392, i32 %397, i64* %10)
  br label %399

399:                                              ; preds = %391
  %400 = load i32, i32* %11, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %11, align 4
  br label %387

402:                                              ; preds = %387
  %403 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %404 = call i32 @pm2xxx_charger_detection(%struct.pm2xxx_charger* %403, i64* %10)
  store i32 %404, i32* %9, align 4
  %405 = load i32, i32* %9, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %432

407:                                              ; preds = %402
  %408 = load i64, i64* %10, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %432

410:                                              ; preds = %407
  %411 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %412 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %411, i32 0, i32 6
  %413 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %412, i32 0, i32 0
  store i32 1, i32* %413, align 4
  %414 = load i32, i32* @AB8500_POW_KEY_1_ON, align 4
  %415 = xor i32 %414, -1
  %416 = load i32, i32* @AB8500_MAIN_CH_DET, align 4
  %417 = call i32 @ab8500_override_turn_on_stat(i32 %415, i32 %416)
  %418 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %419 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %418, i32 0, i32 0
  store i32 1, i32* %419, align 8
  %420 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %421 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %420, i32 0, i32 3
  %422 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %421, i32 0, i32 2
  %423 = load %struct.TYPE_33__*, %struct.TYPE_33__** %422, align 8
  %424 = call i32 @power_supply_changed(%struct.TYPE_33__* %423)
  %425 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %426 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %425, i32 0, i32 3
  %427 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %426, i32 0, i32 2
  %428 = load %struct.TYPE_33__*, %struct.TYPE_33__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %429, i32 0, i32 0
  %431 = call i32 @sysfs_notify(i32* %430, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  br label %432

432:                                              ; preds = %410, %407, %402
  store i32 0, i32* %3, align 4
  br label %482

433:                                              ; preds = %378
  %434 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %435 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %434, i32 0, i32 5
  %436 = load i32, i32* %435, align 8
  %437 = call i64 @gpio_is_valid(i32 %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %444

439:                                              ; preds = %433
  %440 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %441 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %440, i32 0, i32 5
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @gpio_free(i32 %442)
  br label %444

444:                                              ; preds = %439, %433
  br label %445

445:                                              ; preds = %444, %366
  %446 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %447 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %446, i32 0, i32 4
  %448 = load %struct.TYPE_30__*, %struct.TYPE_30__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @gpio_to_irq(i32 %450)
  %452 = call i32 @disable_irq_wake(i32 %451)
  br label %453

453:                                              ; preds = %445, %336
  %454 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %455 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %454, i32 0, i32 4
  %456 = load %struct.TYPE_30__*, %struct.TYPE_30__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = call i32 @gpio_to_irq(i32 %458)
  %460 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %461 = call i32 @free_irq(i32 %459, %struct.pm2xxx_charger* %460)
  br label %462

462:                                              ; preds = %453, %281
  %463 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %464 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %463, i32 0, i32 3
  %465 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %464, i32 0, i32 2
  %466 = load %struct.TYPE_33__*, %struct.TYPE_33__** %465, align 8
  %467 = call i32 @power_supply_unregister(%struct.TYPE_33__* %466)
  br label %468

468:                                              ; preds = %462, %247
  %469 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %470 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %469, i32 0, i32 2
  %471 = load %struct.TYPE_33__*, %struct.TYPE_33__** %470, align 8
  %472 = call i32 @regulator_put(%struct.TYPE_33__* %471)
  br label %473

473:                                              ; preds = %468, %222
  %474 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %475 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %474, i32 0, i32 1
  %476 = load i32*, i32** %475, align 8
  %477 = call i32 @destroy_workqueue(i32* %476)
  br label %478

478:                                              ; preds = %473, %191, %85, %64, %47
  %479 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %480 = call i32 @kfree(%struct.pm2xxx_charger* %479)
  %481 = load i32, i32* %9, align 4
  store i32 %481, i32* %3, align 4
  br label %482

482:                                              ; preds = %478, %432, %30, %19
  %483 = load i32, i32* %3, align 4
  ret i32 %483
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_err(%struct.TYPE_34__*, i8*, ...) #2

declare dso_local %struct.pm2xxx_charger* @kzalloc(i32, i32) #2

declare dso_local i32 @i2c_check_functionality(i32, i32) #2

declare dso_local i32 @dev_info(%struct.TYPE_34__*, i8*) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pm2xxx_charger*) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32* @alloc_ordered_workqueue(i8*, i32) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #2

declare dso_local %struct.TYPE_33__* @regulator_get(%struct.TYPE_34__*, i8*) #2

declare dso_local i64 @IS_ERR(%struct.TYPE_33__*) #2

declare dso_local i32 @PTR_ERR(%struct.TYPE_33__*) #2

declare dso_local %struct.TYPE_33__* @power_supply_register(%struct.TYPE_34__*, %struct.TYPE_25__*, %struct.power_supply_config*) #2

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.pm2xxx_charger*) #2

declare dso_local i32 @gpio_to_irq(i32) #2

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_34__*) #2

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_34__*) #2

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_34__*, i32) #2

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_34__*) #2

declare dso_local i32 @pm_runtime_resume(%struct.TYPE_34__*) #2

declare dso_local i32 @enable_irq_wake(i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i64 @gpio_is_valid(i32) #2

declare dso_local i32 @gpio_request(i32, i8*) #2

declare dso_local i32 @gpio_direction_output(i32, i32) #2

declare dso_local i32 @set_lpn_pin(%struct.pm2xxx_charger*) #2

declare dso_local i32 @pm2xxx_reg_read(%struct.pm2xxx_charger*, i32, i64*) #2

declare dso_local i32 @pm2xxx_charger_detection(%struct.pm2xxx_charger*, i64*) #2

declare dso_local i32 @ab8500_override_turn_on_stat(i32, i32) #2

declare dso_local i32 @power_supply_changed(%struct.TYPE_33__*) #2

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #2

declare dso_local i32 @gpio_free(i32) #2

declare dso_local i32 @disable_irq_wake(i32) #2

declare dso_local i32 @free_irq(i32, %struct.pm2xxx_charger*) #2

declare dso_local i32 @power_supply_unregister(%struct.TYPE_33__*) #2

declare dso_local i32 @regulator_put(%struct.TYPE_33__*) #2

declare dso_local i32 @destroy_workqueue(i32*) #2

declare dso_local i32 @kfree(%struct.pm2xxx_charger*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
