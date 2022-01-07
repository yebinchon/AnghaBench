; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_ddrc_pmu.c_hisi_ddrc_pmu_get_event_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_ddrc_pmu.c_hisi_ddrc_pmu_get_event_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32 }
%struct.hisi_pmu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @hisi_ddrc_pmu_get_event_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_ddrc_pmu_get_event_idx(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.hisi_pmu*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.hisi_pmu* @to_hisi_pmu(i32 %10)
  store %struct.hisi_pmu* %11, %struct.hisi_pmu** %4, align 8
  %12 = load %struct.hisi_pmu*, %struct.hisi_pmu** %4, align 8
  %13 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %5, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  store %struct.hw_perf_event* %17, %struct.hw_perf_event** %6, align 8
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %19 = call i32 @GET_DDRC_EVENTID(%struct.hw_perf_event* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i64*, i64** %5, align 8
  %22 = call i64 @test_bit(i32 %20, i64* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %32

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = load i64*, i64** %5, align 8
  %30 = call i32 @set_bit(i32 %28, i64* %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.hisi_pmu* @to_hisi_pmu(i32) #1

declare dso_local i32 @GET_DDRC_EVENTID(%struct.hw_perf_event*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
