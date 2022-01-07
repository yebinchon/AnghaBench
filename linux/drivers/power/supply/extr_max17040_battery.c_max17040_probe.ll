; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17040_battery.c_max17040_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17040_battery.c_max17040_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__, %struct.i2c_adapter* }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.power_supply_config = type { %struct.max17040_chip* }
%struct.max17040_chip = type { i32, i32, i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max17040_battery_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed: power supply register\0A\00", align 1
@max17040_work = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@MAX17040_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max17040_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max17040_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.power_supply_config, align 8
  %8 = alloca %struct.max17040_chip*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %6, align 8
  %12 = bitcast %struct.power_supply_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %14 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %15 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %77

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.max17040_chip* @devm_kzalloc(%struct.TYPE_4__* %22, i32 24, i32 %23)
  store %struct.max17040_chip* %24, %struct.max17040_chip** %8, align 8
  %25 = load %struct.max17040_chip*, %struct.max17040_chip** %8, align 8
  %26 = icmp ne %struct.max17040_chip* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %77

30:                                               ; preds = %20
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load %struct.max17040_chip*, %struct.max17040_chip** %8, align 8
  %33 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %32, i32 0, i32 3
  store %struct.i2c_client* %31, %struct.i2c_client** %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.max17040_chip*, %struct.max17040_chip** %8, align 8
  %39 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.max17040_chip*, %struct.max17040_chip** %8, align 8
  %42 = call i32 @i2c_set_clientdata(%struct.i2c_client* %40, %struct.max17040_chip* %41)
  %43 = load %struct.max17040_chip*, %struct.max17040_chip** %8, align 8
  %44 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 0
  store %struct.max17040_chip* %43, %struct.max17040_chip** %44, align 8
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = call i32 @power_supply_register(%struct.TYPE_4__* %46, i32* @max17040_battery_desc, %struct.power_supply_config* %7)
  %48 = load %struct.max17040_chip*, %struct.max17040_chip** %8, align 8
  %49 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.max17040_chip*, %struct.max17040_chip** %8, align 8
  %51 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %30
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = call i32 @dev_err(%struct.TYPE_4__* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.max17040_chip*, %struct.max17040_chip** %8, align 8
  %60 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %3, align 4
  br label %77

63:                                               ; preds = %30
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = call i32 @max17040_reset(%struct.i2c_client* %64)
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = call i32 @max17040_get_version(%struct.i2c_client* %66)
  %68 = load %struct.max17040_chip*, %struct.max17040_chip** %8, align 8
  %69 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %68, i32 0, i32 0
  %70 = load i32, i32* @max17040_work, align 4
  %71 = call i32 @INIT_DEFERRABLE_WORK(i32* %69, i32 %70)
  %72 = load i32, i32* @system_power_efficient_wq, align 4
  %73 = load %struct.max17040_chip*, %struct.max17040_chip** %8, align 8
  %74 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %73, i32 0, i32 0
  %75 = load i32, i32* @MAX17040_DELAY, align 4
  %76 = call i32 @queue_delayed_work(i32 %72, i32* %74, i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %63, %55, %27, %17
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #2

declare dso_local %struct.max17040_chip* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max17040_chip*) #2

declare dso_local i32 @power_supply_register(%struct.TYPE_4__*, i32*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @max17040_reset(%struct.i2c_client*) #2

declare dso_local i32 @max17040_get_version(%struct.i2c_client*) #2

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #2

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
