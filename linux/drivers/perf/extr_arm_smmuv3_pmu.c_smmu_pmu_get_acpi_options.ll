; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_get_acpi_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_get_acpi_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smmu_pmu = type { i32, i32 }

@SMMU_PMCG_EVCNTR_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"option mask 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smmu_pmu*)* @smmu_pmu_get_acpi_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smmu_pmu_get_acpi_options(%struct.smmu_pmu* %0) #0 {
  %2 = alloca %struct.smmu_pmu*, align 8
  %3 = alloca i32, align 4
  store %struct.smmu_pmu* %0, %struct.smmu_pmu** %2, align 8
  %4 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %5 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @dev_get_platdata(i32 %6)
  %8 = inttoptr i64 %7 to i32*
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %17 [
    i32 128, label %11
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @SMMU_PMCG_EVCNTR_RDONLY, align 4
  %13 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %14 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %1, %11
  %18 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %19 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %22 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_notice(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %23)
  ret void
}

declare dso_local i64 @dev_get_platdata(i32) #1

declare dso_local i32 @dev_notice(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
