; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_auto_cs_unset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_auto_cs_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a3700_spi = type { i32 }

@A3700_SPI_IF_CFG_REG = common dso_local global i32 0, align 4
@A3700_SPI_AUTO_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a3700_spi*)* @a3700_spi_auto_cs_unset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a3700_spi_auto_cs_unset(%struct.a3700_spi* %0) #0 {
  %2 = alloca %struct.a3700_spi*, align 8
  %3 = alloca i32, align 4
  store %struct.a3700_spi* %0, %struct.a3700_spi** %2, align 8
  %4 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %5 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %6 = call i32 @spireg_read(%struct.a3700_spi* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @A3700_SPI_AUTO_CS, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %12 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @spireg_write(%struct.a3700_spi* %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @spireg_read(%struct.a3700_spi*, i32) #1

declare dso_local i32 @spireg_write(%struct.a3700_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
