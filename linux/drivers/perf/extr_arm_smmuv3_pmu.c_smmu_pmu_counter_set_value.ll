; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_counter_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_counter_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smmu_pmu = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smmu_pmu*, i32, i32)* @smmu_pmu_counter_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smmu_pmu_counter_set_value(%struct.smmu_pmu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smmu_pmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smmu_pmu* %0, %struct.smmu_pmu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.smmu_pmu*, %struct.smmu_pmu** %4, align 8
  %8 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @BIT(i32 32)
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.smmu_pmu*, %struct.smmu_pmu** %4, align 8
  %16 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @SMMU_PMCG_EVCNTR(i32 %18, i32 8)
  %20 = add nsw i64 %17, %19
  %21 = call i32 @writeq(i32 %14, i64 %20)
  br label %31

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.smmu_pmu*, %struct.smmu_pmu** %4, align 8
  %25 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @SMMU_PMCG_EVCNTR(i32 %27, i32 4)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @writel(i32 %23, i64 %29)
  br label %31

31:                                               ; preds = %22, %13
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @SMMU_PMCG_EVCNTR(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
