; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_tx2_uncore_event_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_tx2_uncore_event_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i64 }
%struct.tx2_uncore_pmu = type { i32, i32, i32, i32, i32 (%struct.perf_event.0*, i32)* }
%struct.perf_event.0 = type opaque

@HRTIMER_MODE_REL_PINNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @tx2_uncore_event_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx2_uncore_event_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.tx2_uncore_pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 1
  store %struct.hw_perf_event* %8, %struct.hw_perf_event** %5, align 8
  %9 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %10 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.tx2_uncore_pmu* @pmu_to_tx2_pmu(i32 %13)
  store %struct.tx2_uncore_pmu* %14, %struct.tx2_uncore_pmu** %6, align 8
  %15 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %6, align 8
  %16 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %15, i32 0, i32 4
  %17 = load i32 (%struct.perf_event.0*, i32)*, i32 (%struct.perf_event.0*, i32)** %16, align 8
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = bitcast %struct.perf_event* %18 to %struct.perf_event.0*
  %20 = load i32, i32* %4, align 4
  %21 = call i32 %17(%struct.perf_event.0* %19, i32 %20)
  %22 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %23 = call i32 @perf_event_update_userpage(%struct.perf_event* %22)
  %24 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %6, align 8
  %25 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %6, align 8
  %28 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @bitmap_weight(i32 %26, i32 %29)
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %6, align 8
  %34 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %33, i32 0, i32 1
  %35 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %6, align 8
  %36 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ns_to_ktime(i32 %37)
  %39 = load i32, i32* @HRTIMER_MODE_REL_PINNED, align 4
  %40 = call i32 @hrtimer_start(i32* %34, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %2
  ret void
}

declare dso_local %struct.tx2_uncore_pmu* @pmu_to_tx2_pmu(i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
