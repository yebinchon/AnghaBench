; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_perf_disable_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_perf_disable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.xgene_pmu_dev = type { %struct.xgene_pmu* }
%struct.xgene_pmu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xgene_pmu_dev*, i32)*, i32 (%struct.xgene_pmu_dev*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @xgene_perf_disable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_perf_disable_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.xgene_pmu_dev*, align 8
  %4 = alloca %struct.xgene_pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.xgene_pmu_dev* @to_pmu_dev(i32 %7)
  store %struct.xgene_pmu_dev* %8, %struct.xgene_pmu_dev** %3, align 8
  %9 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %10 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %9, i32 0, i32 0
  %11 = load %struct.xgene_pmu*, %struct.xgene_pmu** %10, align 8
  store %struct.xgene_pmu* %11, %struct.xgene_pmu** %4, align 8
  %12 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %13 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32 (%struct.xgene_pmu_dev*, i32)*, i32 (%struct.xgene_pmu_dev*, i32)** %15, align 8
  %17 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %18 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %19 = call i32 @GET_CNTR(%struct.perf_event* %18)
  %20 = call i32 %16(%struct.xgene_pmu_dev* %17, i32 %19)
  %21 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %22 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.xgene_pmu_dev*, i32)*, i32 (%struct.xgene_pmu_dev*, i32)** %24, align 8
  %26 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %27 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %28 = call i32 @GET_CNTR(%struct.perf_event* %27)
  %29 = call i32 %25(%struct.xgene_pmu_dev* %26, i32 %28)
  ret void
}

declare dso_local %struct.xgene_pmu_dev* @to_pmu_dev(i32) #1

declare dso_local i32 @GET_CNTR(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
