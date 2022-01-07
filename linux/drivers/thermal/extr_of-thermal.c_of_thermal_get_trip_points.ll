; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_of_thermal_get_trip_points.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_of_thermal_get_trip_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_trip = type { i32 }
%struct.thermal_zone_device = type { %struct.__thermal_zone* }
%struct.__thermal_zone = type { %struct.thermal_trip* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thermal_trip* @of_thermal_get_trip_points(%struct.thermal_zone_device* %0) #0 {
  %2 = alloca %struct.thermal_trip*, align 8
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca %struct.__thermal_zone*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %6 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 0
  %7 = load %struct.__thermal_zone*, %struct.__thermal_zone** %6, align 8
  store %struct.__thermal_zone* %7, %struct.__thermal_zone** %4, align 8
  %8 = load %struct.__thermal_zone*, %struct.__thermal_zone** %4, align 8
  %9 = icmp ne %struct.__thermal_zone* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.thermal_trip* null, %struct.thermal_trip** %2, align 8
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.__thermal_zone*, %struct.__thermal_zone** %4, align 8
  %13 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %12, i32 0, i32 0
  %14 = load %struct.thermal_trip*, %struct.thermal_trip** %13, align 8
  store %struct.thermal_trip* %14, %struct.thermal_trip** %2, align 8
  br label %15

15:                                               ; preds = %11, %10
  %16 = load %struct.thermal_trip*, %struct.thermal_trip** %2, align 8
  ret %struct.thermal_trip* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
