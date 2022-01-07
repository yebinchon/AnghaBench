; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_setup_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_setup_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smmu_pmu = type { i32, i64, %struct.device* }
%struct.device = type { i32 }
%struct.msi_desc = type { i32 }

@SMMU_PMCG_IRQ_CFG0 = common dso_local global i64 0, align 8
@SMMU_PMCG_CFGR = common dso_local global i64 0, align 8
@SMMU_PMCG_CFGR_MSI = common dso_local global i32 0, align 4
@smmu_pmu_write_msi_msg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to allocate MSIs\0A\00", align 1
@smmu_pmu_free_msis = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smmu_pmu*)* @smmu_pmu_setup_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smmu_pmu_setup_msi(%struct.smmu_pmu* %0) #0 {
  %2 = alloca %struct.smmu_pmu*, align 8
  %3 = alloca %struct.msi_desc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.smmu_pmu* %0, %struct.smmu_pmu** %2, align 8
  %6 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %7 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %6, i32 0, i32 2
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %10 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SMMU_PMCG_IRQ_CFG0, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writeq_relaxed(i32 0, i64 %13)
  %15 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %16 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SMMU_PMCG_CFGR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  %21 = load i32, i32* @SMMU_PMCG_CFGR_MSI, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %50

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* @smmu_pmu_write_msi_msg, align 4
  %28 = call i32 @platform_msi_domain_alloc_irqs(%struct.device* %26, i32 1, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @dev_warn(%struct.device* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %50

34:                                               ; preds = %25
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call %struct.msi_desc* @first_msi_entry(%struct.device* %35)
  store %struct.msi_desc* %36, %struct.msi_desc** %3, align 8
  %37 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %38 = icmp ne %struct.msi_desc* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %41 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %44 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* @smmu_pmu_free_msis, align 4
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @devm_add_action(%struct.device* %46, i32 %47, %struct.device* %48)
  br label %50

50:                                               ; preds = %45, %31, %24
  ret void
}

declare dso_local i32 @writeq_relaxed(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @platform_msi_domain_alloc_irqs(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local %struct.msi_desc* @first_msi_entry(%struct.device*) #1

declare dso_local i32 @devm_add_action(%struct.device*, i32, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
