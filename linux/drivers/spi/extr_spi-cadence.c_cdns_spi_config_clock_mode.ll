; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cadence.c_cdns_spi_config_clock_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cadence.c_cdns_spi_config_clock_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.cdns_spi = type { i32 }

@CDNS_SPI_CR = common dso_local global i32 0, align 4
@CDNS_SPI_CR_CPHA = common dso_local global i32 0, align 4
@CDNS_SPI_CR_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@CDNS_SPI_ER = common dso_local global i32 0, align 4
@CDNS_SPI_ER_DISABLE = common dso_local global i32 0, align 4
@CDNS_SPI_ER_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @cdns_spi_config_clock_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_spi_config_clock_mode(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.cdns_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.cdns_spi* @spi_master_get_devdata(i32 %8)
  store %struct.cdns_spi* %9, %struct.cdns_spi** %3, align 8
  %10 = load %struct.cdns_spi*, %struct.cdns_spi** %3, align 8
  %11 = load i32, i32* @CDNS_SPI_CR, align 4
  %12 = call i32 @cdns_spi_read(%struct.cdns_spi* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @CDNS_SPI_CR_CPHA, align 4
  %15 = load i32, i32* @CDNS_SPI_CR_CPOL, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SPI_CPHA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @CDNS_SPI_CR_CPHA, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SPI_CPOL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @CDNS_SPI_CR_CPOL, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load %struct.cdns_spi*, %struct.cdns_spi** %3, align 8
  %47 = load i32, i32* @CDNS_SPI_ER, align 4
  %48 = load i32, i32* @CDNS_SPI_ER_DISABLE, align 4
  %49 = call i32 @cdns_spi_write(%struct.cdns_spi* %46, i32 %47, i32 %48)
  %50 = load %struct.cdns_spi*, %struct.cdns_spi** %3, align 8
  %51 = load i32, i32* @CDNS_SPI_CR, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @cdns_spi_write(%struct.cdns_spi* %50, i32 %51, i32 %52)
  %54 = load %struct.cdns_spi*, %struct.cdns_spi** %3, align 8
  %55 = load i32, i32* @CDNS_SPI_ER, align 4
  %56 = load i32, i32* @CDNS_SPI_ER_ENABLE, align 4
  %57 = call i32 @cdns_spi_write(%struct.cdns_spi* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %45, %41
  ret void
}

declare dso_local %struct.cdns_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @cdns_spi_read(%struct.cdns_spi*, i32) #1

declare dso_local i32 @cdns_spi_write(%struct.cdns_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
