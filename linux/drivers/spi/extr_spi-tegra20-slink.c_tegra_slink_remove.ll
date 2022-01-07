; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i32 }
%struct.tegra_slink_data = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_slink_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_slink_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.tegra_slink_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.spi_master* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.spi_master* %6, %struct.spi_master** %3, align 8
  %7 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %8 = call %struct.tegra_slink_data* @spi_master_get_devdata(%struct.spi_master* %7)
  store %struct.tegra_slink_data* %8, %struct.tegra_slink_data** %4, align 8
  %9 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.tegra_slink_data* %12)
  %14 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_disable(i32 %16)
  %18 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %19 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %24 = call i32 @tegra_slink_deinit_dma_param(%struct.tegra_slink_data* %23, i32 0)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %32 = call i32 @tegra_slink_deinit_dma_param(%struct.tegra_slink_data* %31, i32 1)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @pm_runtime_disable(i32* %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @pm_runtime_status_suspended(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @tegra_slink_runtime_suspend(i32* %43)
  br label %45

45:                                               ; preds = %41, %33
  ret i32 0
}

declare dso_local %struct.spi_master* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.tegra_slink_data* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @free_irq(i32, %struct.tegra_slink_data*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @tegra_slink_deinit_dma_param(%struct.tegra_slink_data*, i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_status_suspended(i32*) #1

declare dso_local i32 @tegra_slink_runtime_suspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
