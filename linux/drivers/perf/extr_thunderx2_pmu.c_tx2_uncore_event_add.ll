; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_tx2_uncore_event_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_tx2_uncore_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i64, i32 }
%struct.tx2_uncore_pmu = type { i32 (%struct.perf_event.0*, %struct.tx2_uncore_pmu*)*, %struct.perf_event** }
%struct.perf_event.0 = type opaque

@EAGAIN = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @tx2_uncore_event_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx2_uncore_event_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca %struct.tx2_uncore_pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %6, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.tx2_uncore_pmu* @pmu_to_tx2_pmu(i32 %12)
  store %struct.tx2_uncore_pmu* %13, %struct.tx2_uncore_pmu** %7, align 8
  %14 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %7, align 8
  %15 = call i64 @alloc_counter(%struct.tx2_uncore_pmu* %14)
  %16 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %55

25:                                               ; preds = %2
  %26 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %27 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %7, align 8
  %28 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %27, i32 0, i32 1
  %29 = load %struct.perf_event**, %struct.perf_event*** %28, align 8
  %30 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %31 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %29, i64 %32
  store %struct.perf_event* %26, %struct.perf_event** %33, align 8
  %34 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %7, align 8
  %35 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %34, i32 0, i32 0
  %36 = load i32 (%struct.perf_event.0*, %struct.tx2_uncore_pmu*)*, i32 (%struct.perf_event.0*, %struct.tx2_uncore_pmu*)** %35, align 8
  %37 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %38 = bitcast %struct.perf_event* %37 to %struct.perf_event.0*
  %39 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %7, align 8
  %40 = call i32 %36(%struct.perf_event.0* %38, %struct.tx2_uncore_pmu* %39)
  %41 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %42 = load i32, i32* @PERF_HES_STOPPED, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %45 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @PERF_EF_START, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %25
  %51 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @tx2_uncore_event_start(%struct.perf_event* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %25
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %22
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.tx2_uncore_pmu* @pmu_to_tx2_pmu(i32) #1

declare dso_local i64 @alloc_counter(%struct.tx2_uncore_pmu*) #1

declare dso_local i32 @tx2_uncore_event_start(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
