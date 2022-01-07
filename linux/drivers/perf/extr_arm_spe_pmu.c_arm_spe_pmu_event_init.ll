; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, %struct.TYPE_2__*, %struct.perf_event_attr }
%struct.TYPE_2__ = type { i64 }
%struct.perf_event_attr = type { i64, i64, i64 }
%struct.arm_spe_pmu = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@SYS_PMSEVFR_EL1_RES0 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SYS_PMSFCR_EL1_FE_SHIFT = common dso_local global i32 0, align 4
@SPE_PMU_FEAT_FILT_EVT = common dso_local global i32 0, align 4
@SYS_PMSFCR_EL1_FT_SHIFT = common dso_local global i32 0, align 4
@SPE_PMU_FEAT_FILT_TYP = common dso_local global i32 0, align 4
@SYS_PMSFCR_EL1_FL_SHIFT = common dso_local global i32 0, align 4
@SPE_PMU_FEAT_FILT_LAT = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@SYS_PMSCR_EL1_PA_SHIFT = common dso_local global i32 0, align 4
@SYS_PMSCR_EL1_CX_SHIFT = common dso_local global i32 0, align 4
@SYS_PMSCR_EL1_PCT_SHIFT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @arm_spe_pmu_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_spe_pmu_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event_attr*, align 8
  %6 = alloca %struct.arm_spe_pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 2
  store %struct.perf_event_attr* %8, %struct.perf_event_attr** %5, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call %struct.arm_spe_pmu* @to_spe_pmu(%struct.TYPE_2__* %11)
  store %struct.arm_spe_pmu* %12, %struct.arm_spe_pmu** %6, align 8
  %13 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %14 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %15, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %138

25:                                               ; preds = %1
  %26 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %6, align 8
  %35 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %34, i32 0, i32 1
  %36 = call i32 @cpumask_test_cpu(i64 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %138

41:                                               ; preds = %30, %25
  %42 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %43 = call i32 @arm_spe_event_to_pmsevfr(%struct.perf_event* %42)
  %44 = load i32, i32* @SYS_PMSEVFR_EL1_RES0, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %138

50:                                               ; preds = %41
  %51 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %52 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %138

58:                                               ; preds = %50
  %59 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %60 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %138

66:                                               ; preds = %58
  %67 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %68 = call i32 @arm_spe_event_to_pmsfcr(%struct.perf_event* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @SYS_PMSFCR_EL1_FE_SHIFT, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %6, align 8
  %76 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SPE_PMU_FEAT_FILT_EVT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @EOPNOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %138

84:                                               ; preds = %74, %66
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @SYS_PMSFCR_EL1_FT_SHIFT, align 4
  %87 = call i32 @BIT(i32 %86)
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %6, align 8
  %92 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SPE_PMU_FEAT_FILT_TYP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @EOPNOTSUPP, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %138

100:                                              ; preds = %90, %84
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @SYS_PMSFCR_EL1_FL_SHIFT, align 4
  %103 = call i32 @BIT(i32 %102)
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %6, align 8
  %108 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SPE_PMU_FEAT_FILT_LAT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @EOPNOTSUPP, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %138

116:                                              ; preds = %106, %100
  %117 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %118 = call i32 @arm_spe_event_to_pmscr(%struct.perf_event* %117)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %120 = call i32 @capable(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %137, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @SYS_PMSCR_EL1_PA_SHIFT, align 4
  %125 = call i32 @BIT(i32 %124)
  %126 = load i32, i32* @SYS_PMSCR_EL1_CX_SHIFT, align 4
  %127 = call i32 @BIT(i32 %126)
  %128 = or i32 %125, %127
  %129 = load i32, i32* @SYS_PMSCR_EL1_PCT_SHIFT, align 4
  %130 = call i32 @BIT(i32 %129)
  %131 = or i32 %128, %130
  %132 = and i32 %123, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %122
  %135 = load i32, i32* @EACCES, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %138

137:                                              ; preds = %122, %116
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %134, %113, %97, %81, %63, %55, %47, %38, %22
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.arm_spe_pmu* @to_spe_pmu(%struct.TYPE_2__*) #1

declare dso_local i32 @cpumask_test_cpu(i64, i32*) #1

declare dso_local i32 @arm_spe_event_to_pmsevfr(%struct.perf_event*) #1

declare dso_local i32 @arm_spe_event_to_pmsfcr(%struct.perf_event*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @arm_spe_event_to_pmscr(%struct.perf_event*) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
