; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cadence.c_cdns_spi_config_clock_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cadence.c_cdns_spi_config_clock_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64 }
%struct.cdns_spi = type { i64, i32 }

@CDNS_SPI_CR = common dso_local global i32 0, align 4
@CDNS_SPI_BAUD_DIV_MIN = common dso_local global i32 0, align 4
@CDNS_SPI_BAUD_DIV_MAX = common dso_local global i32 0, align 4
@CDNS_SPI_CR_BAUD_DIV = common dso_local global i32 0, align 4
@CDNS_SPI_BAUD_DIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.spi_transfer*)* @cdns_spi_config_clock_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_spi_config_clock_freq(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.cdns_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.cdns_spi* @spi_master_get_devdata(i32 %11)
  store %struct.cdns_spi* %12, %struct.cdns_spi** %5, align 8
  %13 = load %struct.cdns_spi*, %struct.cdns_spi** %5, align 8
  %14 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @clk_get_rate(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.cdns_spi*, %struct.cdns_spi** %5, align 8
  %18 = load i32, i32* @CDNS_SPI_CR, align 4
  %19 = call i32 @cdns_spi_read(%struct.cdns_spi* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.cdns_spi*, %struct.cdns_spi** %5, align 8
  %21 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %2
  %28 = load i32, i32* @CDNS_SPI_BAUD_DIV_MIN, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %45, %27
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @CDNS_SPI_BAUD_DIV_MAX, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 2, %35
  %37 = sext i32 %36 to i64
  %38 = udiv i64 %34, %37
  %39 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %40 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %38, %41
  br label %43

43:                                               ; preds = %33, %29
  %44 = phi i1 [ false, %29 ], [ %42, %33 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %29

48:                                               ; preds = %43
  %49 = load i32, i32* @CDNS_SPI_CR_BAUD_DIV, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @CDNS_SPI_BAUD_DIV_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 2, %59
  %61 = sext i32 %60 to i64
  %62 = udiv i64 %58, %61
  %63 = load %struct.cdns_spi*, %struct.cdns_spi** %5, align 8
  %64 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %48, %2
  %66 = load %struct.cdns_spi*, %struct.cdns_spi** %5, align 8
  %67 = load i32, i32* @CDNS_SPI_CR, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @cdns_spi_write(%struct.cdns_spi* %66, i32 %67, i32 %68)
  ret void
}

declare dso_local %struct.cdns_spi* @spi_master_get_devdata(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @cdns_spi_read(%struct.cdns_spi*, i32) #1

declare dso_local i32 @cdns_spi_write(%struct.cdns_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
