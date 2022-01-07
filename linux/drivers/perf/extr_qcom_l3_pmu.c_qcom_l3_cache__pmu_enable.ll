; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__pmu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__pmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.l3cache_pmu = type { i64 }

@BC_ENABLE = common dso_local global i32 0, align 4
@L3_M_BC_CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @qcom_l3_cache__pmu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_l3_cache__pmu_enable(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.l3cache_pmu*, align 8
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %4 = load %struct.pmu*, %struct.pmu** %2, align 8
  %5 = call %struct.l3cache_pmu* @to_l3cache_pmu(%struct.pmu* %4)
  store %struct.l3cache_pmu* %5, %struct.l3cache_pmu** %3, align 8
  %6 = call i32 (...) @wmb()
  %7 = load i32, i32* @BC_ENABLE, align 4
  %8 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %9 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @L3_M_BC_CR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel_relaxed(i32 %7, i64 %12)
  ret void
}

declare dso_local %struct.l3cache_pmu* @to_l3cache_pmu(%struct.pmu*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
