; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_spe_pmu = type { i32, i32, i32, i32, i32 }

@__arm_spe_pmu_dev_probe = common dso_local global i32 0, align 4
@SPE_PMU_FEAT_DEV_PROBED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@arm_spe_pmu_irq_handler = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@arm_spe_pmu_online = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_spe_pmu*)* @arm_spe_pmu_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_spe_pmu_dev_init(%struct.arm_spe_pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_spe_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.arm_spe_pmu* %0, %struct.arm_spe_pmu** %3, align 8
  %6 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %3, align 8
  %7 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %6, i32 0, i32 4
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* @__arm_spe_pmu_dev_probe, align 4
  %10 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %3, align 8
  %11 = call i32 @smp_call_function_any(i32* %8, i32 %9, %struct.arm_spe_pmu* %10, i32 1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %3, align 8
  %16 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SPE_PMU_FEAT_DEV_PROBED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14, %1
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %55

24:                                               ; preds = %14
  %25 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %3, align 8
  %26 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @arm_spe_pmu_irq_handler, align 4
  %29 = load i32, i32* @DRVNAME, align 4
  %30 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %3, align 8
  %31 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @request_percpu_irq(i32 %27, i32 %28, i32 %29, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %55

38:                                               ; preds = %24
  %39 = load i32, i32* @arm_spe_pmu_online, align 4
  %40 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %3, align 8
  %41 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %40, i32 0, i32 3
  %42 = call i32 @cpuhp_state_add_instance(i32 %39, i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %3, align 8
  %47 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %3, align 8
  %50 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @free_percpu_irq(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %45, %38
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %36, %21
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @smp_call_function_any(i32*, i32, %struct.arm_spe_pmu*, i32) #1

declare dso_local i32 @request_percpu_irq(i32, i32, i32, i32) #1

declare dso_local i32 @cpuhp_state_add_instance(i32, i32*) #1

declare dso_local i32 @free_percpu_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
