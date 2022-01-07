; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_pmu = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PERF_PMU_CAP_NO_EXCLUDE = common dso_local global i32 0, align 4
@__oprofile_cpu_pmu = common dso_local global %struct.arm_pmu* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"enabled with %s PMU driver, %d counters available\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @armpmu_register(%struct.arm_pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_pmu*, align 8
  %4 = alloca i32, align 4
  store %struct.arm_pmu* %0, %struct.arm_pmu** %3, align 8
  %5 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %6 = call i32 @cpu_pmu_init(%struct.arm_pmu* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %50

11:                                               ; preds = %1
  %12 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %13 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @PERF_PMU_CAP_NO_EXCLUDE, align 4
  %18 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %19 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %16, %11
  %24 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %25 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %24, i32 0, i32 2
  %26 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %27 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @perf_pmu_register(%struct.TYPE_2__* %25, i32 %28, i32 -1)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %46

33:                                               ; preds = %23
  %34 = load %struct.arm_pmu*, %struct.arm_pmu** @__oprofile_cpu_pmu, align 8
  %35 = icmp ne %struct.arm_pmu* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  store %struct.arm_pmu* %37, %struct.arm_pmu** @__oprofile_cpu_pmu, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %40 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %43 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  store i32 0, i32* %2, align 4
  br label %50

46:                                               ; preds = %32
  %47 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %48 = call i32 @cpu_pmu_destroy(%struct.arm_pmu* %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %38, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @cpu_pmu_init(%struct.arm_pmu*) #1

declare dso_local i32 @perf_pmu_register(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @cpu_pmu_destroy(%struct.arm_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
