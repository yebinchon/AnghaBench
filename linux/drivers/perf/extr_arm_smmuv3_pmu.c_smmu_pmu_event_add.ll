; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_event_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i32 }
%struct.smmu_pmu = type { %struct.perf_event** }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @smmu_pmu_event_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smmu_pmu_event_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smmu_pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %6, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.smmu_pmu* @to_smmu_pmu(i32 %13)
  store %struct.smmu_pmu* %14, %struct.smmu_pmu** %8, align 8
  %15 = load %struct.smmu_pmu*, %struct.smmu_pmu** %8, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %17 = call i32 @smmu_pmu_get_event_idx(%struct.smmu_pmu* %15, %struct.perf_event* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %55

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %25 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @PERF_HES_STOPPED, align 4
  %27 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %30 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %32 = load %struct.smmu_pmu*, %struct.smmu_pmu** %8, align 8
  %33 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %32, i32 0, i32 0
  %34 = load %struct.perf_event**, %struct.perf_event*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %34, i64 %36
  store %struct.perf_event* %31, %struct.perf_event** %37, align 8
  %38 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %39 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %38, i32 0, i32 2
  %40 = call i32 @local64_set(i32* %39, i32 0)
  %41 = load %struct.smmu_pmu*, %struct.smmu_pmu** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @smmu_pmu_interrupt_enable(%struct.smmu_pmu* %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PERF_EF_START, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %22
  %49 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @smmu_pmu_event_start(%struct.perf_event* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %22
  %53 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %54 = call i32 @perf_event_update_userpage(%struct.perf_event* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.smmu_pmu* @to_smmu_pmu(i32) #1

declare dso_local i32 @smmu_pmu_get_event_idx(%struct.smmu_pmu*, %struct.perf_event*) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i32 @smmu_pmu_interrupt_enable(%struct.smmu_pmu*, i32) #1

declare dso_local i32 @smmu_pmu_event_start(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
