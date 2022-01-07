; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_pmu.c_hisi_uncore_pmu_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_pmu.c_hisi_uncore_pmu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32, i32 }
%struct.hisi_pmu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hisi_pmu*, %struct.hw_perf_event*, i32)* }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_uncore_pmu_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_pmu*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.hisi_pmu* @to_hisi_pmu(i32 %10)
  store %struct.hisi_pmu* %11, %struct.hisi_pmu** %5, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  store %struct.hw_perf_event* %13, %struct.hw_perf_event** %6, align 8
  %14 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %15 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PERF_HES_STOPPED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %61

25:                                               ; preds = %2
  %26 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON_ONCE(i32 %33)
  %35 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %36 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %38 = call i32 @hisi_uncore_pmu_set_event_period(%struct.perf_event* %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PERF_EF_RELOAD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %25
  %44 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %45 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %44, i32 0, i32 1
  %46 = call i32 @local64_read(i32* %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %48 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.hisi_pmu*, %struct.hw_perf_event*, i32)*, i32 (%struct.hisi_pmu*, %struct.hw_perf_event*, i32)** %50, align 8
  %52 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %53 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 %51(%struct.hisi_pmu* %52, %struct.hw_perf_event* %53, i32 %54)
  br label %56

56:                                               ; preds = %43, %25
  %57 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %58 = call i32 @hisi_uncore_pmu_enable_event(%struct.perf_event* %57)
  %59 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %60 = call i32 @perf_event_update_userpage(%struct.perf_event* %59)
  br label %61

61:                                               ; preds = %56, %24
  ret void
}

declare dso_local %struct.hisi_pmu* @to_hisi_pmu(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @hisi_uncore_pmu_set_event_period(%struct.perf_event*) #1

declare dso_local i32 @local64_read(i32*) #1

declare dso_local i32 @hisi_uncore_pmu_enable_event(%struct.perf_event*) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
