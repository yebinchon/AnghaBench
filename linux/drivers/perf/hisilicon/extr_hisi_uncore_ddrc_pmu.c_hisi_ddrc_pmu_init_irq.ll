; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_ddrc_pmu.c_hisi_ddrc_pmu_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_ddrc_pmu.c_hisi_ddrc_pmu_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_pmu = type { i32 }
%struct.platform_device = type { i32 }

@hisi_ddrc_pmu_isr = common dso_local global i32 0, align 4
@IRQF_NOBALANCING = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Fail to request IRQ:%d ret:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_pmu*, %struct.platform_device*)* @hisi_ddrc_pmu_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_ddrc_pmu_init_irq(%struct.hisi_pmu* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_pmu*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hisi_pmu* %0, %struct.hisi_pmu** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %9 = call i32 @platform_get_irq(%struct.platform_device* %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @hisi_ddrc_pmu_isr, align 4
  %19 = load i32, i32* @IRQF_NOBALANCING, align 4
  %20 = load i32, i32* @IRQF_NO_THREAD, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @dev_name(i32* %23)
  %25 = load %struct.hisi_pmu*, %struct.hisi_pmu** %4, align 8
  %26 = call i32 @devm_request_irq(i32* %16, i32 %17, i32 %18, i32 %21, i32 %24, %struct.hisi_pmu* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %14
  %30 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %14
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.hisi_pmu*, %struct.hisi_pmu** %4, align 8
  %39 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %29, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.hisi_pmu*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
