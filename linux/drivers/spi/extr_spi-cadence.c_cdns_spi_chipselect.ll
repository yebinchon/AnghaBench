; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cadence.c_cdns_spi_chipselect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cadence.c_cdns_spi_chipselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.cdns_spi = type { i32 }

@CDNS_SPI_CR = common dso_local global i32 0, align 4
@CDNS_SPI_CR_SSCTRL = common dso_local global i32 0, align 4
@CDNS_SPI_SS0 = common dso_local global i32 0, align 4
@CDNS_SPI_SS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @cdns_spi_chipselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_spi_chipselect(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdns_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.cdns_spi* @spi_master_get_devdata(i32 %9)
  store %struct.cdns_spi* %10, %struct.cdns_spi** %5, align 8
  %11 = load %struct.cdns_spi*, %struct.cdns_spi** %5, align 8
  %12 = load i32, i32* @CDNS_SPI_CR, align 4
  %13 = call i32 @cdns_spi_read(%struct.cdns_spi* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @CDNS_SPI_CR_SSCTRL, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %53

20:                                               ; preds = %2
  %21 = load i32, i32* @CDNS_SPI_CR_SSCTRL, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load %struct.cdns_spi*, %struct.cdns_spi** %5, align 8
  %26 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @CDNS_SPI_SS0, align 4
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %30, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* @CDNS_SPI_SS_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @CDNS_SPI_CR_SSCTRL, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %52

42:                                               ; preds = %20
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CDNS_SPI_SS_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* @CDNS_SPI_CR_SSCTRL, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %42, %29
  br label %53

53:                                               ; preds = %52, %16
  %54 = load %struct.cdns_spi*, %struct.cdns_spi** %5, align 8
  %55 = load i32, i32* @CDNS_SPI_CR, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @cdns_spi_write(%struct.cdns_spi* %54, i32 %55, i32 %56)
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
