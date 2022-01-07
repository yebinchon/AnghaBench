; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_write_only_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_write_only_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_spi = type { i64 }

@SPRD_SPI_CTL4 = common dso_local global i64 0, align 8
@SPRD_SPI_START_RX = common dso_local global i32 0, align 4
@SPRD_SPI_ONLY_RECV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_spi*, i32)* @sprd_spi_write_only_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_write_only_receive(%struct.sprd_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.sprd_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sprd_spi* %0, %struct.sprd_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %7 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SPRD_SPI_CTL4, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl_relaxed(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @SPRD_SPI_START_RX, align 4
  %13 = load i32, i32* @SPRD_SPI_ONLY_RECV_MASK, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %20 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SPRD_SPI_CTL4, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel_relaxed(i32 %18, i64 %23)
  %25 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %26 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SPRD_SPI_CTL4, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl_relaxed(i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SPRD_SPI_ONLY_RECV_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %38 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SPRD_SPI_CTL4, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel_relaxed(i32 %36, i64 %41)
  %43 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %44 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SPRD_SPI_CTL4, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readl_relaxed(i64 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @SPRD_SPI_START_RX, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %54 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SPRD_SPI_CTL4, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel_relaxed(i32 %52, i64 %57)
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
