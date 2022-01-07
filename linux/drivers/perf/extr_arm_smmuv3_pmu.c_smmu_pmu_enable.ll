; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.smmu_pmu = type { i64 }

@SMMU_PMCG_IRQ_CTRL_IRQEN = common dso_local global i32 0, align 4
@SMMU_PMCG_IRQ_CTRL = common dso_local global i64 0, align 8
@SMMU_PMCG_CR_ENABLE = common dso_local global i32 0, align 4
@SMMU_PMCG_CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @smmu_pmu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smmu_pmu_enable(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.smmu_pmu*, align 8
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %4 = load %struct.pmu*, %struct.pmu** %2, align 8
  %5 = call %struct.smmu_pmu* @to_smmu_pmu(%struct.pmu* %4)
  store %struct.smmu_pmu* %5, %struct.smmu_pmu** %3, align 8
  %6 = load i32, i32* @SMMU_PMCG_IRQ_CTRL_IRQEN, align 4
  %7 = load %struct.smmu_pmu*, %struct.smmu_pmu** %3, align 8
  %8 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SMMU_PMCG_IRQ_CTRL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %6, i64 %11)
  %13 = load i32, i32* @SMMU_PMCG_CR_ENABLE, align 4
  %14 = load %struct.smmu_pmu*, %struct.smmu_pmu** %3, align 8
  %15 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SMMU_PMCG_CR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  ret void
}

declare dso_local %struct.smmu_pmu* @to_smmu_pmu(%struct.pmu*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
