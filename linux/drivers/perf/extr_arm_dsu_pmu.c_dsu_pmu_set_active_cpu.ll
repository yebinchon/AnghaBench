; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_set_active_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_set_active_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsu_pmu = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to set irq affinity to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.dsu_pmu*)* @dsu_pmu_set_active_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsu_pmu_set_active_cpu(i32 %0, %struct.dsu_pmu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsu_pmu*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.dsu_pmu* %1, %struct.dsu_pmu** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.dsu_pmu*, %struct.dsu_pmu** %4, align 8
  %7 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %6, i32 0, i32 0
  %8 = call i32 @cpumask_set_cpu(i32 %5, i32* %7)
  %9 = load %struct.dsu_pmu*, %struct.dsu_pmu** %4, align 8
  %10 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dsu_pmu*, %struct.dsu_pmu** %4, align 8
  %13 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %12, i32 0, i32 0
  %14 = call i64 @irq_set_affinity_hint(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i64 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
