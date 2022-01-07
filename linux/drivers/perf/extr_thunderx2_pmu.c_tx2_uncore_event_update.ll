; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_tx2_uncore_event_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_tx2_uncore_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }
%struct.tx2_uncore_pmu = type { i32, i64 }

@PMU_TYPE_DMC = common dso_local global i32 0, align 4
@DMC_EVENT_DATA_TRANSFERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @tx2_uncore_event_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx2_uncore_event_update(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca %struct.tx2_uncore_pmu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  store i64 0, i64* %5, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 2
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %6, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.tx2_uncore_pmu* @pmu_to_tx2_pmu(i32 %14)
  store %struct.tx2_uncore_pmu* %15, %struct.tx2_uncore_pmu** %7, align 8
  %16 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %7, align 8
  %17 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %7, align 8
  %20 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @reg_readl(i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %26, i32 0, i32 0
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @local64_xchg(i32* %27, i64 %28)
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %3, align 8
  %31 = sub i64 4294967296, %30
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PMU_TYPE_DMC, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %1
  %38 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %39 = call i64 @GET_EVENTID(%struct.perf_event* %38)
  %40 = load i64, i64* @DMC_EVENT_DATA_TRANSFERS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* %4, align 8
  %44 = udiv i64 %43, 4
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %42, %37, %1
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %9, align 8
  %48 = mul i64 %46, %47
  %49 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 0
  %51 = call i32 @local64_add(i64 %48, i32* %50)
  ret void
}

declare dso_local %struct.tx2_uncore_pmu* @pmu_to_tx2_pmu(i32) #1

declare dso_local i64 @reg_readl(i32) #1

declare dso_local i64 @local64_xchg(i32*, i64) #1

declare dso_local i64 @GET_EVENTID(%struct.perf_event*) #1

declare dso_local i32 @local64_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
