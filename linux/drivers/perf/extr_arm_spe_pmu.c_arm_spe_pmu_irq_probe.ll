; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_irq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_irq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_spe_pmu = type { i32, i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed to get IRQ (%d)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"expected PPI but got SPI (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to get PPI partition (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_spe_pmu*)* @arm_spe_pmu_irq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_spe_pmu_irq_probe(%struct.arm_spe_pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_spe_pmu*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  store %struct.arm_spe_pmu* %0, %struct.arm_spe_pmu** %3, align 8
  %6 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %3, align 8
  %7 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %6, i32 0, i32 2
  %8 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  store %struct.platform_device* %8, %struct.platform_device** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = call i32 @platform_get_irq(%struct.platform_device* %9, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %48

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @irq_is_percpu(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %48

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %3, align 8
  %34 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %33, i32 0, i32 1
  %35 = call i64 @irq_get_percpu_devid_partition(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %48

44:                                               ; preds = %31
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %3, align 8
  %47 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %37, %24, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @irq_is_percpu(i32) #1

declare dso_local i64 @irq_get_percpu_devid_partition(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
