; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_cpufreq_set_cur_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_cpufreq_set_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.cpufreq_cooling_device* }
%struct.cpufreq_cooling_device = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64)* @cpufreq_set_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_set_cur_state(%struct.thermal_cooling_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cpufreq_cooling_device*, align 8
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %8 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %7, i32 0, i32 0
  %9 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %8, align 8
  store %struct.cpufreq_cooling_device* %9, %struct.cpufreq_cooling_device** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %6, align 8
  %12 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ugt i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %2
  %22 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %6, align 8
  %23 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %42

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %6, align 8
  %31 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %6, align 8
  %33 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %32, i32 0, i32 3
  %34 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %6, align 8
  %35 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @freq_qos_update_request(i32* %33, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %28, %27, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @freq_qos_update_request(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
