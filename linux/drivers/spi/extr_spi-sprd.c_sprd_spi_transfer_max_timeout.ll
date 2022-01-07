; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_transfer_max_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_transfer_max_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_spi = type { i32, i32, i32 }
%struct.spi_transfer = type { i32 }

@SPRD_SPI_FIFO_SIZE = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_spi*, %struct.spi_transfer*)* @sprd_spi_transfer_max_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_transfer_max_timeout(%struct.sprd_spi* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.sprd_spi*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sprd_spi* %0, %struct.sprd_spi** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SPRD_SPI_FIFO_SIZE, align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @USEC_PER_SEC, align 4
  %16 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %17 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DIV_ROUND_UP(i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @SPRD_SPI_FIFO_SIZE, align 4
  %24 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %25 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @USEC_PER_SEC, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %32 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DIV_ROUND_UP(i32 %30, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %35, %36
  ret i32 %37
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
