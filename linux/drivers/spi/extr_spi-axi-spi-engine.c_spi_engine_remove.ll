; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-axi-spi-engine.c_spi_engine_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-axi-spi-engine.c_spi_engine_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i32 }
%struct.spi_engine = type { i32, i32, i64 }

@SPI_ENGINE_REG_INT_PENDING = common dso_local global i64 0, align 8
@SPI_ENGINE_REG_INT_ENABLE = common dso_local global i64 0, align 8
@SPI_ENGINE_REG_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spi_engine_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_engine_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_engine*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call i32 @platform_get_drvdata(%struct.platform_device* %6)
  %8 = call %struct.spi_master* @spi_master_get(i32 %7)
  store %struct.spi_master* %8, %struct.spi_master** %3, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %10 = call %struct.spi_engine* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.spi_engine* %10, %struct.spi_engine** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = call i32 @platform_get_irq(%struct.platform_device* %11, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %14 = call i32 @spi_unregister_master(%struct.spi_master* %13)
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.spi_master* %16)
  %18 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %19 = call i32 @spi_master_put(%struct.spi_master* %18)
  %20 = load %struct.spi_engine*, %struct.spi_engine** %4, align 8
  %21 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SPI_ENGINE_REG_INT_PENDING, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel_relaxed(i32 255, i64 %24)
  %26 = load %struct.spi_engine*, %struct.spi_engine** %4, align 8
  %27 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SPI_ENGINE_REG_INT_ENABLE, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel_relaxed(i32 0, i64 %30)
  %32 = load %struct.spi_engine*, %struct.spi_engine** %4, align 8
  %33 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SPI_ENGINE_REG_RESET, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel_relaxed(i32 1, i64 %36)
  %38 = load %struct.spi_engine*, %struct.spi_engine** %4, align 8
  %39 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_disable_unprepare(i32 %40)
  %42 = load %struct.spi_engine*, %struct.spi_engine** %4, align 8
  %43 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @clk_disable_unprepare(i32 %44)
  ret i32 0
}

declare dso_local %struct.spi_master* @spi_master_get(i32) #1

declare dso_local i32 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.spi_engine* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @spi_unregister_master(%struct.spi_master*) #1

declare dso_local i32 @free_irq(i32, %struct.spi_master*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
