; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__event_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__event_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i64 }
%struct.l3cache_pmu = type { i32, i32** }

@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @qcom_l3_cache__event_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_l3_cache__event_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.l3cache_pmu*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.l3cache_pmu* @to_l3cache_pmu(i32 %10)
  store %struct.l3cache_pmu* %11, %struct.l3cache_pmu** %5, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  store %struct.hw_perf_event* %13, %struct.hw_perf_event** %6, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = call i64 @event_uses_long_counter(%struct.perf_event* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %7, align 4
  %19 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PERF_EF_UPDATE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @qcom_l3_cache__event_stop(%struct.perf_event* %19, i32 %22)
  %24 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %5, align 8
  %25 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %28 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32*, i32** %26, i64 %29
  store i32* null, i32** %30, align 8
  %31 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %5, align 8
  %32 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %35 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @bitmap_release_region(i32 %33, i64 %36, i32 %37)
  %39 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %40 = call i32 @perf_event_update_userpage(%struct.perf_event* %39)
  ret void
}

declare dso_local %struct.l3cache_pmu* @to_l3cache_pmu(i32) #1

declare dso_local i64 @event_uses_long_counter(%struct.perf_event*) #1

declare dso_local i32 @qcom_l3_cache__event_stop(%struct.perf_event*, i32) #1

declare dso_local i32 @bitmap_release_region(i32, i64, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
