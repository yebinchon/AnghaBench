; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_of_thermal_is_trip_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_of_thermal_is_trip_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.__thermal_zone* }
%struct.__thermal_zone = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_thermal_is_trip_valid(%struct.thermal_zone_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.__thermal_zone*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %8 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %7, i32 0, i32 0
  %9 = load %struct.__thermal_zone*, %struct.__thermal_zone** %8, align 8
  store %struct.__thermal_zone* %9, %struct.__thermal_zone** %6, align 8
  %10 = load %struct.__thermal_zone*, %struct.__thermal_zone** %6, align 8
  %11 = icmp ne %struct.__thermal_zone* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.__thermal_zone*, %struct.__thermal_zone** %6, align 8
  %15 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %12, %2
  store i32 0, i32* %3, align 4
  br label %23

22:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
