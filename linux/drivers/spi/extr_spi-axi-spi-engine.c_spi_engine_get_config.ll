; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-axi-spi-engine.c_spi_engine_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-axi-spi-engine.c_spi_engine_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_ENGINE_CONFIG_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_ENGINE_CONFIG_CPHA = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@SPI_ENGINE_CONFIG_3WIRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @spi_engine_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_engine_get_config(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SPI_CPOL, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @SPI_ENGINE_CONFIG_CPOL, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SPI_CPHA, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* @SPI_ENGINE_CONFIG_CPHA, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %14
  %26 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SPI_3WIRE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @SPI_ENGINE_CONFIG_3WIRE, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
