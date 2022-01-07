; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__32bit_counter_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__32bit_counter_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.l3cache_pmu = type { i64 }

@L3_M_BC_IRQCTL = common dso_local global i64 0, align 8
@L3_M_BC_INTENSET = common dso_local global i64 0, align 8
@PMCNT_RESET = common dso_local global i32 0, align 4
@L3_M_BC_CNTENSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @qcom_l3_cache__32bit_counter_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_l3_cache__32bit_counter_start(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.l3cache_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.l3cache_pmu* @to_l3cache_pmu(i32 %9)
  store %struct.l3cache_pmu* %10, %struct.l3cache_pmu** %3, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %16 = call i32 @get_event_type(%struct.perf_event* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %18 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @L3_M_BC_IRQCTL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @PMIRQONMSBEN(i32 %24)
  %26 = or i32 %23, %25
  %27 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %28 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @L3_M_BC_IRQCTL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel_relaxed(i32 %26, i64 %31)
  %33 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %34 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @local64_set(i32* %35, i32 0)
  %37 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %38 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @L3_HML3_PM_EVCNTR(i32 %40)
  %42 = add nsw i64 %39, %41
  %43 = call i32 @writel_relaxed(i32 0, i64 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @EVSEL(i32 %44)
  %46 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %47 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @L3_HML3_PM_EVTYPE(i32 %49)
  %51 = add nsw i64 %48, %50
  %52 = call i32 @writel_relaxed(i32 %45, i64 %51)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @PMINTENSET(i32 %53)
  %55 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %56 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @L3_M_BC_INTENSET, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel_relaxed(i32 %54, i64 %59)
  %61 = load i32, i32* @PMCNT_RESET, align 4
  %62 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %63 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @L3_HML3_PM_CNTCTL(i32 %65)
  %67 = add nsw i64 %64, %66
  %68 = call i32 @writel_relaxed(i32 %61, i64 %67)
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @PMCNTENSET(i32 %69)
  %71 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %72 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @L3_M_BC_CNTENSET, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel_relaxed(i32 %70, i64 %75)
  ret void
}

declare dso_local %struct.l3cache_pmu* @to_l3cache_pmu(i32) #1

declare dso_local i32 @get_event_type(%struct.perf_event*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @PMIRQONMSBEN(i32) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i64 @L3_HML3_PM_EVCNTR(i32) #1

declare dso_local i32 @EVSEL(i32) #1

declare dso_local i64 @L3_HML3_PM_EVTYPE(i32) #1

declare dso_local i32 @PMINTENSET(i32) #1

declare dso_local i64 @L3_HML3_PM_CNTCTL(i32) #1

declare dso_local i32 @PMCNTENSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
