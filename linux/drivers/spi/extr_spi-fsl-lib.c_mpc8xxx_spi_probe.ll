; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lib.c_mpc8xxx_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lib.c_mpc8xxx_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.fsl_spi_platform_data = type { i32, i32, i32, i32 }
%struct.spi_master = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mpc8xxx_spi = type { i32, i32, i64, i64, i32, i32, i32, i32, %struct.device* }

@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@mpc8xxx_spi_rx_buf_u8 = common dso_local global i32 0, align 4
@mpc8xxx_spi_tx_buf_u8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc8xxx_spi_probe(%struct.device* %0, %struct.resource* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_spi_platform_data*, align 8
  %8 = alloca %struct.spi_master*, align 8
  %9 = alloca %struct.mpc8xxx_spi*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.fsl_spi_platform_data* @dev_get_platdata(%struct.device* %10)
  store %struct.fsl_spi_platform_data* %11, %struct.fsl_spi_platform_data** %7, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.spi_master* @dev_get_drvdata(%struct.device* %12)
  store %struct.spi_master* %13, %struct.spi_master** %8, align 8
  %14 = load i32, i32* @SPI_CPOL, align 4
  %15 = load i32, i32* @SPI_CPHA, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SPI_CS_HIGH, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SPI_LSB_FIRST, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SPI_LOOP, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %24 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %29 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %32 = call %struct.mpc8xxx_spi* @spi_master_get_devdata(%struct.spi_master* %31)
  store %struct.mpc8xxx_spi* %32, %struct.mpc8xxx_spi** %9, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %9, align 8
  %35 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %34, i32 0, i32 8
  store %struct.device* %33, %struct.device** %35, align 8
  %36 = load i32, i32* @mpc8xxx_spi_rx_buf_u8, align 4
  %37 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %9, align 8
  %38 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @mpc8xxx_spi_tx_buf_u8, align 4
  %40 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %9, align 8
  %41 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %7, align 8
  %43 = getelementptr inbounds %struct.fsl_spi_platform_data, %struct.fsl_spi_platform_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %9, align 8
  %46 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %7, align 8
  %48 = getelementptr inbounds %struct.fsl_spi_platform_data, %struct.fsl_spi_platform_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %9, align 8
  %51 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %9, align 8
  %54 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %9, align 8
  %56 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %9, align 8
  %58 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %7, align 8
  %60 = getelementptr inbounds %struct.fsl_spi_platform_data, %struct.fsl_spi_platform_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %63 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %7, align 8
  %65 = getelementptr inbounds %struct.fsl_spi_platform_data, %struct.fsl_spi_platform_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %68 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %9, align 8
  %70 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %69, i32 0, i32 1
  %71 = call i32 @init_completion(i32* %70)
  ret void
}

declare dso_local %struct.fsl_spi_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.spi_master* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.mpc8xxx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
