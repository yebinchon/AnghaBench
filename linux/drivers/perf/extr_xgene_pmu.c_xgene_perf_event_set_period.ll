; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_perf_event_set_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_perf_event_set_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32, i32 }
%struct.xgene_pmu_dev = type { %struct.xgene_pmu* }
%struct.xgene_pmu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xgene_pmu_dev*, i32, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @xgene_perf_event_set_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_perf_event_set_period(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.xgene_pmu_dev*, align 8
  %4 = alloca %struct.xgene_pmu*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.xgene_pmu_dev* @to_pmu_dev(i32 %9)
  store %struct.xgene_pmu_dev* %10, %struct.xgene_pmu_dev** %3, align 8
  %11 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %12 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %11, i32 0, i32 0
  %13 = load %struct.xgene_pmu*, %struct.xgene_pmu** %12, align 8
  store %struct.xgene_pmu* %13, %struct.xgene_pmu** %4, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 0
  store %struct.hw_perf_event* %15, %struct.hw_perf_event** %5, align 8
  store i64 2147483648, i64* %6, align 8
  %16 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %16, i32 0, i32 1
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @local64_set(i32* %17, i64 %18)
  %20 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %21 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.xgene_pmu_dev*, i32, i64)*, i32 (%struct.xgene_pmu_dev*, i32, i64)** %23, align 8
  %25 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %26 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 %24(%struct.xgene_pmu_dev* %25, i32 %28, i64 %29)
  ret void
}

declare dso_local %struct.xgene_pmu_dev* @to_pmu_dev(i32) #1

declare dso_local i32 @local64_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
