; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__32bit_counter_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__32bit_counter_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.l3cache_pmu = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @qcom_l3_cache__32bit_counter_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_l3_cache__32bit_counter_update(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.l3cache_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.l3cache_pmu* @to_l3cache_pmu(i32 %9)
  store %struct.l3cache_pmu* %10, %struct.l3cache_pmu** %3, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %27, %1
  %16 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i64 @local64_read(i32* %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %21 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @L3_HML3_PM_EVCNTR(i32 %23)
  %25 = add nsw i64 %22, %24
  %26 = call i64 @readl_relaxed(i64 %25)
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %15
  %28 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @local64_cmpxchg(i32* %30, i64 %31, i64 %32)
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %15, label %36

36:                                               ; preds = %27
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 0
  %42 = call i32 @local64_add(i64 %39, i32* %41)
  ret void
}

declare dso_local %struct.l3cache_pmu* @to_l3cache_pmu(i32) #1

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i64 @L3_HML3_PM_EVCNTR(i32) #1

declare dso_local i64 @local64_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @local64_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
