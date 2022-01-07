; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_of_thermal_set_trips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_of_thermal_set_trips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.__thermal_zone* }
%struct.__thermal_zone = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32)* @of_thermal_set_trips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_thermal_set_trips(%struct.thermal_zone_device* %0, i32 %1, i32 %2) #0 {
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
  %12 = load %struct.__thermal_zone*, %struct.__thermal_zone** %8, align 8
  %13 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.__thermal_zone*, %struct.__thermal_zone** %8, align 8
  %18 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %20, align 8
  %22 = icmp ne i32 (i32, i32, i32)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %38

26:                                               ; preds = %16
  %27 = load %struct.__thermal_zone*, %struct.__thermal_zone** %8, align 8
  %28 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %30, align 8
  %32 = load %struct.__thermal_zone*, %struct.__thermal_zone** %8, align 8
  %33 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 %31(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %26, %23
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
