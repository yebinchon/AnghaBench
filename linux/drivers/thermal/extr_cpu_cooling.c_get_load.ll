; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_get_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_get_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_cooling_device = type { %struct.time_in_idle* }
%struct.time_in_idle = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cpufreq_cooling_device*, i32, i32)* @get_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_load(%struct.cpufreq_cooling_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpufreq_cooling_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.time_in_idle*, align 8
  store %struct.cpufreq_cooling_device* %0, %struct.cpufreq_cooling_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %4, align 8
  %14 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %13, i32 0, i32 0
  %15 = load %struct.time_in_idle*, %struct.time_in_idle** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.time_in_idle, %struct.time_in_idle* %15, i64 %17
  store %struct.time_in_idle* %18, %struct.time_in_idle** %12, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @get_cpu_idle_time(i32 %19, i64* %8, i32 0)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.time_in_idle*, %struct.time_in_idle** %12, align 8
  %23 = getelementptr inbounds %struct.time_in_idle, %struct.time_in_idle* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.time_in_idle*, %struct.time_in_idle** %12, align 8
  %28 = getelementptr inbounds %struct.time_in_idle, %struct.time_in_idle* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %43

35:                                               ; preds = %3
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = sub nsw i64 %36, %37
  %39 = mul nsw i64 100, %38
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @div64_u64(i32 %40, i64 %41)
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %35, %34
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.time_in_idle*, %struct.time_in_idle** %12, align 8
  %46 = getelementptr inbounds %struct.time_in_idle, %struct.time_in_idle* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.time_in_idle*, %struct.time_in_idle** %12, align 8
  %49 = getelementptr inbounds %struct.time_in_idle, %struct.time_in_idle* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %7, align 8
  ret i64 %50
}

declare dso_local i64 @get_cpu_idle_time(i32, i64*, i32) #1

declare dso_local i64 @div64_u64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
