; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_dma_rxtmp_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_dma_rxtmp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_spi = type { i64, i64, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1550_spi*)* @au1550_spi_dma_rxtmp_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1550_spi_dma_rxtmp_free(%struct.au1550_spi* %0) #0 {
  %2 = alloca %struct.au1550_spi*, align 8
  store %struct.au1550_spi* %0, %struct.au1550_spi** %2, align 8
  %3 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %4 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %7 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %10 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %13 = call i32 @dma_unmap_single(i32 %5, i32 %8, i64 %11, i32 %12)
  %14 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %15 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @kfree(i64 %16)
  %18 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %19 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %21 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
