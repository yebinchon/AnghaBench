; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32 }
%struct.dsu_pmu = type { %struct.dsu_hw_events }
%struct.dsu_hw_events = type { i32, i32** }

@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @dsu_pmu_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsu_pmu_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsu_pmu*, align 8
  %6 = alloca %struct.dsu_hw_events*, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.dsu_pmu* @to_dsu_pmu(i32 %11)
  store %struct.dsu_pmu* %12, %struct.dsu_pmu** %5, align 8
  %13 = load %struct.dsu_pmu*, %struct.dsu_pmu** %5, align 8
  %14 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %13, i32 0, i32 0
  store %struct.dsu_hw_events* %14, %struct.dsu_hw_events** %6, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  store %struct.hw_perf_event* %16, %struct.hw_perf_event** %7, align 8
  %17 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %18 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %21 = load i32, i32* @PERF_EF_UPDATE, align 4
  %22 = call i32 @dsu_pmu_stop(%struct.perf_event* %20, i32 %21)
  %23 = load %struct.dsu_hw_events*, %struct.dsu_hw_events** %6, align 8
  %24 = getelementptr inbounds %struct.dsu_hw_events, %struct.dsu_hw_events* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.dsu_hw_events*, %struct.dsu_hw_events** %6, align 8
  %31 = getelementptr inbounds %struct.dsu_hw_events, %struct.dsu_hw_events* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @clear_bit(i32 %29, i32 %32)
  %34 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %35 = call i32 @perf_event_update_userpage(%struct.perf_event* %34)
  ret void
}

declare dso_local %struct.dsu_pmu* @to_dsu_pmu(i32) #1

declare dso_local i32 @dsu_pmu_stop(%struct.perf_event*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
