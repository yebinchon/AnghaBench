; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_event_to_pmscr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_event_to_pmscr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32, i32 }

@ts_enable = common dso_local global i32 0, align 4
@SYS_PMSCR_EL1_TS_SHIFT = common dso_local global i32 0, align 4
@pa_enable = common dso_local global i32 0, align 4
@SYS_PMSCR_EL1_PA_SHIFT = common dso_local global i32 0, align 4
@pct_enable = common dso_local global i32 0, align 4
@SYS_PMSCR_EL1_PCT_SHIFT = common dso_local global i32 0, align 4
@SYS_PMSCR_EL1_E0SPE_SHIFT = common dso_local global i32 0, align 4
@SYS_PMSCR_EL1_E1SPE_SHIFT = common dso_local global i32 0, align 4
@CONFIG_PID_IN_CONTEXTIDR = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@SYS_PMSCR_EL1_CX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @arm_spe_event_to_pmscr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_spe_event_to_pmscr(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.perf_event_attr*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  store %struct.perf_event_attr* %6, %struct.perf_event_attr** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %8 = load i32, i32* @ts_enable, align 4
  %9 = call i32 @ATTR_CFG_GET_FLD(%struct.perf_event_attr* %7, i32 %8)
  %10 = load i32, i32* @SYS_PMSCR_EL1_TS_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %15 = load i32, i32* @pa_enable, align 4
  %16 = call i32 @ATTR_CFG_GET_FLD(%struct.perf_event_attr* %14, i32 %15)
  %17 = load i32, i32* @SYS_PMSCR_EL1_PA_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %22 = load i32, i32* @pct_enable, align 4
  %23 = call i32 @ATTR_CFG_GET_FLD(%struct.perf_event_attr* %21, i32 %22)
  %24 = load i32, i32* @SYS_PMSCR_EL1_PCT_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %29 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @SYS_PMSCR_EL1_E0SPE_SHIFT, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %32, %1
  %38 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %39 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @SYS_PMSCR_EL1_E1SPE_SHIFT, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* @CONFIG_PID_IN_CONTEXTIDR, align 4
  %49 = call i64 @IS_ENABLED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %53 = call i64 @capable(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* @SYS_PMSCR_EL1_CX_SHIFT, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %51, %47
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @ATTR_CFG_GET_FLD(%struct.perf_event_attr*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
