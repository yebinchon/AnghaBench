; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_event_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_event_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.arm_ccn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @arm_ccn_pmu_event_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_ccn_pmu_event_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_ccn*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.arm_ccn* @pmu_to_arm_ccn(i32 %8)
  store %struct.arm_ccn* %9, %struct.arm_ccn** %5, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = load i32, i32* @PERF_EF_UPDATE, align 4
  %12 = call i32 @arm_ccn_pmu_event_stop(%struct.perf_event* %10, i32 %11)
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = call i32 @arm_ccn_pmu_event_release(%struct.perf_event* %13)
  %15 = load %struct.arm_ccn*, %struct.arm_ccn** %5, align 8
  %16 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load %struct.arm_ccn*, %struct.arm_ccn** %5, align 8
  %21 = call i64 @arm_ccn_pmu_active_counters(%struct.arm_ccn* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.arm_ccn*, %struct.arm_ccn** %5, align 8
  %25 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @hrtimer_cancel(i32* %26)
  br label %28

28:                                               ; preds = %23, %19, %2
  ret void
}

declare dso_local %struct.arm_ccn* @pmu_to_arm_ccn(i32) #1

declare dso_local i32 @arm_ccn_pmu_event_stop(%struct.perf_event*, i32) #1

declare dso_local i32 @arm_ccn_pmu_event_release(%struct.perf_event*) #1

declare dso_local i64 @arm_ccn_pmu_active_counters(%struct.arm_ccn*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
