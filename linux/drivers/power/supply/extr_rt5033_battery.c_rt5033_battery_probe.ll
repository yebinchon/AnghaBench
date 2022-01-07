; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt5033_battery.c_rt5033_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt5033_battery.c_rt5033_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.power_supply_config = type { %struct.rt5033_battery* }
%struct.rt5033_battery = type { i32, i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@rt5033_battery_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to initialize regmap\0A\00", align 1
@rt5033_battery_desc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to register power supply\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rt5033_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5033_battery_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.power_supply_config, align 8
  %8 = alloca %struct.rt5033_battery*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %6, align 8
  %13 = bitcast %struct.power_supply_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %15 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %16 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %76

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.rt5033_battery* @devm_kzalloc(i32* %23, i32 16, i32 %24)
  store %struct.rt5033_battery* %25, %struct.rt5033_battery** %8, align 8
  %26 = load %struct.rt5033_battery*, %struct.rt5033_battery** %8, align 8
  %27 = icmp ne %struct.rt5033_battery* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %76

31:                                               ; preds = %21
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.rt5033_battery*, %struct.rt5033_battery** %8, align 8
  %34 = getelementptr inbounds %struct.rt5033_battery, %struct.rt5033_battery* %33, i32 0, i32 2
  store %struct.i2c_client* %32, %struct.i2c_client** %34, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %35, i32* @rt5033_battery_regmap_config)
  %37 = load %struct.rt5033_battery*, %struct.rt5033_battery** %8, align 8
  %38 = getelementptr inbounds %struct.rt5033_battery, %struct.rt5033_battery* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rt5033_battery*, %struct.rt5033_battery** %8, align 8
  %40 = getelementptr inbounds %struct.rt5033_battery, %struct.rt5033_battery* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %76

50:                                               ; preds = %31
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load %struct.rt5033_battery*, %struct.rt5033_battery** %8, align 8
  %53 = call i32 @i2c_set_clientdata(%struct.i2c_client* %51, %struct.rt5033_battery* %52)
  %54 = load %struct.rt5033_battery*, %struct.rt5033_battery** %8, align 8
  %55 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 0
  store %struct.rt5033_battery* %54, %struct.rt5033_battery** %55, align 8
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = call i32 @power_supply_register(i32* %57, i32* @rt5033_battery_desc, %struct.power_supply_config* %7)
  %59 = load %struct.rt5033_battery*, %struct.rt5033_battery** %8, align 8
  %60 = getelementptr inbounds %struct.rt5033_battery, %struct.rt5033_battery* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.rt5033_battery*, %struct.rt5033_battery** %8, align 8
  %62 = getelementptr inbounds %struct.rt5033_battery, %struct.rt5033_battery* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @IS_ERR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %50
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.rt5033_battery*, %struct.rt5033_battery** %8, align 8
  %71 = getelementptr inbounds %struct.rt5033_battery, %struct.rt5033_battery* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @PTR_ERR(i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %76

75:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %66, %44, %28, %18
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #2

declare dso_local %struct.rt5033_battery* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt5033_battery*) #2

declare dso_local i32 @power_supply_register(i32*, i32*, %struct.power_supply_config*) #2

declare dso_local i32 @PTR_ERR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
