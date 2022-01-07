; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_event_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32, i32 }
%struct.arm_pmu = type { i64 (%struct.perf_event*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @armpmu_event_update(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.arm_pmu*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.arm_pmu* @to_arm_pmu(i32 %11)
  store %struct.arm_pmu* %12, %struct.arm_pmu** %3, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 1
  store %struct.hw_perf_event* %14, %struct.hw_perf_event** %4, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %16 = call i64 @arm_pmu_event_max_period(%struct.perf_event* %15)
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %33, %1
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 1
  %20 = call i64 @local64_read(i32* %19)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %22 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %21, i32 0, i32 0
  %23 = load i64 (%struct.perf_event*)*, i64 (%struct.perf_event*)** %22, align 8
  %24 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %25 = call i64 %23(%struct.perf_event* %24)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %26, i32 0, i32 1
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @local64_cmpxchg(i32* %27, i64 %28, i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %17

34:                                               ; preds = %17
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub nsw i64 %35, %36
  %38 = load i64, i64* %8, align 8
  %39 = and i64 %37, %38
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 0
  %43 = call i32 @local64_add(i64 %40, i32* %42)
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %46 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %45, i32 0, i32 0
  %47 = call i32 @local64_sub(i64 %44, i32* %46)
  %48 = load i64, i64* %7, align 8
  ret i64 %48
}

declare dso_local %struct.arm_pmu* @to_arm_pmu(i32) #1

declare dso_local i64 @arm_pmu_event_max_period(%struct.perf_event*) #1

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @local64_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @local64_add(i64, i32*) #1

declare dso_local i32 @local64_sub(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
