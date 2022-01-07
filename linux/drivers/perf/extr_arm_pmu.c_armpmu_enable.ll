; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.arm_pmu = type { i32 (%struct.arm_pmu*)*, i32, i32, i32 }
%struct.pmu_hw_events = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @armpmu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armpmu_enable(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.arm_pmu*, align 8
  %4 = alloca %struct.pmu_hw_events*, align 8
  %5 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %6 = load %struct.pmu*, %struct.pmu** %2, align 8
  %7 = call %struct.arm_pmu* @to_arm_pmu(%struct.pmu* %6)
  store %struct.arm_pmu* %7, %struct.arm_pmu** %3, align 8
  %8 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %9 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.pmu_hw_events* @this_cpu_ptr(i32 %10)
  store %struct.pmu_hw_events* %11, %struct.pmu_hw_events** %4, align 8
  %12 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %13 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %16 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bitmap_weight(i32 %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = call i32 (...) @smp_processor_id()
  %20 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %21 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %20, i32 0, i32 1
  %22 = call i32 @cpumask_test_cpu(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %34

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %30 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %29, i32 0, i32 0
  %31 = load i32 (%struct.arm_pmu*)*, i32 (%struct.arm_pmu*)** %30, align 8
  %32 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %33 = call i32 %31(%struct.arm_pmu* %32)
  br label %34

34:                                               ; preds = %24, %28, %25
  ret void
}

declare dso_local %struct.arm_pmu* @to_arm_pmu(%struct.pmu*) #1

declare dso_local %struct.pmu_hw_events* @this_cpu_ptr(i32) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
