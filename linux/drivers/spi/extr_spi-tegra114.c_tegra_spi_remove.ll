; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i32 }
%struct.tegra_spi_data = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_spi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.tegra_spi_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.spi_master* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.spi_master* %6, %struct.spi_master** %3, align 8
  %7 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %8 = call %struct.tegra_spi_data* @spi_master_get_devdata(%struct.spi_master* %7)
  store %struct.tegra_spi_data* %8, %struct.tegra_spi_data** %4, align 8
  %9 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.tegra_spi_data* %12)
  %14 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %20 = call i32 @tegra_spi_deinit_dma_param(%struct.tegra_spi_data* %19, i32 0)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %28 = call i32 @tegra_spi_deinit_dma_param(%struct.tegra_spi_data* %27, i32 1)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @pm_runtime_disable(i32* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @pm_runtime_status_suspended(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @tegra_spi_runtime_suspend(i32* %39)
  br label %41

41:                                               ; preds = %37, %29
  ret i32 0
}

declare dso_local %struct.spi_master* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.tegra_spi_data* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @free_irq(i32, %struct.tegra_spi_data*) #1

declare dso_local i32 @tegra_spi_deinit_dma_param(%struct.tegra_spi_data*, i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_status_suspended(i32*) #1

declare dso_local i32 @tegra_spi_runtime_suspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
