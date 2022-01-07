; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_pmu.c_hisi_uncore_pmu_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_pmu.c_hisi_uncore_pmu_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i64 }
%struct.hisi_pmu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32** }

@PERF_EF_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_uncore_pmu_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_pmu*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.hisi_pmu* @to_hisi_pmu(i32 %9)
  store %struct.hisi_pmu* %10, %struct.hisi_pmu** %5, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  store %struct.hw_perf_event* %12, %struct.hw_perf_event** %6, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = load i32, i32* @PERF_EF_UPDATE, align 4
  %15 = call i32 @hisi_uncore_pmu_stop(%struct.perf_event* %13, i32 %14)
  %16 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %17 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %18 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @hisi_uncore_pmu_clear_event_idx(%struct.hisi_pmu* %16, i64 %19)
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = call i32 @perf_event_update_userpage(%struct.perf_event* %21)
  %23 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %24 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %28 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32*, i32** %26, i64 %29
  store i32* null, i32** %30, align 8
  ret void
}

declare dso_local %struct.hisi_pmu* @to_hisi_pmu(i32) #1

declare dso_local i32 @hisi_uncore_pmu_stop(%struct.perf_event*, i32) #1

declare dso_local i32 @hisi_uncore_pmu_clear_event_idx(%struct.hisi_pmu*, i64) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
