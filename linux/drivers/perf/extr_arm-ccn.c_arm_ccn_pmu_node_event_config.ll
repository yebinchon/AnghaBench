; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_node_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_node_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_6__, %struct.hw_perf_event, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.hw_perf_event = type { i64, i32, i32 }
%struct.arm_ccn = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.arm_ccn_component* }
%struct.arm_ccn_component = type { i64 }

@CCN_HNF_PMU_EVENT_SEL = common dso_local global i64 0, align 8
@CCN_SBAS_PMU_EVENT_SEL = common dso_local global i64 0, align 8
@CCN_RNI_PMU_EVENT_SEL = common dso_local global i64 0, align 8
@CCN_HNF_PMU_EVENT_SEL__ID__MASK = common dso_local global i64 0, align 8
@CCN_SBAS_PMU_EVENT_SEL__ID__MASK = common dso_local global i64 0, align 8
@CCN_RNI_PMU_EVENT_SEL__ID__MASK = common dso_local global i64 0, align 8
@CCN_TYPE_HNF = common dso_local global i64 0, align 8
@CCN_TYPE_SBAS = common dso_local global i64 0, align 8
@CCN_TYPE_RNI_3P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @arm_ccn_pmu_node_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_ccn_pmu_node_event_config(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.arm_ccn*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca %struct.arm_ccn_component*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.arm_ccn* @pmu_to_arm_ccn(i32 %11)
  store %struct.arm_ccn* %12, %struct.arm_ccn** %3, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 1
  store %struct.hw_perf_event* %14, %struct.hw_perf_event** %4, align 8
  %15 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %16 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %20 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %23, align 8
  store %struct.arm_ccn_component* %24, %struct.arm_ccn_component** %5, align 8
  %25 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @CCN_CONFIG_TYPE(i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %31 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @CCN_CONFIG_NODE(i32 %33)
  %35 = call i64 @arm_ccn_node_to_xp_port(i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %38 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @CCN_XP_DT_CONFIG__DT_CFG__DEVICE_PMU_EVENT(i64 %36, i32 %39)
  %41 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %42 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* @CCN_HNF_PMU_EVENT_SEL, align 8
  %44 = load i64, i64* @CCN_SBAS_PMU_EVENT_SEL, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUILD_BUG_ON(i32 %46)
  %48 = load i64, i64* @CCN_SBAS_PMU_EVENT_SEL, align 8
  %49 = load i64, i64* @CCN_RNI_PMU_EVENT_SEL, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUILD_BUG_ON(i32 %51)
  %53 = call i64 @CCN_HNF_PMU_EVENT_SEL__ID__SHIFT(i32 1)
  %54 = call i64 @CCN_SBAS_PMU_EVENT_SEL__ID__SHIFT(i32 1)
  %55 = icmp ne i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUILD_BUG_ON(i32 %56)
  %58 = call i64 @CCN_SBAS_PMU_EVENT_SEL__ID__SHIFT(i32 1)
  %59 = call i64 @CCN_RNI_PMU_EVENT_SEL__ID__SHIFT(i32 1)
  %60 = icmp ne i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUILD_BUG_ON(i32 %61)
  %63 = load i64, i64* @CCN_HNF_PMU_EVENT_SEL__ID__MASK, align 8
  %64 = load i64, i64* @CCN_SBAS_PMU_EVENT_SEL__ID__MASK, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUILD_BUG_ON(i32 %66)
  %68 = load i64, i64* @CCN_SBAS_PMU_EVENT_SEL__ID__MASK, align 8
  %69 = load i64, i64* @CCN_RNI_PMU_EVENT_SEL__ID__MASK, align 8
  %70 = icmp ne i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUILD_BUG_ON(i32 %71)
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @CCN_TYPE_HNF, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %1
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @CCN_TYPE_SBAS, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* @CCN_TYPE_RNI_3P, align 4
  %83 = call i32 @arm_ccn_pmu_type_eq(i64 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %80, %76, %1
  %87 = phi i1 [ false, %76 ], [ false, %1 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  %89 = call i64 @WARN_ON(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %127

92:                                               ; preds = %86
  %93 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %94 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CCN_HNF_PMU_EVENT_SEL, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i64 @readl(i64 %97)
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* @CCN_HNF_PMU_EVENT_SEL__ID__MASK, align 8
  %100 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %101 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @CCN_HNF_PMU_EVENT_SEL__ID__SHIFT(i32 %102)
  %104 = shl i64 %99, %103
  %105 = xor i64 %104, -1
  %106 = load i64, i64* %7, align 8
  %107 = and i64 %106, %105
  store i64 %107, i64* %7, align 8
  %108 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %109 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @CCN_CONFIG_EVENT(i32 %111)
  %113 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %114 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @CCN_HNF_PMU_EVENT_SEL__ID__SHIFT(i32 %115)
  %117 = shl i64 %112, %116
  %118 = load i64, i64* %7, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %7, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %122 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @CCN_HNF_PMU_EVENT_SEL, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i64 %120, i64 %125)
  br label %127

127:                                              ; preds = %92, %91
  ret void
}

declare dso_local %struct.arm_ccn* @pmu_to_arm_ccn(i32) #1

declare dso_local i64 @CCN_CONFIG_TYPE(i32) #1

declare dso_local i64 @arm_ccn_node_to_xp_port(i32) #1

declare dso_local i32 @CCN_CONFIG_NODE(i32) #1

declare dso_local i32 @CCN_XP_DT_CONFIG__DT_CFG__DEVICE_PMU_EVENT(i64, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @CCN_HNF_PMU_EVENT_SEL__ID__SHIFT(i32) #1

declare dso_local i64 @CCN_SBAS_PMU_EVENT_SEL__ID__SHIFT(i32) #1

declare dso_local i64 @CCN_RNI_PMU_EVENT_SEL__ID__SHIFT(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @arm_ccn_pmu_type_eq(i64, i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @CCN_CONFIG_EVENT(i32) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
