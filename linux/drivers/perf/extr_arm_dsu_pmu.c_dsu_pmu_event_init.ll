; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.dsu_pmu = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't support sampling events\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PERF_ATTACH_TASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't support per-task counters\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Can't support filtering\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Requested cpu is not associated with the DSU\0A\00", align 1
@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @dsu_pmu_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsu_pmu_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.dsu_pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = call %struct.dsu_pmu* @to_dsu_pmu(%struct.TYPE_8__* %7)
  store %struct.dsu_pmu* %8, %struct.dsu_pmu** %4, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %12, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %111

22:                                               ; preds = %1
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = call i64 @is_sampling_event(%struct.perf_event* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.dsu_pmu*, %struct.dsu_pmu** %4, align 8
  %28 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %111

34:                                               ; preds = %22
  %35 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %36 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PERF_ATTACH_TASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39, %34
  %47 = load %struct.dsu_pmu*, %struct.dsu_pmu** %4, align 8
  %48 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %111

54:                                               ; preds = %39
  %55 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %56 = call i64 @has_branch_stack(%struct.perf_event* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.dsu_pmu*, %struct.dsu_pmu** %4, align 8
  %60 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %111

66:                                               ; preds = %54
  %67 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %68 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dsu_pmu*, %struct.dsu_pmu** %4, align 8
  %71 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %70, i32 0, i32 2
  %72 = call i32 @cpumask_test_cpu(i32 %69, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %66
  %75 = load %struct.dsu_pmu*, %struct.dsu_pmu** %4, align 8
  %76 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_dbg(i32 %78, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %111

82:                                               ; preds = %66
  %83 = load %struct.dsu_pmu*, %struct.dsu_pmu** %4, align 8
  %84 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %83, i32 0, i32 0
  %85 = call i32 @cpumask_first(i32* %84)
  %86 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %87 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %89 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @nr_cpu_ids, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %111

96:                                               ; preds = %82
  %97 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %98 = call i32 @dsu_pmu_validate_group(%struct.perf_event* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %111

103:                                              ; preds = %96
  %104 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %105 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %109 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %103, %100, %93, %74, %58, %46, %26, %19
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.dsu_pmu* @to_dsu_pmu(%struct.TYPE_8__*) #1

declare dso_local i64 @is_sampling_event(%struct.perf_event*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @has_branch_stack(%struct.perf_event*) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @cpumask_first(i32*) #1

declare dso_local i32 @dsu_pmu_validate_group(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
