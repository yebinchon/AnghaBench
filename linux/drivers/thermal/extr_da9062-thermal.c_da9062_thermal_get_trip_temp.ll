; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_da9062-thermal.c_da9062_thermal_get_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_da9062-thermal.c_da9062_thermal_get_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.da9062_thermal* }
%struct.da9062_thermal = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Driver does not support more than 1 trip-wire\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32*)* @da9062_thermal_get_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9062_thermal_get_trip_temp(%struct.thermal_zone_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.da9062_thermal*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %10 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 0
  %11 = load %struct.da9062_thermal*, %struct.da9062_thermal** %10, align 8
  store %struct.da9062_thermal* %11, %struct.da9062_thermal** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %16 [
    i32 0, label %13
  ]

13:                                               ; preds = %3
  %14 = call i32 @DA9062_MILLI_CELSIUS(i32 125)
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load %struct.da9062_thermal*, %struct.da9062_thermal** %8, align 8
  %18 = getelementptr inbounds %struct.da9062_thermal, %struct.da9062_thermal* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %24

23:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @DA9062_MILLI_CELSIUS(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
