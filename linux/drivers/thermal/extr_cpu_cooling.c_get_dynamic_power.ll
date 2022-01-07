; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_get_dynamic_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_get_dynamic_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_cooling_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_cooling_device*, i64)* @get_dynamic_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dynamic_power(%struct.cpufreq_cooling_device* %0, i64 %1) #0 {
  %3 = alloca %struct.cpufreq_cooling_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.cpufreq_cooling_device* %0, %struct.cpufreq_cooling_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @cpu_freq_to_power(%struct.cpufreq_cooling_device* %6, i64 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %3, align 8
  %11 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = sdiv i32 %13, 100
  ret i32 %14
}

declare dso_local i32 @cpu_freq_to_power(%struct.cpufreq_cooling_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
