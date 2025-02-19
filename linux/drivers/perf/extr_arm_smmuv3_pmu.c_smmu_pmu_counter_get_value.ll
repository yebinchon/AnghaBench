; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_counter_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_counter_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smmu_pmu = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smmu_pmu*, i32)* @smmu_pmu_counter_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smmu_pmu_counter_get_value(%struct.smmu_pmu* %0, i32 %1) #0 {
  %3 = alloca %struct.smmu_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.smmu_pmu* %0, %struct.smmu_pmu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.smmu_pmu*, %struct.smmu_pmu** %3, align 8
  %7 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @BIT(i32 32)
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.smmu_pmu*, %struct.smmu_pmu** %3, align 8
  %14 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @SMMU_PMCG_EVCNTR(i32 %16, i32 8)
  %18 = add nsw i64 %15, %17
  %19 = call i32 @readq(i64 %18)
  store i32 %19, i32* %5, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.smmu_pmu*, %struct.smmu_pmu** %3, align 8
  %22 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @SMMU_PMCG_EVCNTR(i32 %24, i32 4)
  %26 = add nsw i64 %23, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %20, %12
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @SMMU_PMCG_EVCNTR(i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
