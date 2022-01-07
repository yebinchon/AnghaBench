; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_thermal.c_rcar_thermal_get_trip_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_thermal.c_rcar_thermal_get_trip_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32 }
%struct.rcar_thermal_priv = type { i32 }
%struct.device = type { i32 }

@THERMAL_TRIP_CRITICAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"rcar driver trip error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32*)* @rcar_thermal_get_trip_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_thermal_get_trip_type(%struct.thermal_zone_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rcar_thermal_priv*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %11 = call %struct.rcar_thermal_priv* @rcar_zone_to_priv(%struct.thermal_zone_device* %10)
  store %struct.rcar_thermal_priv* %11, %struct.rcar_thermal_priv** %8, align 8
  %12 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %8, align 8
  %13 = call %struct.device* @rcar_priv_to_dev(%struct.rcar_thermal_priv* %12)
  store %struct.device* %13, %struct.device** %9, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %18 [
    i32 0, label %15
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @THERMAL_TRIP_CRITICAL, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %9, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %24

23:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %struct.rcar_thermal_priv* @rcar_zone_to_priv(%struct.thermal_zone_device*) #1

declare dso_local %struct.device* @rcar_priv_to_dev(%struct.rcar_thermal_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
