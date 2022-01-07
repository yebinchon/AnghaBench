; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sifive.c_sifive_spi_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sifive.c_sifive_spi_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sifive_spi = type { i32 }

@SIFIVE_SPI_REG_TXDATA = common dso_local global i32 0, align 4
@SIFIVE_SPI_TXDATA_FULL = common dso_local global i32 0, align 4
@SIFIVE_SPI_TXDATA_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sifive_spi*, i32*)* @sifive_spi_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sifive_spi_tx(%struct.sifive_spi* %0, i32* %1) #0 {
  %3 = alloca %struct.sifive_spi*, align 8
  %4 = alloca i32*, align 8
  store %struct.sifive_spi* %0, %struct.sifive_spi** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.sifive_spi*, %struct.sifive_spi** %3, align 8
  %6 = load i32, i32* @SIFIVE_SPI_REG_TXDATA, align 4
  %7 = call i32 @sifive_spi_read(%struct.sifive_spi* %5, i32 %6)
  %8 = load i32, i32* @SIFIVE_SPI_TXDATA_FULL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON_ONCE(i32 %11)
  %13 = load %struct.sifive_spi*, %struct.sifive_spi** %3, align 8
  %14 = load i32, i32* @SIFIVE_SPI_REG_TXDATA, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SIFIVE_SPI_TXDATA_DATA_MASK, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @sifive_spi_write(%struct.sifive_spi* %13, i32 %14, i32 %18)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @sifive_spi_read(%struct.sifive_spi*, i32) #1

declare dso_local i32 @sifive_spi_write(%struct.sifive_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
