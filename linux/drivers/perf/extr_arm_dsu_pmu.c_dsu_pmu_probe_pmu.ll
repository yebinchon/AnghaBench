; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_probe_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_probe_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsu_pmu = type { i32, i32 }

@CLUSTERPMCR_N_SHIFT = common dso_local global i32 0, align 4
@CLUSTERPMCR_N_MASK = common dso_local global i32 0, align 4
@DSU_PMU_MAX_COMMON_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsu_pmu*)* @dsu_pmu_probe_pmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsu_pmu_probe_pmu(%struct.dsu_pmu* %0) #0 {
  %2 = alloca %struct.dsu_pmu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  store %struct.dsu_pmu* %0, %struct.dsu_pmu** %2, align 8
  %5 = call i32 (...) @__dsu_pmu_read_pmcr()
  %6 = load i32, i32* @CLUSTERPMCR_N_SHIFT, align 4
  %7 = ashr i32 %5, %6
  %8 = load i32, i32* @CLUSTERPMCR_N_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 31
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 31, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.dsu_pmu*, %struct.dsu_pmu** %2, align 8
  %19 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.dsu_pmu*, %struct.dsu_pmu** %2, align 8
  %21 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %36

25:                                               ; preds = %16
  %26 = call i32 @__dsu_pmu_read_pmceid(i32 0)
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = call i32 @__dsu_pmu_read_pmceid(i32 1)
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.dsu_pmu*, %struct.dsu_pmu** %2, align 8
  %31 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %34 = load i32, i32* @DSU_PMU_MAX_COMMON_EVENTS, align 4
  %35 = call i32 @bitmap_from_arr32(i32 %32, i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @__dsu_pmu_read_pmcr(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__dsu_pmu_read_pmceid(i32) #1

declare dso_local i32 @bitmap_from_arr32(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
