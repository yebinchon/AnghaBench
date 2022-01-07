; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xtensa-xtfpga.c_xtfpga_spi_txrx_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xtensa-xtfpga.c_xtfpga_spi_txrx_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.xtfpga_spi = type { i32, i32 }

@XTFPGA_SPI_DATA = common dso_local global i32 0, align 4
@XTFPGA_SPI_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32, i32, i32, i32)* @xtfpga_spi_txrx_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xtfpga_spi_txrx_word(%struct.spi_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xtfpga_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.xtfpga_spi* @spi_master_get_devdata(i32 %14)
  store %struct.xtfpga_spi* %15, %struct.xtfpga_spi** %11, align 8
  %16 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %11, align 8
  %17 = getelementptr inbounds %struct.xtfpga_spi, %struct.xtfpga_spi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @GENMASK(i32 %23, i32 0)
  %25 = and i32 %21, %24
  %26 = or i32 %20, %25
  %27 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %11, align 8
  %28 = getelementptr inbounds %struct.xtfpga_spi, %struct.xtfpga_spi* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %11, align 8
  %31 = getelementptr inbounds %struct.xtfpga_spi, %struct.xtfpga_spi* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %11, align 8
  %35 = getelementptr inbounds %struct.xtfpga_spi, %struct.xtfpga_spi* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 16
  br i1 %37, label %38, label %62

38:                                               ; preds = %5
  %39 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %11, align 8
  %40 = load i32, i32* @XTFPGA_SPI_DATA, align 4
  %41 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %11, align 8
  %42 = getelementptr inbounds %struct.xtfpga_spi, %struct.xtfpga_spi* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %11, align 8
  %45 = getelementptr inbounds %struct.xtfpga_spi, %struct.xtfpga_spi* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 16
  %48 = ashr i32 %43, %47
  %49 = call i32 @xtfpga_spi_write32(%struct.xtfpga_spi* %39, i32 %40, i32 %48)
  %50 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %11, align 8
  %51 = getelementptr inbounds %struct.xtfpga_spi, %struct.xtfpga_spi* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 16
  store i32 %53, i32* %51, align 4
  %54 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %11, align 8
  %55 = load i32, i32* @XTFPGA_SPI_START, align 4
  %56 = call i32 @xtfpga_spi_write32(%struct.xtfpga_spi* %54, i32 %55, i32 1)
  %57 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %11, align 8
  %58 = call i32 @xtfpga_spi_wait_busy(%struct.xtfpga_spi* %57)
  %59 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %11, align 8
  %60 = load i32, i32* @XTFPGA_SPI_START, align 4
  %61 = call i32 @xtfpga_spi_write32(%struct.xtfpga_spi* %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %38, %5
  ret i32 0
}

declare dso_local %struct.xtfpga_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @xtfpga_spi_write32(%struct.xtfpga_spi*, i32, i32) #1

declare dso_local i32 @xtfpga_spi_wait_busy(%struct.xtfpga_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
