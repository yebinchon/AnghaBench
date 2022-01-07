; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_qspi = type { i32, i32, i32, i64 }

@QSPI_CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_qspi*)* @stm32_qspi_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_qspi_release(%struct.stm32_qspi* %0) #0 {
  %2 = alloca %struct.stm32_qspi*, align 8
  store %struct.stm32_qspi* %0, %struct.stm32_qspi** %2, align 8
  %3 = load %struct.stm32_qspi*, %struct.stm32_qspi** %2, align 8
  %4 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @QSPI_CR, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @writel_relaxed(i32 0, i64 %7)
  %9 = load %struct.stm32_qspi*, %struct.stm32_qspi** %2, align 8
  %10 = call i32 @stm32_qspi_dma_free(%struct.stm32_qspi* %9)
  %11 = load %struct.stm32_qspi*, %struct.stm32_qspi** %2, align 8
  %12 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %11, i32 0, i32 2
  %13 = call i32 @mutex_destroy(i32* %12)
  %14 = load %struct.stm32_qspi*, %struct.stm32_qspi** %2, align 8
  %15 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_disable_unprepare(i32 %16)
  %18 = load %struct.stm32_qspi*, %struct.stm32_qspi** %2, align 8
  %19 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @spi_master_put(i32 %20)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @stm32_qspi_dma_free(%struct.stm32_qspi*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @spi_master_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
