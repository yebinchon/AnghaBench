; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_init_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_init_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsu_pmu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsu_pmu*)* @dsu_pmu_init_pmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsu_pmu_init_pmu(%struct.dsu_pmu* %0) #0 {
  %2 = alloca %struct.dsu_pmu*, align 8
  store %struct.dsu_pmu* %0, %struct.dsu_pmu** %2, align 8
  %3 = load %struct.dsu_pmu*, %struct.dsu_pmu** %2, align 8
  %4 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.dsu_pmu*, %struct.dsu_pmu** %2, align 8
  %9 = call i32 @dsu_pmu_probe_pmu(%struct.dsu_pmu* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = call i32 (...) @dsu_pmu_get_reset_overflow()
  ret void
}

declare dso_local i32 @dsu_pmu_probe_pmu(%struct.dsu_pmu*) #1

declare dso_local i32 @dsu_pmu_get_reset_overflow(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
