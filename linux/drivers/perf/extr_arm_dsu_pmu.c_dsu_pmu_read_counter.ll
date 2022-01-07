; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_read_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_read_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dsu_pmu = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Trying reading invalid counter %d\0A\00", align 1
@DSU_PMU_IDX_CYCLE_COUNTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @dsu_pmu_read_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsu_pmu_read_counter(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.dsu_pmu*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call %struct.dsu_pmu* @to_dsu_pmu(%struct.TYPE_4__* %10)
  store %struct.dsu_pmu* %11, %struct.dsu_pmu** %6, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = call i32 (...) @smp_processor_id()
  %17 = load %struct.dsu_pmu*, %struct.dsu_pmu** %6, align 8
  %18 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %17, i32 0, i32 1
  %19 = call i32 @cpumask_test_cpu(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

26:                                               ; preds = %1
  %27 = load %struct.dsu_pmu*, %struct.dsu_pmu** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @dsu_pmu_counter_valid(%struct.dsu_pmu* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 0, i32* %2, align 4
  br label %58

39:                                               ; preds = %26
  %40 = load %struct.dsu_pmu*, %struct.dsu_pmu** %6, align 8
  %41 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %40, i32 0, i32 0
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @raw_spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @DSU_PMU_IDX_CYCLE_COUNTER, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 (...) @__dsu_pmu_read_pmccntr()
  store i32 %48, i32* %4, align 4
  br label %52

49:                                               ; preds = %39
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @__dsu_pmu_read_counter(i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %47
  %53 = load %struct.dsu_pmu*, %struct.dsu_pmu** %6, align 8
  %54 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %53, i32 0, i32 0
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @raw_spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %31, %25
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.dsu_pmu* @to_dsu_pmu(%struct.TYPE_4__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @dsu_pmu_counter_valid(%struct.dsu_pmu*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__dsu_pmu_read_pmccntr(...) #1

declare dso_local i32 @__dsu_pmu_read_counter(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
