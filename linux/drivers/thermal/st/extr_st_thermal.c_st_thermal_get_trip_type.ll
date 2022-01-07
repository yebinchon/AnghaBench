; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal.c_st_thermal_get_trip_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal.c_st_thermal_get_trip_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.st_thermal_sensor* }
%struct.st_thermal_sensor = type { %struct.device* }
%struct.device = type { i32 }

@THERMAL_TRIP_CRITICAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid trip point\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32*)* @st_thermal_get_trip_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_thermal_get_trip_type(%struct.thermal_zone_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.st_thermal_sensor*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %11 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 0
  %12 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %11, align 8
  store %struct.st_thermal_sensor* %12, %struct.st_thermal_sensor** %8, align 8
  %13 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %8, align 8
  %14 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %9, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %20 [
    i32 0, label %17
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @THERMAL_TRIP_CRITICAL, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %9, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %26

25:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
