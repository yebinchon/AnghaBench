; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_thermal_zone_of_sensor_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_thermal_zone_of_sensor_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.thermal_zone_device = type { i32, %struct.TYPE_2__*, %struct.__thermal_zone* }
%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.__thermal_zone = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thermal_zone_of_sensor_unregister(%struct.device* %0, %struct.thermal_zone_device* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.__thermal_zone*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.thermal_zone_device* %1, %struct.thermal_zone_device** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = icmp ne %struct.device* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %10 = icmp ne %struct.thermal_zone_device* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %13 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %12, i32 0, i32 2
  %14 = load %struct.__thermal_zone*, %struct.__thermal_zone** %13, align 8
  %15 = icmp ne %struct.__thermal_zone* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %8, %2
  br label %47

17:                                               ; preds = %11
  %18 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %19 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %18, i32 0, i32 2
  %20 = load %struct.__thermal_zone*, %struct.__thermal_zone** %19, align 8
  store %struct.__thermal_zone* %20, %struct.__thermal_zone** %5, align 8
  %21 = load %struct.__thermal_zone*, %struct.__thermal_zone** %5, align 8
  %22 = icmp ne %struct.__thermal_zone* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %47

24:                                               ; preds = %17
  %25 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %26 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %29 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %33 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %37 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.__thermal_zone*, %struct.__thermal_zone** %5, align 8
  %41 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.__thermal_zone*, %struct.__thermal_zone** %5, align 8
  %43 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %45 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  br label %47

47:                                               ; preds = %24, %23, %16
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
