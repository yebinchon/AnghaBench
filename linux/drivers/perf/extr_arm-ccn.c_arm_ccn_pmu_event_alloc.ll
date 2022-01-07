; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_event_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_event_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_5__, %struct.hw_perf_event, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hw_perf_event = type { i64, i32 }
%struct.arm_ccn = type { %struct.TYPE_8__, i32, %struct.arm_ccn_component*, %struct.arm_ccn_component* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.perf_event*, %struct.arm_ccn_component* }
%struct.arm_ccn_component = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@CCN_TYPE_CYCLES = common dso_local global i64 0, align 8
@CCN_IDX_PMU_CYCLE_COUNTER = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@CCN_NUM_PMU_EVENT_COUNTERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No more counters available!\0A\00", align 1
@CCN_TYPE_XP = common dso_local global i64 0, align 8
@CCN_EVENT_WATCHPOINT = common dso_local global i64 0, align 8
@CCN_NUM_XP_WATCHPOINTS = common dso_local global i32 0, align 4
@CCN_NUM_PMU_EVENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"No more event sources/watchpoints on node/XP %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @arm_ccn_pmu_event_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_ccn_pmu_event_alloc(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.arm_ccn*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.arm_ccn_component*, align 8
  %10 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.arm_ccn* @pmu_to_arm_ccn(i32 %13)
  store %struct.arm_ccn* %14, %struct.arm_ccn** %4, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 1
  store %struct.hw_perf_event* %16, %struct.hw_perf_event** %5, align 8
  %17 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @CCN_CONFIG_NODE(i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @CCN_CONFIG_TYPE(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %28 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @CCN_CONFIG_EVENT(i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @CCN_TYPE_CYCLES, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %1
  %36 = load i64, i64* @CCN_IDX_PMU_CYCLE_COUNTER, align 8
  %37 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %38 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @test_and_set_bit(i64 %36, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %161

46:                                               ; preds = %35
  %47 = load i64, i64* @CCN_IDX_PMU_CYCLE_COUNTER, align 8
  %48 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %49 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %51 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %52 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i64, i64* @CCN_IDX_PMU_CYCLE_COUNTER, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store %struct.perf_event* %50, %struct.perf_event** %57, align 8
  store i32 0, i32* %2, align 4
  br label %161

58:                                               ; preds = %1
  %59 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %60 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CCN_NUM_PMU_EVENT_COUNTERS, align 4
  %64 = call i8* @arm_ccn_pmu_alloc_bit(i32 %62, i32 %63)
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %67 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %69 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %58
  %73 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %74 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i8*, ...) @dev_dbg(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EAGAIN, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %161

79:                                               ; preds = %58
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @CCN_TYPE_XP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %85 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %84, i32 0, i32 3
  %86 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %86, i64 %87
  store %struct.arm_ccn_component* %88, %struct.arm_ccn_component** %9, align 8
  br label %95

89:                                               ; preds = %79
  %90 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %91 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %90, i32 0, i32 2
  %92 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %92, i64 %93
  store %struct.arm_ccn_component* %94, %struct.arm_ccn_component** %9, align 8
  br label %95

95:                                               ; preds = %89, %83
  %96 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %9, align 8
  %97 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %98 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %102 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  store %struct.arm_ccn_component* %96, %struct.arm_ccn_component** %105, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @CCN_TYPE_XP, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %95
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* @CCN_EVENT_WATCHPOINT, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %9, align 8
  %115 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CCN_NUM_XP_WATCHPOINTS, align 4
  %119 = call i8* @arm_ccn_pmu_alloc_bit(i32 %117, i32 %118)
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %10, align 4
  br label %128

121:                                              ; preds = %109, %95
  %122 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %9, align 8
  %123 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @CCN_NUM_PMU_EVENTS, align 4
  %126 = call i8* @arm_ccn_pmu_alloc_bit(i32 %124, i32 %125)
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %121, %113
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %128
  %132 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %133 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i64, i64* %6, align 8
  %136 = call i32 (i32, i8*, ...) @dev_dbg(i32 %134, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %135)
  %137 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %138 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %141 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @clear_bit(i64 %139, i32 %143)
  %145 = load i32, i32* @EAGAIN, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %161

147:                                              ; preds = %128
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %150 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  %151 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %152 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %153 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %157 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  store %struct.perf_event* %151, %struct.perf_event** %160, align 8
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %147, %131, %72, %46, %43
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.arm_ccn* @pmu_to_arm_ccn(i32) #1

declare dso_local i64 @CCN_CONFIG_NODE(i32) #1

declare dso_local i64 @CCN_CONFIG_TYPE(i32) #1

declare dso_local i64 @CCN_CONFIG_EVENT(i32) #1

declare dso_local i64 @test_and_set_bit(i64, i32) #1

declare dso_local i8* @arm_ccn_pmu_alloc_bit(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
