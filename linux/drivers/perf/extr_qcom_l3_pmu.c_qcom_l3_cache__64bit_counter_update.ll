; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__64bit_counter_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__64bit_counter_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.l3cache_pmu = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @qcom_l3_cache__64bit_counter_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_l3_cache__64bit_counter_update(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.l3cache_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.l3cache_pmu* @to_l3cache_pmu(i32 %11)
  store %struct.l3cache_pmu* %12, %struct.l3cache_pmu** %3, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %54, %1
  %18 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i64 @local64_read(i32* %20)
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %38, %17
  %23 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %24 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i64 @L3_HML3_PM_EVCNTR(i32 %27)
  %29 = add nsw i64 %25, %28
  %30 = call i64 @readl_relaxed(i64 %29)
  store i64 %30, i64* %5, align 8
  %31 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %32 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @L3_HML3_PM_EVCNTR(i32 %34)
  %36 = add nsw i64 %33, %35
  %37 = call i64 @readl_relaxed(i64 %36)
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %22
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %41 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i64 @L3_HML3_PM_EVCNTR(i32 %44)
  %46 = add nsw i64 %42, %45
  %47 = call i64 @readl_relaxed(i64 %46)
  %48 = icmp ne i64 %39, %47
  br i1 %48, label %22, label %49

49:                                               ; preds = %38
  %50 = load i64, i64* %5, align 8
  %51 = shl i64 %50, 32
  %52 = load i64, i64* %6, align 8
  %53 = or i64 %51, %52
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %49
  %55 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %56 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @local64_cmpxchg(i32* %57, i64 %58, i64 %59)
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %17, label %63

63:                                               ; preds = %54
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = sub nsw i64 %64, %65
  %67 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %68 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %67, i32 0, i32 0
  %69 = call i32 @local64_add(i64 %66, i32* %68)
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
