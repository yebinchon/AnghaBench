; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_perf_event_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_perf_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32 }
%struct.xgene_pmu_dev = type { i64, %struct.xgene_pmu* }
%struct.xgene_pmu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.xgene_pmu_dev*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @xgene_perf_event_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_perf_event_update(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.xgene_pmu_dev*, align 8
  %4 = alloca %struct.xgene_pmu*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.xgene_pmu_dev* @to_pmu_dev(i32 %11)
  store %struct.xgene_pmu_dev* %12, %struct.xgene_pmu_dev** %3, align 8
  %13 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %14 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %13, i32 0, i32 1
  %15 = load %struct.xgene_pmu*, %struct.xgene_pmu** %14, align 8
  store %struct.xgene_pmu* %15, %struct.xgene_pmu** %4, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 1
  store %struct.hw_perf_event* %17, %struct.hw_perf_event** %5, align 8
  br label %18

18:                                               ; preds = %38, %1
  %19 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %20 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %19, i32 0, i32 0
  %21 = call i64 @local64_read(i32* %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %23 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64 (%struct.xgene_pmu_dev*, i32)*, i64 (%struct.xgene_pmu_dev*, i32)** %25, align 8
  %27 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %28 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %29 = call i32 @GET_CNTR(%struct.perf_event* %28)
  %30 = call i64 %26(%struct.xgene_pmu_dev* %27, i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %32 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %31, i32 0, i32 0
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @local64_cmpxchg(i32* %32, i64 %33, i64 %34)
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  br label %18

39:                                               ; preds = %18
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = sub nsw i64 %40, %41
  %43 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %44 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %42, %45
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %49 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %48, i32 0, i32 0
  %50 = call i32 @local64_add(i64 %47, i32* %49)
  ret void
}

declare dso_local %struct.xgene_pmu_dev* @to_pmu_dev(i32) #1

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i32 @GET_CNTR(%struct.perf_event*) #1

declare dso_local i64 @local64_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @local64_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
