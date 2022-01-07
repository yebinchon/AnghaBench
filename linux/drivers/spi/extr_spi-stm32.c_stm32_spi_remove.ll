; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i64, i64 }
%struct.stm32_spi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.stm32_spi*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.stm32_spi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.spi_master* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.spi_master* %6, %struct.spi_master** %3, align 8
  %7 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %8 = call %struct.stm32_spi* @spi_master_get_devdata(%struct.spi_master* %7)
  store %struct.stm32_spi* %8, %struct.stm32_spi** %4, align 8
  %9 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %10 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.stm32_spi*)*, i32 (%struct.stm32_spi*)** %12, align 8
  %14 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %15 = call i32 %13(%struct.stm32_spi* %14)
  %16 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %17 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %22 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dma_release_channel(i64 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %27 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %32 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dma_release_channel(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %37 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @clk_disable_unprepare(i32 %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @pm_runtime_disable(i32* %41)
  ret i32 0
}

declare dso_local %struct.spi_master* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.stm32_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
