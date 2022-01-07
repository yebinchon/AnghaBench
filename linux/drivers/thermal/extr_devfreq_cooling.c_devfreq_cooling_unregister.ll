; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_devfreq_cooling_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_devfreq_cooling_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.devfreq_cooling_device* }
%struct.devfreq_cooling_device = type { %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device*, i32, i32 }

@devfreq_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devfreq_cooling_unregister(%struct.thermal_cooling_device* %0) #0 {
  %2 = alloca %struct.thermal_cooling_device*, align 8
  %3 = alloca %struct.devfreq_cooling_device*, align 8
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %2, align 8
  %4 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %2, align 8
  %5 = icmp ne %struct.thermal_cooling_device* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %29

7:                                                ; preds = %1
  %8 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %2, align 8
  %9 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %8, i32 0, i32 0
  %10 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  store %struct.devfreq_cooling_device* %10, %struct.devfreq_cooling_device** %3, align 8
  %11 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %3, align 8
  %12 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @thermal_cooling_device_unregister(i32 %13)
  %15 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %3, align 8
  %16 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ida_simple_remove(i32* @devfreq_ida, i32 %17)
  %19 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %3, align 8
  %20 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %19, i32 0, i32 1
  %21 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %20, align 8
  %22 = call i32 @kfree(%struct.devfreq_cooling_device* %21)
  %23 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %3, align 8
  %24 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %23, i32 0, i32 0
  %25 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %24, align 8
  %26 = call i32 @kfree(%struct.devfreq_cooling_device* %25)
  %27 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %3, align 8
  %28 = call i32 @kfree(%struct.devfreq_cooling_device* %27)
  br label %29

29:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @thermal_cooling_device_unregister(i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.devfreq_cooling_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
