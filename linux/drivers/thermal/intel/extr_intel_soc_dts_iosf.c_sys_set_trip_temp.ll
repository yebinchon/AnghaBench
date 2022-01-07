; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_soc_dts_iosf.c_sys_set_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_soc_dts_iosf.c_sys_set_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.intel_soc_dts_sensor_entry* }
%struct.intel_soc_dts_sensor_entry = type { i32*, %struct.intel_soc_dts_sensors* }
%struct.intel_soc_dts_sensors = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32)* @sys_set_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sys_set_trip_temp(%struct.thermal_zone_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_soc_dts_sensor_entry*, align 8
  %9 = alloca %struct.intel_soc_dts_sensors*, align 8
  %10 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %12 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %11, i32 0, i32 0
  %13 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %12, align 8
  store %struct.intel_soc_dts_sensor_entry* %13, %struct.intel_soc_dts_sensor_entry** %8, align 8
  %14 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %8, align 8
  %15 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %14, i32 0, i32 1
  %16 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %15, align 8
  store %struct.intel_soc_dts_sensors* %16, %struct.intel_soc_dts_sensors** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %9, align 8
  %19 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %46

25:                                               ; preds = %3
  %26 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %9, align 8
  %27 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %30 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %29, i32 0, i32 0
  %31 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %8, align 8
  %35 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @update_trip_temp(%struct.intel_soc_dts_sensor_entry* %31, i32 %32, i32 %33, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %9, align 8
  %43 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %25, %22
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @update_trip_temp(%struct.intel_soc_dts_sensor_entry*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
