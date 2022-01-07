; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2780_battery.c_ds2780_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2780_battery.c_ds2780_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.power_supply_config = type { i32, %struct.ds2780_device_info* }
%struct.ds2780_device_info = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@ds2780_battery_props = common dso_local global i32 0, align 4
@ds2780_battery_get_property = common dso_local global i32 0, align 4
@ds2780_sysfs_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to register battery\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ds2780_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2780_battery_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.power_supply_config, align 8
  %5 = alloca %struct.ds2780_device_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = bitcast %struct.power_supply_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ds2780_device_info* @devm_kzalloc(%struct.TYPE_6__* %8, i32 40, i32 %9)
  store %struct.ds2780_device_info* %10, %struct.ds2780_device_info** %5, align 8
  %11 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %12 = icmp ne %struct.ds2780_device_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %79

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.ds2780_device_info* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %23 = getelementptr inbounds %struct.ds2780_device_info, %struct.ds2780_device_info* %22, i32 0, i32 1
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %29 = getelementptr inbounds %struct.ds2780_device_info, %struct.ds2780_device_info* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_name(%struct.TYPE_6__* %31)
  %33 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %34 = getelementptr inbounds %struct.ds2780_device_info, %struct.ds2780_device_info* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %37 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %38 = getelementptr inbounds %struct.ds2780_device_info, %struct.ds2780_device_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @ds2780_battery_props, align 4
  %41 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %42 = getelementptr inbounds %struct.ds2780_device_info, %struct.ds2780_device_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @ds2780_battery_props, align 4
  %45 = call i32 @ARRAY_SIZE(i32 %44)
  %46 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %47 = getelementptr inbounds %struct.ds2780_device_info, %struct.ds2780_device_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @ds2780_battery_get_property, align 4
  %50 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %51 = getelementptr inbounds %struct.ds2780_device_info, %struct.ds2780_device_info* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %54 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 1
  store %struct.ds2780_device_info* %53, %struct.ds2780_device_info** %54, align 8
  %55 = load i32, i32* @ds2780_sysfs_groups, align 4
  %56 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %60 = getelementptr inbounds %struct.ds2780_device_info, %struct.ds2780_device_info* %59, i32 0, i32 2
  %61 = call i32 @devm_power_supply_register(%struct.TYPE_6__* %58, %struct.TYPE_7__* %60, %struct.power_supply_config* %4)
  %62 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %63 = getelementptr inbounds %struct.ds2780_device_info, %struct.ds2780_device_info* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %65 = getelementptr inbounds %struct.ds2780_device_info, %struct.ds2780_device_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @IS_ERR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %16
  %70 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %71 = getelementptr inbounds %struct.ds2780_device_info, %struct.ds2780_device_info* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = call i32 @dev_err(%struct.TYPE_6__* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %75 = getelementptr inbounds %struct.ds2780_device_info, %struct.ds2780_device_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @PTR_ERR(i32 %76)
  store i32 %77, i32* %2, align 4
  br label %79

78:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %69, %13
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ds2780_device_info* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ds2780_device_info*) #2

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @devm_power_supply_register(%struct.TYPE_6__*, %struct.TYPE_7__*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @PTR_ERR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
