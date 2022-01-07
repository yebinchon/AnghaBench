; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_event_sanitise_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_event_sanitise_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.arm_spe_pmu = type { i32 }

@SYS_PMSIRR_EL1_INTERVAL_MASK = common dso_local global i32 0, align 4
@SYS_PMSIRR_EL1_INTERVAL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @arm_spe_event_sanitise_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_spe_event_sanitise_period(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.arm_spe_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.arm_spe_pmu* @to_spe_pmu(i32 %8)
  store %struct.arm_spe_pmu* %9, %struct.arm_spe_pmu** %3, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @SYS_PMSIRR_EL1_INTERVAL_MASK, align 4
  %15 = load i32, i32* @SYS_PMSIRR_EL1_INTERVAL_SHIFT, align 4
  %16 = shl i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %3, align 8
  %19 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %3, align 8
  %24 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  br label %37

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %30
  br label %37

37:                                               ; preds = %36, %22
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %40 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  ret void
}

declare dso_local %struct.arm_spe_pmu* @to_spe_pmu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
