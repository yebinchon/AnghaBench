; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_set_event_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_set_event_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.smmu_pmu = type { i32 }

@SMMU_PMCG_SID_SPAN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32, i32, i32)* @smmu_pmu_set_event_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smmu_pmu_set_event_filter(%struct.perf_event* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.smmu_pmu*, align 8
  %10 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.smmu_pmu* @to_smmu_pmu(i32 %13)
  store %struct.smmu_pmu* %14, %struct.smmu_pmu** %9, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %16 = call i32 @get_event(%struct.perf_event* %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SMMU_PMCG_SID_SPAN_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.smmu_pmu*, %struct.smmu_pmu** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @smmu_pmu_set_evtyper(%struct.smmu_pmu* %21, i32 %22, i32 %23)
  %25 = load %struct.smmu_pmu*, %struct.smmu_pmu** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @smmu_pmu_set_smr(%struct.smmu_pmu* %25, i32 %26, i32 %27)
  ret void
}

declare dso_local %struct.smmu_pmu* @to_smmu_pmu(i32) #1

declare dso_local i32 @get_event(%struct.perf_event*) #1

declare dso_local i32 @smmu_pmu_set_evtyper(%struct.smmu_pmu*, i32, i32) #1

declare dso_local i32 @smmu_pmu_set_smr(%struct.smmu_pmu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
