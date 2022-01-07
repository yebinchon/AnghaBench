; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_of_thermal_set_trip_hyst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_of_thermal_set_trip_hyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.__thermal_zone* }
%struct.__thermal_zone = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32)* @of_thermal_set_trip_hyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_thermal_set_trip_hyst(%struct.thermal_zone_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.__thermal_zone*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %10 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 0
  %11 = load %struct.__thermal_zone*, %struct.__thermal_zone** %10, align 8
  store %struct.__thermal_zone* %11, %struct.__thermal_zone** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.__thermal_zone*, %struct.__thermal_zone** %8, align 8
  %14 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @EDOM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %32

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.__thermal_zone*, %struct.__thermal_zone** %8, align 8
  %26 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %24, i32* %31, align 4
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %23, %20
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
