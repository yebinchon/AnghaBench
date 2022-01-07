; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab-eoz9.c_abeoz9_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab-eoz9.c_abeoz9_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.abeoz9_rtc_data = type { %struct.TYPE_4__*, %struct.regmap* }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.regmap = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@abeoz9_rtc_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"regmap allocation failed: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rtc_ops = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_BEGIN_2000 = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_END_2099 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @abeoz9_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abeoz9_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.abeoz9_rtc_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store %struct.abeoz9_rtc_data* null, %struct.abeoz9_rtc_data** %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2C_FUNC_I2C, align 4
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @i2c_check_functionality(i32 %14, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %104

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %26, i32* @abeoz9_rtc_regmap_config)
  store %struct.regmap* %27, %struct.regmap** %8, align 8
  %28 = load %struct.regmap*, %struct.regmap** %8, align 8
  %29 = call i64 @IS_ERR(%struct.regmap* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.regmap*, %struct.regmap** %8, align 8
  %33 = call i32 @PTR_ERR(%struct.regmap* %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %104

38:                                               ; preds = %25
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.abeoz9_rtc_data* @devm_kzalloc(%struct.device* %39, i32 16, i32 %40)
  store %struct.abeoz9_rtc_data* %41, %struct.abeoz9_rtc_data** %6, align 8
  %42 = load %struct.abeoz9_rtc_data*, %struct.abeoz9_rtc_data** %6, align 8
  %43 = icmp ne %struct.abeoz9_rtc_data* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %104

47:                                               ; preds = %38
  %48 = load %struct.regmap*, %struct.regmap** %8, align 8
  %49 = load %struct.abeoz9_rtc_data*, %struct.abeoz9_rtc_data** %6, align 8
  %50 = getelementptr inbounds %struct.abeoz9_rtc_data, %struct.abeoz9_rtc_data* %49, i32 0, i32 1
  store %struct.regmap* %48, %struct.regmap** %50, align 8
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = load %struct.abeoz9_rtc_data*, %struct.abeoz9_rtc_data** %6, align 8
  %53 = call i32 @dev_set_drvdata(%struct.device* %51, %struct.abeoz9_rtc_data* %52)
  %54 = load %struct.device*, %struct.device** %7, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @abeoz9_rtc_setup(%struct.device* %54, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %104

64:                                               ; preds = %47
  %65 = load %struct.device*, %struct.device** %7, align 8
  %66 = call %struct.TYPE_4__* @devm_rtc_allocate_device(%struct.device* %65)
  %67 = load %struct.abeoz9_rtc_data*, %struct.abeoz9_rtc_data** %6, align 8
  %68 = getelementptr inbounds %struct.abeoz9_rtc_data, %struct.abeoz9_rtc_data* %67, i32 0, i32 0
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %68, align 8
  %69 = load %struct.abeoz9_rtc_data*, %struct.abeoz9_rtc_data** %6, align 8
  %70 = getelementptr inbounds %struct.abeoz9_rtc_data, %struct.abeoz9_rtc_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = call i32 @PTR_ERR_OR_ZERO(%struct.TYPE_4__* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %104

77:                                               ; preds = %64
  %78 = load %struct.abeoz9_rtc_data*, %struct.abeoz9_rtc_data** %6, align 8
  %79 = getelementptr inbounds %struct.abeoz9_rtc_data, %struct.abeoz9_rtc_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i32* @rtc_ops, i32** %81, align 8
  %82 = load i32, i32* @RTC_TIMESTAMP_BEGIN_2000, align 4
  %83 = load %struct.abeoz9_rtc_data*, %struct.abeoz9_rtc_data** %6, align 8
  %84 = getelementptr inbounds %struct.abeoz9_rtc_data, %struct.abeoz9_rtc_data* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* @RTC_TIMESTAMP_END_2099, align 4
  %88 = load %struct.abeoz9_rtc_data*, %struct.abeoz9_rtc_data** %6, align 8
  %89 = getelementptr inbounds %struct.abeoz9_rtc_data, %struct.abeoz9_rtc_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 8
  %92 = load %struct.abeoz9_rtc_data*, %struct.abeoz9_rtc_data** %6, align 8
  %93 = getelementptr inbounds %struct.abeoz9_rtc_data, %struct.abeoz9_rtc_data* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = call i32 @rtc_register_device(%struct.TYPE_4__* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %77
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %3, align 4
  br label %104

100:                                              ; preds = %77
  %101 = load %struct.device*, %struct.device** %7, align 8
  %102 = load %struct.abeoz9_rtc_data*, %struct.abeoz9_rtc_data** %6, align 8
  %103 = call i32 @abeoz9_hwmon_register(%struct.device* %101, %struct.abeoz9_rtc_data* %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %98, %75, %62, %44, %31, %22
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.abeoz9_rtc_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.abeoz9_rtc_data*) #1

declare dso_local i32 @abeoz9_rtc_setup(%struct.device*, i32) #1

declare dso_local %struct.TYPE_4__* @devm_rtc_allocate_device(%struct.device*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.TYPE_4__*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_4__*) #1

declare dso_local i32 @abeoz9_hwmon_register(%struct.device*, %struct.abeoz9_rtc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
