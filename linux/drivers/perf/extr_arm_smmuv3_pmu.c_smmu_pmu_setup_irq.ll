; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smmu_pmu = type { i32, i32 }

@IRQF_NOBALANCING = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@IRQF_NO_THREAD = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@smmu_pmu_handle_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"smmuv3-pmu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smmu_pmu*)* @smmu_pmu_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smmu_pmu_setup_irq(%struct.smmu_pmu* %0) #0 {
  %2 = alloca %struct.smmu_pmu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.smmu_pmu* %0, %struct.smmu_pmu** %2, align 8
  %6 = load i64, i64* @IRQF_NOBALANCING, align 8
  %7 = load i64, i64* @IRQF_SHARED, align 8
  %8 = or i64 %6, %7
  %9 = load i64, i64* @IRQF_NO_THREAD, align 8
  %10 = or i64 %8, %9
  store i64 %10, i64* %3, align 8
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %14 = call i32 @smmu_pmu_setup_msi(%struct.smmu_pmu* %13)
  %15 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %16 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %22 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @smmu_pmu_handle_irq, align 4
  %26 = load i64, i64* %3, align 8
  %27 = load %struct.smmu_pmu*, %struct.smmu_pmu** %2, align 8
  %28 = call i32 @devm_request_irq(i32 %23, i32 %24, i32 %25, i64 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.smmu_pmu* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %20, %1
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @smmu_pmu_setup_msi(%struct.smmu_pmu*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i64, i8*, %struct.smmu_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
