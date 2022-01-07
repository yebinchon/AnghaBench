; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14656_charger_detector.c_max14656_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14656_charger_detector.c_max14656_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device, %struct.i2c_adapter* }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.power_supply_config = type { %struct.max14656_chip* }
%struct.max14656_chip = type { i32, i32, i32, %struct.TYPE_2__, i64, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"invalid irq number: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"No support for SMBUS_BYTE_DATA\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX14656_NAME = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@max14656_battery_props = common dso_local global i32 0, align 4
@max14656_get_property = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"power_supply_register failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@max14656_irq_worker = common dso_local global i32 0, align 4
@stop_irq_work = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"devm_add_action %d failed\0A\00", align 1
@max14656_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"request_irq %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max14656_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14656_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.power_supply_config, align 8
  %9 = alloca %struct.max14656_chip*, align 8
  %10 = alloca i32, align 4
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
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 8, i1 false)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %149

29:                                               ; preds = %2
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %31 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %32 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %149

39:                                               ; preds = %29
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.max14656_chip* @devm_kzalloc(%struct.device* %40, i32 48, i32 %41)
  store %struct.max14656_chip* %42, %struct.max14656_chip** %9, align 8
  %43 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %44 = icmp ne %struct.max14656_chip* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %149

48:                                               ; preds = %39
  %49 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %50 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %8, i32 0, i32 0
  store %struct.max14656_chip* %49, %struct.max14656_chip** %50, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %53 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %52, i32 0, i32 5
  store %struct.i2c_client* %51, %struct.i2c_client** %53, align 8
  %54 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %55 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @MAX14656_NAME, align 4
  %57 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %58 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @POWER_SUPPLY_TYPE_UNKNOWN, align 4
  %61 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %62 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @max14656_battery_props, align 4
  %65 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %66 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @max14656_battery_props, align 4
  %69 = call i32 @ARRAY_SIZE(i32 %68)
  %70 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %71 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @max14656_get_property, align 4
  %74 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %75 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %79 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %81 = call i32 @max14656_hw_init(%struct.max14656_chip* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %48
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %149

87:                                               ; preds = %48
  %88 = load %struct.device*, %struct.device** %7, align 8
  %89 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %90 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %89, i32 0, i32 3
  %91 = call i32 @devm_power_supply_register(%struct.device* %88, %struct.TYPE_2__* %90, %struct.power_supply_config* %8)
  %92 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %93 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %95 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @IS_ERR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %87
  %100 = load %struct.device*, %struct.device** %7, align 8
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %149

104:                                              ; preds = %87
  %105 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %106 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %105, i32 0, i32 1
  %107 = load i32, i32* @max14656_irq_worker, align 4
  %108 = call i32 @INIT_DELAYED_WORK(i32* %106, i32 %107)
  %109 = load %struct.device*, %struct.device** %7, align 8
  %110 = load i32, i32* @stop_irq_work, align 4
  %111 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %112 = call i32 @devm_add_action(%struct.device* %109, i32 %110, %struct.max14656_chip* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %104
  %116 = load %struct.device*, %struct.device** %7, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %3, align 4
  br label %149

120:                                              ; preds = %104
  %121 = load %struct.device*, %struct.device** %7, align 8
  %122 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %123 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @max14656_irq, align 4
  %126 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %127 = load i32, i32* @MAX14656_NAME, align 4
  %128 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %129 = call i32 @devm_request_irq(%struct.device* %121, i32 %124, i32 %125, i32 %126, i32 %127, %struct.max14656_chip* %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %120
  %133 = load %struct.device*, %struct.device** %7, align 8
  %134 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %135 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %133, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %149

140:                                              ; preds = %120
  %141 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %142 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @enable_irq_wake(i32 %143)
  %145 = load %struct.max14656_chip*, %struct.max14656_chip** %9, align 8
  %146 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %145, i32 0, i32 1
  %147 = call i32 @msecs_to_jiffies(i32 2000)
  %148 = call i32 @schedule_delayed_work(i32* %146, i32 %147)
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %140, %132, %115, %99, %84, %45, %34, %23
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #2

declare dso_local %struct.max14656_chip* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @max14656_hw_init(%struct.max14656_chip*) #2

declare dso_local i32 @devm_power_supply_register(%struct.device*, %struct.TYPE_2__*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @devm_add_action(%struct.device*, i32, %struct.max14656_chip*) #2

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.max14656_chip*) #2

declare dso_local i32 @enable_irq_wake(i32) #2

declare dso_local i32 @schedule_delayed_work(i32*, i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
