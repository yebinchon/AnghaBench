; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_xp_dt_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_xp_dt_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_3__, %struct.hw_perf_event, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hw_perf_event = type { i64, i32 }
%struct.arm_ccn = type { %struct.TYPE_4__, %struct.arm_ccn_component* }
%struct.TYPE_4__ = type { i32 }
%struct.arm_ccn_component = type { i64 }

@CCN_IDX_PMU_CYCLE_COUNTER = common dso_local global i64 0, align 8
@CCN_TYPE_XP = common dso_local global i64 0, align 8
@CCN_XP_DT_CONFIG__DT_CFG__PASS_THROUGH = common dso_local global i32 0, align 4
@CCN_XP_DT_CONFIG = common dso_local global i64 0, align 8
@CCN_XP_DT_CONFIG__DT_CFG__MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @arm_ccn_pmu_xp_dt_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_ccn_pmu_xp_dt_config(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_ccn*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca %struct.arm_ccn_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.arm_ccn* @pmu_to_arm_ccn(i32 %12)
  store %struct.arm_ccn* %13, %struct.arm_ccn** %5, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 1
  store %struct.hw_perf_event* %15, %struct.hw_perf_event** %6, align 8
  %16 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CCN_IDX_PMU_CYCLE_COUNTER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %99

22:                                               ; preds = %2
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @CCN_CONFIG_TYPE(i32 %26)
  %28 = load i64, i64* @CCN_TYPE_XP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load %struct.arm_ccn*, %struct.arm_ccn** %5, align 8
  %32 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %31, i32 0, i32 1
  %33 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %32, align 8
  %34 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @CCN_CONFIG_XP(i32 %37)
  %39 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %33, i64 %38
  store %struct.arm_ccn_component* %39, %struct.arm_ccn_component** %7, align 8
  br label %51

40:                                               ; preds = %22
  %41 = load %struct.arm_ccn*, %struct.arm_ccn** %5, align 8
  %42 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %41, i32 0, i32 1
  %43 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %42, align 8
  %44 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %45 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @CCN_CONFIG_NODE(i32 %47)
  %49 = call i64 @arm_ccn_node_to_xp(i32 %48)
  %50 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %43, i64 %49
  store %struct.arm_ccn_component* %50, %struct.arm_ccn_component** %7, align 8
  br label %51

51:                                               ; preds = %40, %30
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %56 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %9, align 4
  br label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @CCN_XP_DT_CONFIG__DT_CFG__PASS_THROUGH, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load %struct.arm_ccn*, %struct.arm_ccn** %5, align 8
  %62 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %7, align 8
  %66 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CCN_XP_DT_CONFIG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @readl(i64 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @CCN_XP_DT_CONFIG__DT_CFG__MASK, align 4
  %72 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %73 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @CCN_XP_DT_CONFIG__DT_CFG__SHIFT(i64 %74)
  %76 = shl i32 %71, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %82 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @CCN_XP_DT_CONFIG__DT_CFG__SHIFT(i64 %83)
  %85 = shl i32 %80, %84
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %7, align 8
  %90 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CCN_XP_DT_CONFIG, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  %95 = load %struct.arm_ccn*, %struct.arm_ccn** %5, align 8
  %96 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock(i32* %97)
  br label %99

99:                                               ; preds = %60, %21
  ret void
}

declare dso_local %struct.arm_ccn* @pmu_to_arm_ccn(i32) #1

declare dso_local i64 @CCN_CONFIG_TYPE(i32) #1

declare dso_local i64 @CCN_CONFIG_XP(i32) #1

declare dso_local i64 @arm_ccn_node_to_xp(i32) #1

declare dso_local i32 @CCN_CONFIG_NODE(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @CCN_XP_DT_CONFIG__DT_CFG__SHIFT(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
