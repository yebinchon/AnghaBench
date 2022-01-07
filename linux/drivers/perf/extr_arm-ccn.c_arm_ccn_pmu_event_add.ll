; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_event_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.arm_ccn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@HRTIMER_MODE_REL_PINNED = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @arm_ccn_pmu_event_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_ccn_pmu_event_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca %struct.arm_ccn*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %7, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.arm_ccn* @pmu_to_arm_ccn(i32 %13)
  store %struct.arm_ccn* %14, %struct.arm_ccn** %8, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %16 = call i32 @arm_ccn_pmu_event_alloc(%struct.perf_event* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.arm_ccn*, %struct.arm_ccn** %8, align 8
  %23 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = load %struct.arm_ccn*, %struct.arm_ccn** %8, align 8
  %28 = call i32 @arm_ccn_pmu_active_counters(%struct.arm_ccn* %27)
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.arm_ccn*, %struct.arm_ccn** %8, align 8
  %32 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 (...) @arm_ccn_pmu_timer_period()
  %35 = load i32, i32* @HRTIMER_MODE_REL_PINNED, align 4
  %36 = call i32 @hrtimer_start(i32* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %26, %21
  %38 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %39 = call i32 @arm_ccn_pmu_event_config(%struct.perf_event* %38)
  %40 = load i32, i32* @PERF_HES_STOPPED, align 4
  %41 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %42 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @PERF_EF_START, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %49 = load i32, i32* @PERF_EF_UPDATE, align 4
  %50 = call i32 @arm_ccn_pmu_event_start(%struct.perf_event* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %37
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.arm_ccn* @pmu_to_arm_ccn(i32) #1

declare dso_local i32 @arm_ccn_pmu_event_alloc(%struct.perf_event*) #1

declare dso_local i32 @arm_ccn_pmu_active_counters(%struct.arm_ccn*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @arm_ccn_pmu_timer_period(...) #1

declare dso_local i32 @arm_ccn_pmu_event_config(%struct.perf_event*) #1

declare dso_local i32 @arm_ccn_pmu_event_start(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
