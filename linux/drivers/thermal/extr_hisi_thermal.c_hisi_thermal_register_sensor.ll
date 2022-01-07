; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hisi_thermal_register_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hisi_thermal_register_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hisi_thermal_sensor = type { i32, i32*, i32 }
%struct.thermal_trip = type { i64, i32 }

@hisi_of_thermal_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to register sensor id %d: %d\0A\00", align 1
@THERMAL_TRIP_PASSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.hisi_thermal_sensor*)* @hisi_thermal_register_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_thermal_register_sensor(%struct.platform_device* %0, %struct.hisi_thermal_sensor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.hisi_thermal_sensor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thermal_trip*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.hisi_thermal_sensor* %1, %struct.hisi_thermal_sensor** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %12 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %15 = call i32* @devm_thermal_zone_of_sensor_register(i32* %10, i32 %13, %struct.hisi_thermal_sensor* %14, i32* @hisi_of_thermal_ops)
  %16 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %17 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %19 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @IS_ERR(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %2
  %24 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %25 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @PTR_ERR(i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %29 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %33 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %73

38:                                               ; preds = %2
  %39 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %40 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call %struct.thermal_trip* @of_thermal_get_trip_points(i32* %41)
  store %struct.thermal_trip* %42, %struct.thermal_trip** %8, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %69, %38
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %46 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @of_thermal_get_ntrips(i32* %47)
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %43
  %51 = load %struct.thermal_trip*, %struct.thermal_trip** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %51, i64 %53
  %55 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @THERMAL_TRIP_PASSIVE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load %struct.thermal_trip*, %struct.thermal_trip** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %60, i64 %62
  %64 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %67 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %72

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %43

72:                                               ; preds = %59, %43
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %23
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32* @devm_thermal_zone_of_sensor_register(i32*, i32, %struct.hisi_thermal_sensor*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local %struct.thermal_trip* @of_thermal_get_trip_points(i32*) #1

declare dso_local i32 @of_thermal_get_ntrips(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
