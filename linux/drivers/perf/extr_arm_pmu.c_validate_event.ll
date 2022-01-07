; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_validate_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_validate_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.pmu_hw_events = type { i32 }
%struct.perf_event = type { i64, %struct.pmu*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.arm_pmu = type { i64 (%struct.pmu_hw_events*, %struct.perf_event*)* }

@PERF_EVENT_STATE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu*, %struct.pmu_hw_events*, %struct.perf_event*)* @validate_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_event(%struct.pmu* %0, %struct.pmu_hw_events* %1, %struct.perf_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmu*, align 8
  %6 = alloca %struct.pmu_hw_events*, align 8
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca %struct.arm_pmu*, align 8
  store %struct.pmu* %0, %struct.pmu** %5, align 8
  store %struct.pmu_hw_events* %1, %struct.pmu_hw_events** %6, align 8
  store %struct.perf_event* %2, %struct.perf_event** %7, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %10 = call i64 @is_software_event(%struct.perf_event* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %53

13:                                               ; preds = %3
  %14 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 1
  %16 = load %struct.pmu*, %struct.pmu** %15, align 8
  %17 = load %struct.pmu*, %struct.pmu** %5, align 8
  %18 = icmp ne %struct.pmu* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %53

20:                                               ; preds = %13
  %21 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %53

27:                                               ; preds = %20
  %28 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %53

40:                                               ; preds = %33, %27
  %41 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 1
  %43 = load %struct.pmu*, %struct.pmu** %42, align 8
  %44 = call %struct.arm_pmu* @to_arm_pmu(%struct.pmu* %43)
  store %struct.arm_pmu* %44, %struct.arm_pmu** %8, align 8
  %45 = load %struct.arm_pmu*, %struct.arm_pmu** %8, align 8
  %46 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %45, i32 0, i32 0
  %47 = load i64 (%struct.pmu_hw_events*, %struct.perf_event*)*, i64 (%struct.pmu_hw_events*, %struct.perf_event*)** %46, align 8
  %48 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %6, align 8
  %49 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %50 = call i64 %47(%struct.pmu_hw_events* %48, %struct.perf_event* %49)
  %51 = icmp sge i64 %50, 0
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %40, %39, %26, %19, %12
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @is_software_event(%struct.perf_event*) #1

declare dso_local %struct.arm_pmu* @to_arm_pmu(%struct.pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
