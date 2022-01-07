; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_cpufreq_cooling_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_cpufreq_cooling_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { i32 }
%struct.cpufreq_policy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thermal_cooling_device* @cpufreq_cooling_register(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %3 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %4 = call %struct.thermal_cooling_device* @__cpufreq_cooling_register(i32* null, %struct.cpufreq_policy* %3, i32 0)
  ret %struct.thermal_cooling_device* %4
}

declare dso_local %struct.thermal_cooling_device* @__cpufreq_cooling_register(i32*, %struct.cpufreq_policy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
