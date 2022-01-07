; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_pmu.c_hisi_uncore_pmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_pmu.c_hisi_uncore_pmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32, i32 }
%struct.hisi_pmu = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.perf_event** }
%struct.TYPE_3__ = type { i32 (%struct.perf_event*)* }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_uncore_pmu_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisi_pmu*, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.hisi_pmu* @to_hisi_pmu(i32 %11)
  store %struct.hisi_pmu* %12, %struct.hisi_pmu** %6, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  store %struct.hw_perf_event* %14, %struct.hw_perf_event** %7, align 8
  %15 = load i32, i32* @PERF_HES_STOPPED, align 4
  %16 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hisi_pmu*, %struct.hisi_pmu** %6, align 8
  %21 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %23, align 8
  %25 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %26 = call i32 %24(%struct.perf_event* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %34 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %37 = load %struct.hisi_pmu*, %struct.hisi_pmu** %6, align 8
  %38 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.perf_event**, %struct.perf_event*** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %40, i64 %42
  store %struct.perf_event* %36, %struct.perf_event** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PERF_EF_START, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %31
  %49 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %50 = load i32, i32* @PERF_EF_RELOAD, align 4
  %51 = call i32 @hisi_uncore_pmu_start(%struct.perf_event* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %31
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %29
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.hisi_pmu* @to_hisi_pmu(i32) #1

declare dso_local i32 @hisi_uncore_pmu_start(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
