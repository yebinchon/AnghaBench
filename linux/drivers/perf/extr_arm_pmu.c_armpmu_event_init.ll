; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32 }
%struct.arm_pmu = type { i32 (%struct.perf_event*)*, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @armpmu_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armpmu_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.arm_pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.arm_pmu* @to_arm_pmu(i32 %7)
  store %struct.arm_pmu* %8, %struct.arm_pmu** %4, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.arm_pmu*, %struct.arm_pmu** %4, align 8
  %18 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %17, i32 0, i32 1
  %19 = call i32 @cpumask_test_cpu(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %13, %1
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = call i64 @has_branch_stack(%struct.perf_event* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %46

31:                                               ; preds = %24
  %32 = load %struct.arm_pmu*, %struct.arm_pmu** %4, align 8
  %33 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %32, i32 0, i32 0
  %34 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %33, align 8
  %35 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %36 = call i32 %34(%struct.perf_event* %35)
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %31
  %44 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %45 = call i32 @__hw_perf_event_init(%struct.perf_event* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %40, %28, %21
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.arm_pmu* @to_arm_pmu(i32) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i64 @has_branch_stack(%struct.perf_event*) #1

declare dso_local i32 @__hw_perf_event_init(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
