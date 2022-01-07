; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_cpufreq_cooling_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_cpufreq_cooling_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.cpufreq_cooling_device* }
%struct.cpufreq_cooling_device = type { %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device*, i32, i32, i32 }

@cooling_list_lock = common dso_local global i32 0, align 4
@cpufreq_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpufreq_cooling_unregister(%struct.thermal_cooling_device* %0) #0 {
  %2 = alloca %struct.thermal_cooling_device*, align 8
  %3 = alloca %struct.cpufreq_cooling_device*, align 8
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %2, align 8
  %4 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %2, align 8
  %5 = icmp ne %struct.thermal_cooling_device* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %35

7:                                                ; preds = %1
  %8 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %2, align 8
  %9 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %8, i32 0, i32 0
  %10 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %9, align 8
  store %struct.cpufreq_cooling_device* %10, %struct.cpufreq_cooling_device** %3, align 8
  %11 = call i32 @mutex_lock(i32* @cooling_list_lock)
  %12 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %3, align 8
  %13 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %12, i32 0, i32 4
  %14 = call i32 @list_del(i32* %13)
  %15 = call i32 @mutex_unlock(i32* @cooling_list_lock)
  %16 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %2, align 8
  %17 = call i32 @thermal_cooling_device_unregister(%struct.thermal_cooling_device* %16)
  %18 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %3, align 8
  %19 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %18, i32 0, i32 3
  %20 = call i32 @freq_qos_remove_request(i32* %19)
  %21 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %3, align 8
  %22 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ida_simple_remove(i32* @cpufreq_ida, i32 %23)
  %25 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %3, align 8
  %26 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %25, i32 0, i32 1
  %27 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %26, align 8
  %28 = call i32 @kfree(%struct.cpufreq_cooling_device* %27)
  %29 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %3, align 8
  %30 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %29, i32 0, i32 0
  %31 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %30, align 8
  %32 = call i32 @kfree(%struct.cpufreq_cooling_device* %31)
  %33 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %3, align 8
  %34 = call i32 @kfree(%struct.cpufreq_cooling_device* %33)
  br label %35

35:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @thermal_cooling_device_unregister(%struct.thermal_cooling_device*) #1

declare dso_local i32 @freq_qos_remove_request(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.cpufreq_cooling_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
