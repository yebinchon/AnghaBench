; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32f4_spi_dma_tx_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32f4_spi_dma_tx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i64, i32 }

@SPI_SIMPLEX_TX = common dso_local global i64 0, align 8
@SPI_3WIRE_TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @stm32f4_spi_dma_tx_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32f4_spi_dma_tx_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stm32_spi*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.stm32_spi*
  store %struct.stm32_spi* %5, %struct.stm32_spi** %3, align 8
  %6 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %7 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SPI_SIMPLEX_TX, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %13 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SPI_3WIRE_TX, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11, %1
  %18 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %19 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @spi_finalize_current_transfer(i32 %20)
  %22 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %23 = call i32 @stm32f4_spi_disable(%struct.stm32_spi* %22)
  br label %24

24:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @spi_finalize_current_transfer(i32) #1

declare dso_local i32 @stm32f4_spi_disable(%struct.stm32_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
