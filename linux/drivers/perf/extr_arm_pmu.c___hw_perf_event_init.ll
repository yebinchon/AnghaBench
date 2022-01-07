; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c___hw_perf_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c___hw_perf_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.perf_event*, %struct.TYPE_2__, %struct.hw_perf_event, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hw_perf_event = type { i32, i64, i32, i32, i32, i64, i64, i64 }
%struct.arm_pmu = type { i32 (%struct.perf_event*)*, i64 (%struct.hw_perf_event*, %struct.TYPE_2__*)* }

@.str = private unnamed_addr constant [29 x i8] c"event %x:%llx not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"ARM performance counters do not support mode exclusion\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @__hw_perf_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hw_perf_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.arm_pmu*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.arm_pmu* @to_arm_pmu(i32 %9)
  store %struct.arm_pmu* %10, %struct.arm_pmu** %4, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 2
  store %struct.hw_perf_event* %12, %struct.hw_perf_event** %5, align 8
  %13 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 7
  store i64 0, i64* %14, align 8
  %15 = load %struct.arm_pmu*, %struct.arm_pmu** %4, align 8
  %16 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %15, i32 0, i32 0
  %17 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %16, align 8
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = call i32 %17(%struct.perf_event* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %28 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %101

33:                                               ; preds = %1
  %34 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %35 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %37 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %39 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %41 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.arm_pmu*, %struct.arm_pmu** %4, align 8
  %43 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %42, i32 0, i32 1
  %44 = load i64 (%struct.hw_perf_event*, %struct.TYPE_2__*)*, i64 (%struct.hw_perf_event*, %struct.TYPE_2__*)** %43, align 8
  %45 = icmp ne i64 (%struct.hw_perf_event*, %struct.TYPE_2__*)* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %33
  %47 = load %struct.arm_pmu*, %struct.arm_pmu** %4, align 8
  %48 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %47, i32 0, i32 1
  %49 = load i64 (%struct.hw_perf_event*, %struct.TYPE_2__*)*, i64 (%struct.hw_perf_event*, %struct.TYPE_2__*)** %48, align 8
  %50 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %51 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %52 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %51, i32 0, i32 1
  %53 = call i64 %49(%struct.hw_perf_event* %50, %struct.TYPE_2__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EOPNOTSUPP, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %101

59:                                               ; preds = %46, %33
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %63 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = or i64 %64, %61
  store i64 %65, i64* %63, align 8
  %66 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %67 = call i32 @is_sampling_event(%struct.perf_event* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %59
  %70 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %71 = call i32 @arm_pmu_event_max_period(%struct.perf_event* %70)
  %72 = ashr i32 %71, 1
  %73 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %74 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %76 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %79 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %81 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %80, i32 0, i32 4
  %82 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %83 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @local64_set(i32* %81, i32 %84)
  br label %86

86:                                               ; preds = %69, %59
  %87 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %88 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %87, i32 0, i32 0
  %89 = load %struct.perf_event*, %struct.perf_event** %88, align 8
  %90 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %91 = icmp ne %struct.perf_event* %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %94 = call i64 @validate_group(%struct.perf_event* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %101

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %86
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %96, %55, %22
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.arm_pmu* @to_arm_pmu(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @is_sampling_event(%struct.perf_event*) #1

declare dso_local i32 @arm_pmu_event_max_period(%struct.perf_event*) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i64 @validate_group(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
