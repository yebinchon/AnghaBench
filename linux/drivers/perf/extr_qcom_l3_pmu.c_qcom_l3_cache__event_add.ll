; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__event_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32, i32 }
%struct.l3cache_pmu = type { %struct.perf_event**, i32 }

@L3_NUM_COUNTERS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @qcom_l3_cache__event_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_l3_cache__event_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.l3cache_pmu*, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.l3cache_pmu* @to_l3cache_pmu(i32 %12)
  store %struct.l3cache_pmu* %13, %struct.l3cache_pmu** %6, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 0
  store %struct.hw_perf_event* %15, %struct.hw_perf_event** %7, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %17 = call i64 @event_uses_long_counter(%struct.perf_event* %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* %8, align 4
  %21 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %6, align 8
  %22 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @L3_NUM_COUNTERS, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @bitmap_find_free_region(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %58

32:                                               ; preds = %2
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %35 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @PERF_HES_STOPPED, align 4
  %37 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %40 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %42 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %6, align 8
  %43 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %42, i32 0, i32 0
  %44 = load %struct.perf_event**, %struct.perf_event*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %44, i64 %46
  store %struct.perf_event* %41, %struct.perf_event** %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @PERF_EF_START, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %32
  %53 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %54 = call i32 @qcom_l3_cache__event_start(%struct.perf_event* %53, i32 0)
  br label %55

55:                                               ; preds = %52, %32
  %56 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %57 = call i32 @perf_event_update_userpage(%struct.perf_event* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %29
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.l3cache_pmu* @to_l3cache_pmu(i32) #1

declare dso_local i64 @event_uses_long_counter(%struct.perf_event*) #1

declare dso_local i32 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @qcom_l3_cache__event_start(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
