; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_soc_dts_iosf.c_sys_get_curr_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_soc_dts_iosf.c_sys_get_curr_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.intel_soc_dts_sensor_entry* }
%struct.intel_soc_dts_sensor_entry = type { i32, i32, %struct.intel_soc_dts_sensors* }
%struct.intel_soc_dts_sensors = type { i32 }

@BT_MBI_UNIT_PMC = common dso_local global i32 0, align 4
@MBI_REG_READ = common dso_local global i32 0, align 4
@SOC_DTS_OFFSET_TEMP = common dso_local global i32 0, align 4
@SOC_DTS_TJMAX_ENCODING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32*)* @sys_get_curr_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sys_get_curr_temp(%struct.thermal_zone_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_soc_dts_sensor_entry*, align 8
  %9 = alloca %struct.intel_soc_dts_sensors*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %11 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 0
  %12 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %11, align 8
  store %struct.intel_soc_dts_sensor_entry* %12, %struct.intel_soc_dts_sensor_entry** %8, align 8
  %13 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %8, align 8
  %14 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %13, i32 0, i32 2
  %15 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %14, align 8
  store %struct.intel_soc_dts_sensors* %15, %struct.intel_soc_dts_sensors** %9, align 8
  %16 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %17 = load i32, i32* @MBI_REG_READ, align 4
  %18 = load i32, i32* @SOC_DTS_OFFSET_TEMP, align 4
  %19 = call i32 @iosf_mbi_read(i32 %16, i32 %17, i32 %18, i32* %7)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %46

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %8, align 8
  %27 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %25, %28
  %30 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %8, align 8
  %31 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %29, %32
  store i32 %33, i32* %7, align 4
  %34 = load i64, i64* @SOC_DTS_TJMAX_ENCODING, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %9, align 8
  %40 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 %42, 1000
  %44 = sub nsw i32 %41, %43
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %24, %22
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @iosf_mbi_read(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
