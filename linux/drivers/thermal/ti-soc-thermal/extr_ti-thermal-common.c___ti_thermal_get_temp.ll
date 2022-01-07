; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-thermal-common.c___ti_thermal_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-thermal-common.c___ti_thermal_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32 }
%struct.ti_thermal_data = type { i64, %struct.thermal_zone_device*, i32, %struct.ti_bandgap* }
%struct.ti_bandgap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ti_temp_sensor* }
%struct.ti_temp_sensor = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Failed to read PCB state. Using defaults\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @__ti_thermal_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ti_thermal_get_temp(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.thermal_zone_device*, align 8
  %7 = alloca %struct.ti_thermal_data*, align 8
  %8 = alloca %struct.ti_bandgap*, align 8
  %9 = alloca %struct.ti_temp_sensor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.thermal_zone_device* null, %struct.thermal_zone_device** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.ti_thermal_data*
  store %struct.ti_thermal_data* %16, %struct.ti_thermal_data** %7, align 8
  %17 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %7, align 8
  %18 = icmp ne %struct.ti_thermal_data* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

20:                                               ; preds = %2
  %21 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %7, align 8
  %22 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %21, i32 0, i32 3
  %23 = load %struct.ti_bandgap*, %struct.ti_bandgap** %22, align 8
  store %struct.ti_bandgap* %23, %struct.ti_bandgap** %8, align 8
  %24 = load %struct.ti_bandgap*, %struct.ti_bandgap** %8, align 8
  %25 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.ti_temp_sensor*, %struct.ti_temp_sensor** %27, align 8
  %29 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %7, align 8
  %30 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.ti_temp_sensor, %struct.ti_temp_sensor* %28, i64 %31
  store %struct.ti_temp_sensor* %32, %struct.ti_temp_sensor** %9, align 8
  %33 = load %struct.ti_bandgap*, %struct.ti_bandgap** %8, align 8
  %34 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %7, align 8
  %35 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ti_bandgap_read_temperature(%struct.ti_bandgap* %33, i64 %36, i32* %11)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %20
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %85

42:                                               ; preds = %20
  %43 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %7, align 8
  %44 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @thermal_zone_get_slope(i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %7, align 8
  %48 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @thermal_zone_get_offset(i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %7, align 8
  %52 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %51, i32 0, i32 1
  %53 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %52, align 8
  store %struct.thermal_zone_device* %53, %struct.thermal_zone_device** %6, align 8
  %54 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %55 = call i32 @IS_ERR(%struct.thermal_zone_device* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %42
  %58 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %59 = call i32 @thermal_zone_get_temp(%struct.thermal_zone_device* %58, i32* %14)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load %struct.ti_temp_sensor*, %struct.ti_temp_sensor** %9, align 8
  %67 = getelementptr inbounds %struct.ti_temp_sensor, %struct.ti_temp_sensor* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %12, align 4
  %69 = load %struct.ti_temp_sensor*, %struct.ti_temp_sensor** %9, align 8
  %70 = getelementptr inbounds %struct.ti_temp_sensor, %struct.ti_temp_sensor* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %13, align 4
  br label %77

72:                                               ; preds = %57
  %73 = load %struct.ti_bandgap*, %struct.ti_bandgap** %8, align 8
  %74 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %72, %62
  br label %78

78:                                               ; preds = %77, %42
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @ti_thermal_hotspot_temperature(i32 %79, i32 %80, i32 %81)
  %83 = load i32*, i32** %5, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %78, %40, %19
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @ti_bandgap_read_temperature(%struct.ti_bandgap*, i64, i32*) #1

declare dso_local i32 @thermal_zone_get_slope(i32) #1

declare dso_local i32 @thermal_zone_get_offset(i32) #1

declare dso_local i32 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @thermal_zone_get_temp(%struct.thermal_zone_device*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ti_thermal_hotspot_temperature(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
