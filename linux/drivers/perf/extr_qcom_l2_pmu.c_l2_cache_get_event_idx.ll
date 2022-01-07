; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_l2_cache_get_event_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_l2_cache_get_event_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster_pmu = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i64 }

@L2CYCLE_CTR_RAW_CODE = common dso_local global i64 0, align 8
@l2_cycle_ctr_idx = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cluster_pmu*, %struct.perf_event*)* @l2_cache_get_event_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2_cache_get_event_idx(%struct.cluster_pmu* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cluster_pmu*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cluster_pmu* %0, %struct.cluster_pmu** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %6, align 8
  %12 = load %struct.cluster_pmu*, %struct.cluster_pmu** %4, align 8
  %13 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %8, align 4
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @L2CYCLE_CTR_RAW_CODE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load i32, i32* @l2_cycle_ctr_idx, align 4
  %25 = load %struct.cluster_pmu*, %struct.cluster_pmu** %4, align 8
  %26 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @test_and_set_bit(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %73

33:                                               ; preds = %23
  %34 = load i32, i32* @l2_cycle_ctr_idx, align 4
  store i32 %34, i32* %3, align 4
  br label %73

35:                                               ; preds = %2
  %36 = load %struct.cluster_pmu*, %struct.cluster_pmu** %4, align 8
  %37 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @find_first_zero_bit(i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %73

47:                                               ; preds = %35
  %48 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %49 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @L2_EVT_GROUP(i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.cluster_pmu*, %struct.cluster_pmu** %4, align 8
  %54 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @test_bit(i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %73

61:                                               ; preds = %47
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.cluster_pmu*, %struct.cluster_pmu** %4, align 8
  %64 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @set_bit(i32 %62, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.cluster_pmu*, %struct.cluster_pmu** %4, align 8
  %69 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @set_bit(i32 %67, i32 %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %61, %58, %44, %33, %30
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @L2_EVT_GROUP(i64) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
