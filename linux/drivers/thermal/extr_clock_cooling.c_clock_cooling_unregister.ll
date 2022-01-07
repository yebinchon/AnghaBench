; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_clock_cooling.c_clock_cooling_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_clock_cooling.c_clock_cooling_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.clock_cooling_device* }
%struct.clock_cooling_device = type { i32, i32, i32, i32, i32, i32 }

@clock_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clock_cooling_unregister(%struct.thermal_cooling_device* %0) #0 {
  %2 = alloca %struct.thermal_cooling_device*, align 8
  %3 = alloca %struct.clock_cooling_device*, align 8
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %2, align 8
  %4 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %2, align 8
  %5 = icmp ne %struct.thermal_cooling_device* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %31

7:                                                ; preds = %1
  %8 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %2, align 8
  %9 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %8, i32 0, i32 0
  %10 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %9, align 8
  store %struct.clock_cooling_device* %10, %struct.clock_cooling_device** %3, align 8
  %11 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %3, align 8
  %12 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %3, align 8
  %15 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %14, i32 0, i32 4
  %16 = call i32 @clk_notifier_unregister(i32 %13, i32* %15)
  %17 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %3, align 8
  %18 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %3, align 8
  %21 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %20, i32 0, i32 2
  %22 = call i32 @dev_pm_opp_free_cpufreq_table(i32 %19, i32* %21)
  %23 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %3, align 8
  %24 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @thermal_cooling_device_unregister(i32 %25)
  %27 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %3, align 8
  %28 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ida_simple_remove(i32* @clock_ida, i32 %29)
  br label %31

31:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @clk_notifier_unregister(i32, i32*) #1

declare dso_local i32 @dev_pm_opp_free_cpufreq_table(i32, i32*) #1

declare dso_local i32 @thermal_cooling_device_unregister(i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
