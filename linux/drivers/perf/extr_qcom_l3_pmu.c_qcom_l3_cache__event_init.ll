; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__event_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.hw_perf_event }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.hw_perf_event = type { i32, i64 }
%struct.l3cache_pmu = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @qcom_l3_cache__event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_l3_cache__event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.l3cache_pmu*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call %struct.l3cache_pmu* @to_l3cache_pmu(%struct.TYPE_4__* %8)
  store %struct.l3cache_pmu* %9, %struct.l3cache_pmu** %4, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 3
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %5, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %15, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %56

25:                                               ; preds = %1
  %26 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %56

33:                                               ; preds = %25
  %34 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %56

41:                                               ; preds = %33
  %42 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %43 = call i32 @qcom_l3_cache__validate_event_group(%struct.perf_event* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %56

48:                                               ; preds = %41
  %49 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %50 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 8
  %51 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %4, align 8
  %52 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %51, i32 0, i32 0
  %53 = call i32 @cpumask_first(i32* %52)
  %54 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %48, %45, %38, %30, %22
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.l3cache_pmu* @to_l3cache_pmu(%struct.TYPE_4__*) #1

declare dso_local i32 @qcom_l3_cache__validate_event_group(%struct.perf_event*) #1

declare dso_local i32 @cpumask_first(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
