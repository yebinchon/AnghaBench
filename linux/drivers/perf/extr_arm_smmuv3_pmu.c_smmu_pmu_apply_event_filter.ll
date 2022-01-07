; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_apply_event_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_apply_event_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smmu_pmu = type { i32, i32*, i32, i32 }
%struct.perf_event = type { i32 }

@SMMU_PMCG_DEFAULT_FILTER_SPAN = common dso_local global i32 0, align 4
@SMMU_PMCG_DEFAULT_FILTER_SID = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smmu_pmu*, %struct.perf_event*, i32)* @smmu_pmu_apply_event_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smmu_pmu_apply_event_filter(%struct.smmu_pmu* %0, %struct.perf_event* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smmu_pmu*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.smmu_pmu* %0, %struct.smmu_pmu** %5, align 8
  store %struct.perf_event* %1, %struct.perf_event** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.smmu_pmu*, %struct.smmu_pmu** %5, align 8
  %13 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %16 = call i32 @get_filter_enable(%struct.perf_event* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %25 = call i32 @get_filter_span(%struct.perf_event* %24)
  br label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @SMMU_PMCG_DEFAULT_FILTER_SPAN, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i32 [ %25, %23 ], [ %27, %26 ]
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %34 = call i32 @get_filter_stream_id(%struct.perf_event* %33)
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @SMMU_PMCG_DEFAULT_FILTER_SID, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ %34, %32 ], [ %36, %35 ]
  store i32 %38, i32* %9, align 4
  %39 = load %struct.smmu_pmu*, %struct.smmu_pmu** %5, align 8
  %40 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @smmu_pmu_set_event_filter(%struct.perf_event* %44, i32 %45, i32 %46, i32 %47)
  store i32 0, i32* %4, align 4
  br label %77

49:                                               ; preds = %37
  %50 = load %struct.smmu_pmu*, %struct.smmu_pmu** %5, align 8
  %51 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @find_first_bit(i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %69, label %58

58:                                               ; preds = %49
  %59 = load %struct.smmu_pmu*, %struct.smmu_pmu** %5, align 8
  %60 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %67 = call i64 @smmu_pmu_check_global_filter(i32 %65, %struct.perf_event* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %58, %49
  %70 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @smmu_pmu_set_event_filter(%struct.perf_event* %70, i32 0, i32 %71, i32 %72)
  store i32 0, i32* %4, align 4
  br label %77

74:                                               ; preds = %58
  %75 = load i32, i32* @EAGAIN, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %69, %43
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @get_filter_enable(%struct.perf_event*) #1

declare dso_local i32 @get_filter_span(%struct.perf_event*) #1

declare dso_local i32 @get_filter_stream_id(%struct.perf_event*) #1

declare dso_local i32 @smmu_pmu_set_event_filter(%struct.perf_event*, i32, i32, i32) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i64 @smmu_pmu_check_global_filter(i32, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
