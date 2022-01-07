; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_overflow_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_overflow_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_ccn_dt = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.perf_event* }
%struct.perf_event = type { i32 }

@CCN_DT_PMOVSR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@CCN_DT_PMOVSR_CLR = common dso_local global i64 0, align 8
@CCN_IDX_PMU_CYCLE_COUNTER = common dso_local global i32 0, align 4
@CCN_NUM_PMU_EVENT_COUNTERS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_ccn_dt*)* @arm_ccn_pmu_overflow_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_ccn_pmu_overflow_handler(%struct.arm_ccn_dt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_ccn_dt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca i32, align 4
  store %struct.arm_ccn_dt* %0, %struct.arm_ccn_dt** %3, align 8
  %8 = load %struct.arm_ccn_dt*, %struct.arm_ccn_dt** %3, align 8
  %9 = getelementptr inbounds %struct.arm_ccn_dt, %struct.arm_ccn_dt* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CCN_DT_PMOVSR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %2, align 4
  br label %76

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.arm_ccn_dt*, %struct.arm_ccn_dt** %3, align 8
  %21 = getelementptr inbounds %struct.arm_ccn_dt, %struct.arm_ccn_dt* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CCN_DT_PMOVSR_CLR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load i32, i32* @CCN_IDX_PMU_CYCLE_COUNTER, align 4
  %27 = load i32, i32* @CCN_NUM_PMU_EVENT_COUNTERS, align 4
  %28 = icmp ne i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUILD_BUG_ON(i32 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %71, %18
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @CCN_NUM_PMU_EVENT_COUNTERS, align 4
  %34 = add nsw i32 %33, 1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %31
  %37 = load %struct.arm_ccn_dt*, %struct.arm_ccn_dt** %3, align 8
  %38 = getelementptr inbounds %struct.arm_ccn_dt, %struct.arm_ccn_dt* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.perf_event*, %struct.perf_event** %43, align 8
  store %struct.perf_event* %44, %struct.perf_event** %6, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @BIT(i32 %46)
  %48 = and i32 %45, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %36
  %52 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %53 = icmp ne %struct.perf_event* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @CCN_IDX_PMU_CYCLE_COUNTER, align 4
  %57 = icmp ne i32 %55, %56
  br label %58

58:                                               ; preds = %54, %51, %36
  %59 = phi i1 [ false, %51 ], [ false, %36 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @WARN_ON_ONCE(i32 %60)
  %62 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %63 = icmp ne %struct.perf_event* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64, %58
  br label %71

68:                                               ; preds = %64
  %69 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %70 = call i32 @arm_ccn_pmu_event_update(%struct.perf_event* %69)
  br label %71

71:                                               ; preds = %68, %67
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %31

74:                                               ; preds = %31
  %75 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %16
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @arm_ccn_pmu_event_update(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
