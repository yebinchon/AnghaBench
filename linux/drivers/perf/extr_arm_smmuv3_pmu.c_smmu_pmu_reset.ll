; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smmu_pmu = type { i64, i64, i32, i64 }

@SMMU_PMCG_CNTENCLR0 = common dso_local global i64 0, align 8
@SMMU_PMCG_INTENCLR0 = common dso_local global i64 0, align 8
@SMMU_PMCG_OVSCLR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smmu_pmu*)* @smmu_pmu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smmu_pmu_reset(%struct.smmu_pmu* %0) #0 {
  %2 = alloca %struct.smmu_pmu*, align 8
  %3 = alloca i32, align 4
  store %struct.smmu_pmu* %0, %struct.smmu_pmu** %2, align 8
  %4 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %5 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = sub nsw i64 %6, 1
  %8 = call i32 @GENMASK_ULL(i64 %7, i32 0)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %10 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %9, i32 0, i32 2
  %11 = call i32 @smmu_pmu_disable(i32* %10)
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %14 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SMMU_PMCG_CNTENCLR0, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writeq_relaxed(i32 %12, i64 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %21 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SMMU_PMCG_INTENCLR0, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writeq_relaxed(i32 %19, i64 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %28 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SMMU_PMCG_OVSCLR0, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writeq_relaxed(i32 %26, i64 %31)
  ret void
}

declare dso_local i32 @GENMASK_ULL(i64, i32) #1

declare dso_local i32 @smmu_pmu_disable(i32*) #1

declare dso_local i32 @writeq_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
