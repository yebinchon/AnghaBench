; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_event_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }
%struct.smmu_pmu = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @smmu_pmu_event_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smmu_pmu_event_update(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.hw_perf_event*, align 8
  %4 = alloca %struct.smmu_pmu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 2
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %3, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.smmu_pmu* @to_smmu_pmu(i32 %13)
  store %struct.smmu_pmu* %14, %struct.smmu_pmu** %4, align 8
  %15 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %25, %1
  %19 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %20 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %19, i32 0, i32 0
  %21 = call i64 @local64_read(i32* %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.smmu_pmu*, %struct.smmu_pmu** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @smmu_pmu_counter_get_value(%struct.smmu_pmu* %22, i32 %23)
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %18
  %26 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @local64_cmpxchg(i32* %27, i64 %28, i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %18, label %33

33:                                               ; preds = %25
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* %5, align 8
  %37 = load %struct.smmu_pmu*, %struct.smmu_pmu** %4, align 8
  %38 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 0
  %45 = call i32 @local64_add(i64 %42, i32* %44)
  ret void
}

declare dso_local %struct.smmu_pmu* @to_smmu_pmu(i32) #1

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @smmu_pmu_counter_get_value(%struct.smmu_pmu*, i32) #1

declare dso_local i64 @local64_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @local64_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
