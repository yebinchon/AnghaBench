; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_filter_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_filter_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.arm_pmu = type { i32 (%struct.perf_event*)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @armpmu_filter_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armpmu_filter_match(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.arm_pmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.arm_pmu* @to_arm_pmu(i32 %9)
  store %struct.arm_pmu* %10, %struct.arm_pmu** %4, align 8
  %11 = call i32 (...) @smp_processor_id()
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.arm_pmu*, %struct.arm_pmu** %4, align 8
  %14 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %13, i32 0, i32 1
  %15 = call i32 @cpumask_test_cpu(i32 %12, i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.arm_pmu*, %struct.arm_pmu** %4, align 8
  %20 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %19, i32 0, i32 0
  %21 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %20, align 8
  %22 = icmp ne i32 (%struct.perf_event*)* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.arm_pmu*, %struct.arm_pmu** %4, align 8
  %25 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %24, i32 0, i32 0
  %26 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %25, align 8
  %27 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %28 = call i32 %26(%struct.perf_event* %27)
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %18, %1
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.arm_pmu* @to_arm_pmu(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
