; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_init_cntr_base_l3c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_init_cntr_base_l3c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i64, i64 }
%struct.tx2_uncore_pmu = type { i64 }

@L3C_COUNTER_CTL = common dso_local global i64 0, align 8
@L3C_COUNTER_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.tx2_uncore_pmu*)* @init_cntr_base_l3c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cntr_base_l3c(%struct.perf_event* %0, %struct.tx2_uncore_pmu* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.tx2_uncore_pmu*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.tx2_uncore_pmu* %1, %struct.tx2_uncore_pmu** %4, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  store %struct.hw_perf_event* %7, %struct.hw_perf_event** %5, align 8
  %8 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %4, align 8
  %9 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @L3C_COUNTER_CTL, align 8
  %12 = add i64 %10, %11
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = call i32 @GET_COUNTERID(%struct.perf_event* %13)
  %15 = mul nsw i32 8, %14
  %16 = sext i32 %15 to i64
  %17 = add i64 %12, %16
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %4, align 8
  %21 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @L3C_COUNTER_DATA, align 8
  %24 = add i64 %22, %23
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = call i32 @GET_COUNTERID(%struct.perf_event* %25)
  %27 = mul nsw i32 8, %26
  %28 = sext i32 %27 to i64
  %29 = add i64 %24, %28
  %30 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %31 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  ret void
}

declare dso_local i32 @GET_COUNTERID(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
