; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_reset_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835aux_spi = type { i32 }

@BCM2835_AUX_SPI_CNTL1 = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_CNTL0 = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_CNTL0_CLEARFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835aux_spi*)* @bcm2835aux_spi_reset_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835aux_spi_reset_hw(%struct.bcm2835aux_spi* %0) #0 {
  %2 = alloca %struct.bcm2835aux_spi*, align 8
  store %struct.bcm2835aux_spi* %0, %struct.bcm2835aux_spi** %2, align 8
  %3 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %2, align 8
  %4 = load i32, i32* @BCM2835_AUX_SPI_CNTL1, align 4
  %5 = call i32 @bcm2835aux_wr(%struct.bcm2835aux_spi* %3, i32 %4, i32 0)
  %6 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %2, align 8
  %7 = load i32, i32* @BCM2835_AUX_SPI_CNTL0, align 4
  %8 = load i32, i32* @BCM2835_AUX_SPI_CNTL0_CLEARFIFO, align 4
  %9 = call i32 @bcm2835aux_wr(%struct.bcm2835aux_spi* %6, i32 %7, i32 %8)
  ret void
}

declare dso_local i32 @bcm2835aux_wr(%struct.bcm2835aux_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
