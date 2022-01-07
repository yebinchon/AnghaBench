; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_tx2_uncore_pmu_add_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_tx2_uncore_pmu_add_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx2_uncore_pmu = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@tx2_hrtimer_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s PMU: Failed to init driver\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error %d registering hotplug\00", align 1
@tx2_pmus = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"%s PMU UNCORE registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tx2_uncore_pmu*)* @tx2_uncore_pmu_add_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx2_uncore_pmu_add_dev(%struct.tx2_uncore_pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tx2_uncore_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tx2_uncore_pmu* %0, %struct.tx2_uncore_pmu** %3, align 8
  %6 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %3, align 8
  %7 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @cpumask_of_node(i32 %8)
  %10 = load i32, i32* @cpu_online_mask, align 4
  %11 = call i32 @cpumask_any_and(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %3, align 8
  %14 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %3, align 8
  %16 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %15, i32 0, i32 6
  %17 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %18 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %19 = call i32 @hrtimer_init(%struct.TYPE_4__* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @tx2_hrtimer_callback, align 4
  %21 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %3, align 8
  %22 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %3, align 8
  %25 = call i32 @tx2_uncore_pmu_register(%struct.tx2_uncore_pmu* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %3, align 8
  %30 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %3, align 8
  %33 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %65

38:                                               ; preds = %1
  %39 = load i32, i32* @CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE, align 4
  %40 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %3, align 8
  %41 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %40, i32 0, i32 5
  %42 = call i32 @cpuhp_state_add_instance(i32 %39, i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %3, align 8
  %47 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %65

52:                                               ; preds = %38
  %53 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %3, align 8
  %54 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %53, i32 0, i32 4
  %55 = call i32 @list_add(i32* %54, i32* @tx2_pmus)
  %56 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %3, align 8
  %57 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %3, align 8
  %60 = getelementptr inbounds %struct.tx2_uncore_pmu, %struct.tx2_uncore_pmu* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %52, %45, %28
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @cpumask_any_and(i32, i32) #1

declare dso_local i32 @cpumask_of_node(i32) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @tx2_uncore_pmu_register(%struct.tx2_uncore_pmu*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @cpuhp_state_add_instance(i32, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
