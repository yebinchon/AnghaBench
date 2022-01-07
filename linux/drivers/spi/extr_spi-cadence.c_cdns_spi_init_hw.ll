; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cadence.c_cdns_spi_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cadence.c_cdns_spi_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_spi = type { i64 }

@CDNS_SPI_CR_DEFAULT = common dso_local global i32 0, align 4
@CDNS_SPI_CR_PERI_SEL = common dso_local global i32 0, align 4
@CDNS_SPI_ER = common dso_local global i32 0, align 4
@CDNS_SPI_ER_DISABLE = common dso_local global i32 0, align 4
@CDNS_SPI_IDR = common dso_local global i32 0, align 4
@CDNS_SPI_IXR_ALL = common dso_local global i32 0, align 4
@CDNS_SPI_ISR = common dso_local global i32 0, align 4
@CDNS_SPI_IXR_RXNEMTY = common dso_local global i32 0, align 4
@CDNS_SPI_RXD = common dso_local global i32 0, align 4
@CDNS_SPI_CR = common dso_local global i32 0, align 4
@CDNS_SPI_ER_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_spi*)* @cdns_spi_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_spi_init_hw(%struct.cdns_spi* %0) #0 {
  %2 = alloca %struct.cdns_spi*, align 8
  %3 = alloca i32, align 4
  store %struct.cdns_spi* %0, %struct.cdns_spi** %2, align 8
  %4 = load i32, i32* @CDNS_SPI_CR_DEFAULT, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.cdns_spi*, %struct.cdns_spi** %2, align 8
  %6 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @CDNS_SPI_CR_PERI_SEL, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.cdns_spi*, %struct.cdns_spi** %2, align 8
  %15 = load i32, i32* @CDNS_SPI_ER, align 4
  %16 = load i32, i32* @CDNS_SPI_ER_DISABLE, align 4
  %17 = call i32 @cdns_spi_write(%struct.cdns_spi* %14, i32 %15, i32 %16)
  %18 = load %struct.cdns_spi*, %struct.cdns_spi** %2, align 8
  %19 = load i32, i32* @CDNS_SPI_IDR, align 4
  %20 = load i32, i32* @CDNS_SPI_IXR_ALL, align 4
  %21 = call i32 @cdns_spi_write(%struct.cdns_spi* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %29, %13
  %23 = load %struct.cdns_spi*, %struct.cdns_spi** %2, align 8
  %24 = load i32, i32* @CDNS_SPI_ISR, align 4
  %25 = call i32 @cdns_spi_read(%struct.cdns_spi* %23, i32 %24)
  %26 = load i32, i32* @CDNS_SPI_IXR_RXNEMTY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.cdns_spi*, %struct.cdns_spi** %2, align 8
  %31 = load i32, i32* @CDNS_SPI_RXD, align 4
  %32 = call i32 @cdns_spi_read(%struct.cdns_spi* %30, i32 %31)
  br label %22

33:                                               ; preds = %22
  %34 = load %struct.cdns_spi*, %struct.cdns_spi** %2, align 8
  %35 = load i32, i32* @CDNS_SPI_ISR, align 4
  %36 = load i32, i32* @CDNS_SPI_IXR_ALL, align 4
  %37 = call i32 @cdns_spi_write(%struct.cdns_spi* %34, i32 %35, i32 %36)
  %38 = load %struct.cdns_spi*, %struct.cdns_spi** %2, align 8
  %39 = load i32, i32* @CDNS_SPI_CR, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @cdns_spi_write(%struct.cdns_spi* %38, i32 %39, i32 %40)
  %42 = load %struct.cdns_spi*, %struct.cdns_spi** %2, align 8
  %43 = load i32, i32* @CDNS_SPI_ER, align 4
  %44 = load i32, i32* @CDNS_SPI_ER_ENABLE, align 4
  %45 = call i32 @cdns_spi_write(%struct.cdns_spi* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @cdns_spi_write(%struct.cdns_spi*, i32, i32) #1

declare dso_local i32 @cdns_spi_read(%struct.cdns_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
