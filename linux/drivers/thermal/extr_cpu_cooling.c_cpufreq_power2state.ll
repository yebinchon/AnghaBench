; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_cpufreq_power2state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_cpufreq_power2state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.cpufreq_cooling_device* }
%struct.cpufreq_cooling_device = type { i64, %struct.cpufreq_policy* }
%struct.cpufreq_policy = type { i32 }
%struct.thermal_zone_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, %struct.thermal_zone_device*, i32, i64*)* @cpufreq_power2state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_power2state(%struct.thermal_cooling_device* %0, %struct.thermal_zone_device* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.thermal_cooling_device*, align 8
  %6 = alloca %struct.thermal_zone_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cpufreq_cooling_device*, align 8
  %13 = alloca %struct.cpufreq_policy*, align 8
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %5, align 8
  store %struct.thermal_zone_device* %1, %struct.thermal_zone_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %14 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %15 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %14, i32 0, i32 0
  %16 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %15, align 8
  store %struct.cpufreq_cooling_device* %16, %struct.cpufreq_cooling_device** %12, align 8
  %17 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %12, align 8
  %18 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %17, i32 0, i32 1
  %19 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %18, align 8
  store %struct.cpufreq_policy* %19, %struct.cpufreq_policy** %13, align 8
  %20 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %12, align 8
  %21 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %26

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %24
  %27 = phi i64 [ %22, %24 ], [ 1, %25 ]
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 %29, 100
  %31 = load i32, i32* %10, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %12, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @cpu_power_to_freq(%struct.cpufreq_cooling_device* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %12, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @get_level(%struct.cpufreq_cooling_device* %36, i32 %37)
  %39 = load i64*, i64** %8, align 8
  store i64 %38, i64* %39, align 8
  %40 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %13, align 8
  %41 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @trace_thermal_power_cpu_limit(i32 %42, i32 %43, i64 %45, i32 %46)
  ret i32 0
}

declare dso_local i32 @cpu_power_to_freq(%struct.cpufreq_cooling_device*, i32) #1

declare dso_local i64 @get_level(%struct.cpufreq_cooling_device*, i32) #1

declare dso_local i32 @trace_thermal_power_cpu_limit(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
