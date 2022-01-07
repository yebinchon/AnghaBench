; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_set_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_set_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smmu_pmu = type { i32, i32 }
%struct.hw_perf_event = type { i32, i32 }

@SMMU_PMCG_EVCNTR_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smmu_pmu*, %struct.hw_perf_event*)* @smmu_pmu_set_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smmu_pmu_set_period(%struct.smmu_pmu* %0, %struct.hw_perf_event* %1) #0 {
  %3 = alloca %struct.smmu_pmu*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smmu_pmu* %0, %struct.smmu_pmu** %3, align 8
  store %struct.hw_perf_event* %1, %struct.hw_perf_event** %4, align 8
  %7 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %8 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.smmu_pmu*, %struct.smmu_pmu** %3, align 8
  %11 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SMMU_PMCG_EVCNTR_RDONLY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.smmu_pmu*, %struct.smmu_pmu** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @smmu_pmu_counter_get_value(%struct.smmu_pmu* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.smmu_pmu*, %struct.smmu_pmu** %3, align 8
  %22 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = load %struct.smmu_pmu*, %struct.smmu_pmu** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @smmu_pmu_counter_set_value(%struct.smmu_pmu* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %20, %16
  %30 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %31 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @local64_set(i32* %31, i32 %32)
  ret void
}

declare dso_local i32 @smmu_pmu_counter_get_value(%struct.smmu_pmu*, i32) #1

declare dso_local i32 @smmu_pmu_counter_set_value(%struct.smmu_pmu*, i32, i32) #1

declare dso_local i32 @local64_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
