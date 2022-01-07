; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sifive.c_sifive_spi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sifive.c_sifive_spi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sifive_spi = type { i32 }

@SIFIVE_SPI_REG_IE = common dso_local global i32 0, align 4
@SIFIVE_SPI_REG_TXMARK = common dso_local global i32 0, align 4
@SIFIVE_SPI_REG_RXMARK = common dso_local global i32 0, align 4
@SIFIVE_SPI_REG_DELAY0 = common dso_local global i32 0, align 4
@SIFIVE_SPI_REG_DELAY1 = common dso_local global i32 0, align 4
@SIFIVE_SPI_REG_FCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sifive_spi*)* @sifive_spi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sifive_spi_init(%struct.sifive_spi* %0) #0 {
  %2 = alloca %struct.sifive_spi*, align 8
  store %struct.sifive_spi* %0, %struct.sifive_spi** %2, align 8
  %3 = load %struct.sifive_spi*, %struct.sifive_spi** %2, align 8
  %4 = load i32, i32* @SIFIVE_SPI_REG_IE, align 4
  %5 = call i32 @sifive_spi_write(%struct.sifive_spi* %3, i32 %4, i32 0)
  %6 = load %struct.sifive_spi*, %struct.sifive_spi** %2, align 8
  %7 = load i32, i32* @SIFIVE_SPI_REG_TXMARK, align 4
  %8 = call i32 @sifive_spi_write(%struct.sifive_spi* %6, i32 %7, i32 1)
  %9 = load %struct.sifive_spi*, %struct.sifive_spi** %2, align 8
  %10 = load i32, i32* @SIFIVE_SPI_REG_RXMARK, align 4
  %11 = call i32 @sifive_spi_write(%struct.sifive_spi* %9, i32 %10, i32 0)
  %12 = load %struct.sifive_spi*, %struct.sifive_spi** %2, align 8
  %13 = load i32, i32* @SIFIVE_SPI_REG_DELAY0, align 4
  %14 = call i32 @SIFIVE_SPI_DELAY0_CSSCK(i32 1)
  %15 = call i32 @SIFIVE_SPI_DELAY0_SCKCS(i32 1)
  %16 = or i32 %14, %15
  %17 = call i32 @sifive_spi_write(%struct.sifive_spi* %12, i32 %13, i32 %16)
  %18 = load %struct.sifive_spi*, %struct.sifive_spi** %2, align 8
  %19 = load i32, i32* @SIFIVE_SPI_REG_DELAY1, align 4
  %20 = call i32 @SIFIVE_SPI_DELAY1_INTERCS(i32 1)
  %21 = call i32 @SIFIVE_SPI_DELAY1_INTERXFR(i32 0)
  %22 = or i32 %20, %21
  %23 = call i32 @sifive_spi_write(%struct.sifive_spi* %18, i32 %19, i32 %22)
  %24 = load %struct.sifive_spi*, %struct.sifive_spi** %2, align 8
  %25 = load i32, i32* @SIFIVE_SPI_REG_FCTRL, align 4
  %26 = call i32 @sifive_spi_write(%struct.sifive_spi* %24, i32 %25, i32 0)
  ret void
}

declare dso_local i32 @sifive_spi_write(%struct.sifive_spi*, i32, i32) #1

declare dso_local i32 @SIFIVE_SPI_DELAY0_CSSCK(i32) #1

declare dso_local i32 @SIFIVE_SPI_DELAY0_SCKCS(i32) #1

declare dso_local i32 @SIFIVE_SPI_DELAY1_INTERCS(i32) #1

declare dso_local i32 @SIFIVE_SPI_DELAY1_INTERXFR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
