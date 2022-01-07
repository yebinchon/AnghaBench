; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__64bit_counter_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__64bit_counter_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.l3cache_pmu = type { i64 }

@L3_M_BC_GANG = common dso_local global i64 0, align 8
@PMCNT_RESET = common dso_local global i32 0, align 4
@L3_M_BC_CNTENSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @qcom_l3_cache__64bit_counter_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_l3_cache__64bit_counter_start(%struct.perf_event* %0) #0 {
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
  %20 = load i64, i64* @L3_M_BC_GANG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @GANG_EN(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %30 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @L3_M_BC_GANG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel_relaxed(i32 %28, i64 %33)
  %35 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %36 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i32 @local64_set(i32* %37, i32 0)
  %39 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %40 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i64 @L3_HML3_PM_EVCNTR(i32 %43)
  %45 = add nsw i64 %41, %44
  %46 = call i32 @writel_relaxed(i32 0, i64 %45)
  %47 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %48 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @L3_HML3_PM_EVCNTR(i32 %50)
  %52 = add nsw i64 %49, %51
  %53 = call i32 @writel_relaxed(i32 0, i64 %52)
  %54 = call i32 @EVSEL(i32 0)
  %55 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %56 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i64 @L3_HML3_PM_EVTYPE(i32 %59)
  %61 = add nsw i64 %57, %60
  %62 = call i32 @writel_relaxed(i32 %54, i64 %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @EVSEL(i32 %63)
  %65 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %66 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @L3_HML3_PM_EVTYPE(i32 %68)
  %70 = add nsw i64 %67, %69
  %71 = call i32 @writel_relaxed(i32 %64, i64 %70)
  %72 = load i32, i32* @PMCNT_RESET, align 4
  %73 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %74 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i64 @L3_HML3_PM_CNTCTL(i32 %77)
  %79 = add nsw i64 %75, %78
  %80 = call i32 @writel_relaxed(i32 %72, i64 %79)
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @PMCNTENSET(i32 %82)
  %84 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %85 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @L3_M_BC_CNTENSET, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel_relaxed(i32 %83, i64 %88)
  %90 = load i32, i32* @PMCNT_RESET, align 4
  %91 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %92 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i64 @L3_HML3_PM_CNTCTL(i32 %94)
  %96 = add nsw i64 %93, %95
  %97 = call i32 @writel_relaxed(i32 %90, i64 %96)
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @PMCNTENSET(i32 %98)
  %100 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %3, align 8
  %101 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @L3_M_BC_CNTENSET, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel_relaxed(i32 %99, i64 %104)
  ret void
}

declare dso_local %struct.l3cache_pmu* @to_l3cache_pmu(i32) #1

declare dso_local i32 @get_event_type(%struct.perf_event*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @GANG_EN(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i64 @L3_HML3_PM_EVCNTR(i32) #1

declare dso_local i32 @EVSEL(i32) #1

declare dso_local i64 @L3_HML3_PM_EVTYPE(i32) #1

declare dso_local i64 @L3_HML3_PM_CNTCTL(i32) #1

declare dso_local i32 @PMCNTENSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
