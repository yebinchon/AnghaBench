; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_cpufreq_state2power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_cpufreq_state2power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.cpufreq_cooling_device* }
%struct.cpufreq_cooling_device = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.thermal_zone_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, %struct.thermal_zone_device*, i64, i32*)* @cpufreq_state2power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_state2power(%struct.thermal_cooling_device* %0, %struct.thermal_zone_device* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thermal_cooling_device*, align 8
  %7 = alloca %struct.thermal_zone_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cpufreq_cooling_device*, align 8
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %6, align 8
  store %struct.thermal_zone_device* %1, %struct.thermal_zone_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %6, align 8
  %14 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %13, i32 0, i32 0
  %15 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %14, align 8
  store %struct.cpufreq_cooling_device* %15, %struct.cpufreq_cooling_device** %12, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %12, align 8
  %18 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %47

27:                                               ; preds = %4
  %28 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %12, align 8
  %29 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cpumask_weight(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %12, align 8
  %35 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %12, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @cpu_freq_to_power(%struct.cpufreq_cooling_device* %41, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = mul i32 %43, %44
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %27, %24
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cpumask_weight(i32) #1

declare dso_local i32 @cpu_freq_to_power(%struct.cpufreq_cooling_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
