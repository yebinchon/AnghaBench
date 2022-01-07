; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_ccn = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i64 }

@CPUHP_AP_PERF_ARM_CCN_ONLINE = common dso_local global i32 0, align 4
@CCN_XP_DT_CONTROL = common dso_local global i64 0, align 8
@CCN_DT_PMCR = common dso_local global i64 0, align 8
@arm_ccn_pmu_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_ccn*)* @arm_ccn_pmu_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_ccn_pmu_cleanup(%struct.arm_ccn* %0) #0 {
  %2 = alloca %struct.arm_ccn*, align 8
  %3 = alloca i32, align 4
  store %struct.arm_ccn* %0, %struct.arm_ccn** %2, align 8
  %4 = load i32, i32* @CPUHP_AP_PERF_ARM_CCN_ONLINE, align 4
  %5 = load %struct.arm_ccn*, %struct.arm_ccn** %2, align 8
  %6 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %8 = call i32 @cpuhp_state_remove_instance_nocalls(i32 %4, i32* %7)
  %9 = load %struct.arm_ccn*, %struct.arm_ccn** %2, align 8
  %10 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.arm_ccn*, %struct.arm_ccn** %2, align 8
  %15 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @irq_set_affinity_hint(i64 %16, i32* null)
  br label %18

18:                                               ; preds = %13, %1
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.arm_ccn*, %struct.arm_ccn** %2, align 8
  %22 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.arm_ccn*, %struct.arm_ccn** %2, align 8
  %27 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CCN_XP_DT_CONTROL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 0, i64 %35)
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %19

40:                                               ; preds = %19
  %41 = load %struct.arm_ccn*, %struct.arm_ccn** %2, align 8
  %42 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CCN_DT_PMCR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 0, i64 %46)
  %48 = load %struct.arm_ccn*, %struct.arm_ccn** %2, align 8
  %49 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = call i32 @perf_pmu_unregister(i32* %50)
  %52 = load %struct.arm_ccn*, %struct.arm_ccn** %2, align 8
  %53 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ida_simple_remove(i32* @arm_ccn_pmu_ida, i32 %55)
  ret void
}

declare dso_local i32 @cpuhp_state_remove_instance_nocalls(i32, i32*) #1

declare dso_local i32 @irq_set_affinity_hint(i64, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @perf_pmu_unregister(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
