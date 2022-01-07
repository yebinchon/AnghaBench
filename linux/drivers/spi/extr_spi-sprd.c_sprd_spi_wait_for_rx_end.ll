; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_wait_for_rx_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_wait_for_rx_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_spi = type { i64, i32 }
%struct.spi_transfer = type { i32 }

@SPRD_SPI_INT_RAW_STS = common dso_local global i64 0, align 8
@SPRD_SPI_RX_END_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SPI error, spi rx timeout!\0A\00", align 1
@SPRD_SPI_RX_END_INT_CLR = common dso_local global i32 0, align 4
@SPRD_SPI_INT_CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_spi*, %struct.spi_transfer*)* @sprd_spi_wait_for_rx_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_wait_for_rx_end(%struct.sprd_spi* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sprd_spi*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sprd_spi* %0, %struct.sprd_spi** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %9 = load %struct.sprd_spi*, %struct.sprd_spi** %4, align 8
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %11 = call i32 @sprd_spi_transfer_max_timeout(%struct.sprd_spi* %9, %struct.spi_transfer* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.sprd_spi*, %struct.sprd_spi** %4, align 8
  %13 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SPRD_SPI_INT_RAW_STS, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SPRD_SPI_RX_END_IRQ, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @readl_relaxed_poll_timeout(i64 %16, i32 %17, i32 %20, i32 0, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.sprd_spi*, %struct.sprd_spi** %4, align 8
  %27 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %2
  %32 = load i32, i32* @SPRD_SPI_RX_END_INT_CLR, align 4
  %33 = load %struct.sprd_spi*, %struct.sprd_spi** %4, align 8
  %34 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SPRD_SPI_INT_CLR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel_relaxed(i32 %32, i64 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %25
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @sprd_spi_transfer_max_timeout(%struct.sprd_spi*, %struct.spi_transfer*) #1

declare dso_local i32 @readl_relaxed_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
