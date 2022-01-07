; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_event_to_pmsfcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_event_to_pmsfcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32 }

@load_filter = common dso_local global i32 0, align 4
@SYS_PMSFCR_EL1_LD_SHIFT = common dso_local global i32 0, align 4
@store_filter = common dso_local global i32 0, align 4
@SYS_PMSFCR_EL1_ST_SHIFT = common dso_local global i32 0, align 4
@branch_filter = common dso_local global i32 0, align 4
@SYS_PMSFCR_EL1_B_SHIFT = common dso_local global i32 0, align 4
@SYS_PMSFCR_EL1_FT_SHIFT = common dso_local global i32 0, align 4
@event_filter = common dso_local global i32 0, align 4
@SYS_PMSFCR_EL1_FE_SHIFT = common dso_local global i32 0, align 4
@min_latency = common dso_local global i32 0, align 4
@SYS_PMSFCR_EL1_FL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @arm_spe_event_to_pmsfcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_spe_event_to_pmsfcr(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.perf_event_attr*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  store %struct.perf_event_attr* %6, %struct.perf_event_attr** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %8 = load i32, i32* @load_filter, align 4
  %9 = call i32 @ATTR_CFG_GET_FLD(%struct.perf_event_attr* %7, i32 %8)
  %10 = load i32, i32* @SYS_PMSFCR_EL1_LD_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %15 = load i32, i32* @store_filter, align 4
  %16 = call i32 @ATTR_CFG_GET_FLD(%struct.perf_event_attr* %14, i32 %15)
  %17 = load i32, i32* @SYS_PMSFCR_EL1_ST_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %22 = load i32, i32* @branch_filter, align 4
  %23 = call i32 @ATTR_CFG_GET_FLD(%struct.perf_event_attr* %21, i32 %22)
  %24 = load i32, i32* @SYS_PMSFCR_EL1_B_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load i32, i32* @SYS_PMSFCR_EL1_FT_SHIFT, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %37 = load i32, i32* @event_filter, align 4
  %38 = call i32 @ATTR_CFG_GET_FLD(%struct.perf_event_attr* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* @SYS_PMSFCR_EL1_FE_SHIFT, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %47 = load i32, i32* @min_latency, align 4
  %48 = call i32 @ATTR_CFG_GET_FLD(%struct.perf_event_attr* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* @SYS_PMSFCR_EL1_FL_SHIFT, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @ATTR_CFG_GET_FLD(%struct.perf_event_attr*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
