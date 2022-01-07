; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_prepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_message = type { %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.bcm2835aux_spi = type { i32* }

@BCM2835_AUX_SPI_CNTL0_ENABLE = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_CNTL0_VAR_WIDTH = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_CNTL0_MSBF_OUT = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_CNTL1_MSBF_IN = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_CNTL0_CPOL = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_CNTL0_OUT_RISING = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_CNTL0_IN_RISING = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_CNTL1 = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_CNTL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_message*)* @bcm2835aux_spi_prepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835aux_spi_prepare_message(%struct.spi_master* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.bcm2835aux_spi*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %7 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %8 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %7, i32 0, i32 0
  %9 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  store %struct.spi_device* %9, %struct.spi_device** %5, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %11 = call %struct.bcm2835aux_spi* @spi_master_get_devdata(%struct.spi_master* %10)
  store %struct.bcm2835aux_spi* %11, %struct.bcm2835aux_spi** %6, align 8
  %12 = load i32, i32* @BCM2835_AUX_SPI_CNTL0_ENABLE, align 4
  %13 = load i32, i32* @BCM2835_AUX_SPI_CNTL0_VAR_WIDTH, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @BCM2835_AUX_SPI_CNTL0_MSBF_OUT, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %6, align 8
  %18 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @BCM2835_AUX_SPI_CNTL1_MSBF_IN, align 4
  %22 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %6, align 8
  %23 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SPI_CPOL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %2
  %33 = load i32, i32* @BCM2835_AUX_SPI_CNTL0_CPOL, align 4
  %34 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %6, align 8
  %35 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %33
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @BCM2835_AUX_SPI_CNTL0_OUT_RISING, align 4
  %41 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %6, align 8
  %42 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %40
  store i32 %46, i32* %44, align 4
  br label %55

47:                                               ; preds = %2
  %48 = load i32, i32* @BCM2835_AUX_SPI_CNTL0_IN_RISING, align 4
  %49 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %6, align 8
  %50 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %48
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %47, %32
  %56 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %6, align 8
  %57 = load i32, i32* @BCM2835_AUX_SPI_CNTL1, align 4
  %58 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %6, align 8
  %59 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bcm2835aux_wr(%struct.bcm2835aux_spi* %56, i32 %57, i32 %62)
  %64 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %6, align 8
  %65 = load i32, i32* @BCM2835_AUX_SPI_CNTL0, align 4
  %66 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %6, align 8
  %67 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bcm2835aux_wr(%struct.bcm2835aux_spi* %64, i32 %65, i32 %70)
  ret i32 0
}

declare dso_local %struct.bcm2835aux_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @bcm2835aux_wr(%struct.bcm2835aux_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
