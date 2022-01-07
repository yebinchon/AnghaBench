; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.arm_pmu = type { i32 (%struct.arm_pmu*)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @armpmu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armpmu_disable(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.arm_pmu*, align 8
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %4 = load %struct.pmu*, %struct.pmu** %2, align 8
  %5 = call %struct.arm_pmu* @to_arm_pmu(%struct.pmu* %4)
  store %struct.arm_pmu* %5, %struct.arm_pmu** %3, align 8
  %6 = call i32 (...) @smp_processor_id()
  %7 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %8 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %7, i32 0, i32 1
  %9 = call i32 @cpumask_test_cpu(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %14 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %13, i32 0, i32 0
  %15 = load i32 (%struct.arm_pmu*)*, i32 (%struct.arm_pmu*)** %14, align 8
  %16 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %17 = call i32 %15(%struct.arm_pmu* %16)
  br label %18

18:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.arm_pmu* @to_arm_pmu(%struct.pmu*) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
