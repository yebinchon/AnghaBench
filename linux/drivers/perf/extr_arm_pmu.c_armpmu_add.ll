; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32, i32 }
%struct.arm_pmu = type { i32 (%struct.pmu_hw_events*, %struct.perf_event*)*, i32 (%struct.perf_event*)*, i32, i32 }
%struct.pmu_hw_events = type { %struct.perf_event** }

@ENOENT = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @armpmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armpmu_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arm_pmu*, align 8
  %7 = alloca %struct.pmu_hw_events*, align 8
  %8 = alloca %struct.hw_perf_event*, align 8
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.arm_pmu* @to_arm_pmu(i32 %12)
  store %struct.arm_pmu* %13, %struct.arm_pmu** %6, align 8
  %14 = load %struct.arm_pmu*, %struct.arm_pmu** %6, align 8
  %15 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pmu_hw_events* @this_cpu_ptr(i32 %16)
  store %struct.pmu_hw_events* %17, %struct.pmu_hw_events** %7, align 8
  %18 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 0
  store %struct.hw_perf_event* %19, %struct.hw_perf_event** %8, align 8
  %20 = call i32 (...) @smp_processor_id()
  %21 = load %struct.arm_pmu*, %struct.arm_pmu** %6, align 8
  %22 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %21, i32 0, i32 2
  %23 = call i32 @cpumask_test_cpu(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %72

28:                                               ; preds = %2
  %29 = load %struct.arm_pmu*, %struct.arm_pmu** %6, align 8
  %30 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %29, i32 0, i32 0
  %31 = load i32 (%struct.pmu_hw_events*, %struct.perf_event*)*, i32 (%struct.pmu_hw_events*, %struct.perf_event*)** %30, align 8
  %32 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %7, align 8
  %33 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %34 = call i32 %31(%struct.pmu_hw_events* %32, %struct.perf_event* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %72

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.arm_pmu*, %struct.arm_pmu** %6, align 8
  %45 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %44, i32 0, i32 1
  %46 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %45, align 8
  %47 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %48 = call i32 %46(%struct.perf_event* %47)
  %49 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %50 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %7, align 8
  %51 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %50, i32 0, i32 0
  %52 = load %struct.perf_event**, %struct.perf_event*** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %52, i64 %54
  store %struct.perf_event* %49, %struct.perf_event** %55, align 8
  %56 = load i32, i32* @PERF_HES_STOPPED, align 4
  %57 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %60 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @PERF_EF_START, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %39
  %66 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %67 = load i32, i32* @PERF_EF_RELOAD, align 4
  %68 = call i32 @armpmu_start(%struct.perf_event* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %39
  %70 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %71 = call i32 @perf_event_update_userpage(%struct.perf_event* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %37, %25
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.arm_pmu* @to_arm_pmu(i32) #1

declare dso_local %struct.pmu_hw_events* @this_cpu_ptr(i32) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @armpmu_start(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
