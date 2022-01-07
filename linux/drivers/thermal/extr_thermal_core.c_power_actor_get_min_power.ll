; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c_power_actor_get_min_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c_power_actor_get_min_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, %struct.thermal_zone_device*, i64, i32*)* }
%struct.thermal_zone_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_actor_get_min_power(%struct.thermal_cooling_device* %0, %struct.thermal_zone_device* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_cooling_device*, align 8
  %6 = alloca %struct.thermal_zone_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %5, align 8
  store %struct.thermal_zone_device* %1, %struct.thermal_zone_device** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %11 = call i32 @cdev_is_power_actor(%struct.thermal_cooling_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %39

16:                                               ; preds = %3
  %17 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %18 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)** %20, align 8
  %22 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %23 = call i32 %21(%struct.thermal_cooling_device* %22, i64* %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %39

28:                                               ; preds = %16
  %29 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %30 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32 (%struct.thermal_cooling_device*, %struct.thermal_zone_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, %struct.thermal_zone_device*, i64, i32*)** %32, align 8
  %34 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %35 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 %33(%struct.thermal_cooling_device* %34, %struct.thermal_zone_device* %35, i64 %36, i32* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %28, %26, %13
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @cdev_is_power_actor(%struct.thermal_cooling_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
