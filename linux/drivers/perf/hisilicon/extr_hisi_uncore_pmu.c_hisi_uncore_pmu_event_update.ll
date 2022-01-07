; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_pmu.c_hisi_uncore_pmu_event_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_pmu.c_hisi_uncore_pmu_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32 }
%struct.hisi_pmu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.hisi_pmu*, %struct.hw_perf_event*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_uncore_pmu_event_update(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.hisi_pmu*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.hisi_pmu* @to_hisi_pmu(i32 %10)
  store %struct.hisi_pmu* %11, %struct.hisi_pmu** %3, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 1
  store %struct.hw_perf_event* %13, %struct.hw_perf_event** %4, align 8
  br label %14

14:                                               ; preds = %26, %1
  %15 = load %struct.hisi_pmu*, %struct.hisi_pmu** %3, align 8
  %16 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (%struct.hisi_pmu*, %struct.hw_perf_event*)*, i64 (%struct.hisi_pmu*, %struct.hw_perf_event*)** %18, align 8
  %20 = load %struct.hisi_pmu*, %struct.hisi_pmu** %3, align 8
  %21 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %22 = call i64 %19(%struct.hisi_pmu* %20, %struct.hw_perf_event* %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %24 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %23, i32 0, i32 0
  %25 = call i64 @local64_read(i32* %24)
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %14
  %27 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %28 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @local64_cmpxchg(i32* %28, i64 %29, i64 %30)
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %14, label %34

34:                                               ; preds = %26
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub nsw i64 %35, %36
  %38 = load %struct.hisi_pmu*, %struct.hisi_pmu** %3, align 8
  %39 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @HISI_MAX_PERIOD(i32 %40)
  %42 = and i64 %37, %41
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %45 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %44, i32 0, i32 0
  %46 = call i32 @local64_add(i64 %43, i32* %45)
  ret void
}

declare dso_local %struct.hisi_pmu* @to_hisi_pmu(i32) #1

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @local64_cmpxchg(i32*, i64, i64) #1

declare dso_local i64 @HISI_MAX_PERIOD(i32) #1

declare dso_local i32 @local64_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
