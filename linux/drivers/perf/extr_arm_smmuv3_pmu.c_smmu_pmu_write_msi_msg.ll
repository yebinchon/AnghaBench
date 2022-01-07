; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_write_msi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_write_msi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_desc = type { i32 }
%struct.msi_msg = type { i32, i32, i64 }
%struct.device = type { i32 }
%struct.smmu_pmu = type { i64 }

@MSI_CFG0_ADDR_MASK = common dso_local global i32 0, align 4
@SMMU_PMCG_IRQ_CFG0 = common dso_local global i64 0, align 8
@SMMU_PMCG_IRQ_CFG1 = common dso_local global i64 0, align 8
@MSI_CFG2_MEMATTR_DEVICE_nGnRE = common dso_local global i32 0, align 4
@SMMU_PMCG_IRQ_CFG2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msi_desc*, %struct.msi_msg*)* @smmu_pmu_write_msi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smmu_pmu_write_msi_msg(%struct.msi_desc* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.msi_desc*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.smmu_pmu*, align 8
  store %struct.msi_desc* %0, %struct.msi_desc** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %8 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %9 = call %struct.device* @msi_desc_to_dev(%struct.msi_desc* %8)
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = call %struct.smmu_pmu* @dev_get_drvdata(%struct.device* %10)
  store %struct.smmu_pmu* %11, %struct.smmu_pmu** %7, align 8
  %12 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %13 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = shl i32 %15, 32
  %17 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %18 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %16, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @MSI_CFG0_ADDR_MASK, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.smmu_pmu*, %struct.smmu_pmu** %7, align 8
  %26 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SMMU_PMCG_IRQ_CFG0, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writeq_relaxed(i32 %24, i64 %29)
  %31 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %32 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.smmu_pmu*, %struct.smmu_pmu** %7, align 8
  %35 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SMMU_PMCG_IRQ_CFG1, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel_relaxed(i32 %33, i64 %38)
  %40 = load i32, i32* @MSI_CFG2_MEMATTR_DEVICE_nGnRE, align 4
  %41 = load %struct.smmu_pmu*, %struct.smmu_pmu** %7, align 8
  %42 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SMMU_PMCG_IRQ_CFG2, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel_relaxed(i32 %40, i64 %45)
  ret void
}

declare dso_local %struct.device* @msi_desc_to_dev(%struct.msi_desc*) #1

declare dso_local %struct.smmu_pmu* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @writeq_relaxed(i32, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
