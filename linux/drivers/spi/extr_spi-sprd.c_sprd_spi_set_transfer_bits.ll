; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_set_transfer_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_set_transfer_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_spi = type { i64 }

@SPRD_SPI_CTL0 = common dso_local global i64 0, align 8
@SPRD_SPI_CHNL_LEN_MASK = common dso_local global i32 0, align 4
@SPRD_SPI_CHNL_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sprd_spi*, i32)* @sprd_spi_set_transfer_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_spi_set_transfer_bits(%struct.sprd_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.sprd_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sprd_spi* %0, %struct.sprd_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %7 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SPRD_SPI_CTL0, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl_relaxed(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @SPRD_SPI_CHNL_LEN_MASK, align 4
  %13 = load i32, i32* @SPRD_SPI_CHNL_LEN, align 4
  %14 = shl i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SPRD_SPI_CHNL_LEN, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %25 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SPRD_SPI_CTL0, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel_relaxed(i32 %23, i64 %28)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
