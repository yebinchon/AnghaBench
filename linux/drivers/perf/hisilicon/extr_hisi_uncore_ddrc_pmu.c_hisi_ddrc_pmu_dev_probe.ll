; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_ddrc_pmu.c_hisi_ddrc_pmu_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_ddrc_pmu.c_hisi_ddrc_pmu_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hisi_pmu = type { i32, i32, i32, i32*, i32*, i32 }

@DDRC_NR_COUNTERS = common dso_local global i32 0, align 4
@hisi_uncore_ddrc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.hisi_pmu*)* @hisi_ddrc_pmu_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_ddrc_pmu_dev_probe(%struct.platform_device* %0, %struct.hisi_pmu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.hisi_pmu*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.hisi_pmu* %1, %struct.hisi_pmu** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %9 = call i32 @hisi_ddrc_pmu_init_data(%struct.platform_device* %7, %struct.hisi_pmu* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %17 = call i32 @hisi_ddrc_pmu_init_irq(%struct.hisi_pmu* %15, %struct.platform_device* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %38

22:                                               ; preds = %14
  %23 = load i32, i32* @DDRC_NR_COUNTERS, align 4
  %24 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %25 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %27 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %26, i32 0, i32 0
  store i32 32, i32* %27, align 8
  %28 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %29 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %28, i32 0, i32 4
  store i32* @hisi_uncore_ddrc_ops, i32** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %33 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  %34 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %35 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %34, i32 0, i32 1
  store i32 -1, i32* %35, align 4
  %36 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %37 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %36, i32 0, i32 2
  store i32 7, i32* %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %22, %20, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @hisi_ddrc_pmu_init_data(%struct.platform_device*, %struct.hisi_pmu*) #1

declare dso_local i32 @hisi_ddrc_pmu_init_irq(%struct.hisi_pmu*, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
