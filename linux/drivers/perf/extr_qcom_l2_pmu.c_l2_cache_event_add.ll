; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_l2_cache_event_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_l2_cache_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i32 }
%struct.cluster_pmu = type { %struct.perf_event** }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @l2_cache_event_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2_cache_event_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cluster_pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 2
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @to_l2cache_pmu(i32 %14)
  %16 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cluster_pmu* @get_cluster_pmu(i32 %15, i32 %18)
  store %struct.cluster_pmu* %19, %struct.cluster_pmu** %9, align 8
  %20 = load %struct.cluster_pmu*, %struct.cluster_pmu** %9, align 8
  %21 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %22 = call i32 @l2_cache_get_event_idx(%struct.cluster_pmu* %20, %struct.perf_event* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %58

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %30 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @PERF_HES_STOPPED, align 4
  %32 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %35 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %37 = load %struct.cluster_pmu*, %struct.cluster_pmu** %9, align 8
  %38 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %37, i32 0, i32 0
  %39 = load %struct.perf_event**, %struct.perf_event*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %39, i64 %41
  store %struct.perf_event* %36, %struct.perf_event** %42, align 8
  %43 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %44 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %43, i32 0, i32 2
  %45 = call i32 @local64_set(i32* %44, i32 0)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @PERF_EF_START, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %27
  %51 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @l2_cache_event_start(%struct.perf_event* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %27
  %55 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %56 = call i32 @perf_event_update_userpage(%struct.perf_event* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %25
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.cluster_pmu* @get_cluster_pmu(i32, i32) #1

declare dso_local i32 @to_l2cache_pmu(i32) #1

declare dso_local i32 @l2_cache_get_event_idx(%struct.cluster_pmu*, %struct.perf_event*) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i32 @l2_cache_event_start(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
