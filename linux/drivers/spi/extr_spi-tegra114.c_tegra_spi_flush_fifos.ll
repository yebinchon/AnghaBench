; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_flush_fifos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_flush_fifos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_spi_data = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@SPI_FIFO_STATUS = common dso_local global i32 0, align 4
@SPI_FIFO_EMPTY = common dso_local global i32 0, align 4
@SPI_RX_FIFO_FLUSH = common dso_local global i32 0, align 4
@SPI_TX_FIFO_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"timeout waiting for fifo flush\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_spi_data*)* @tegra_spi_flush_fifos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_spi_flush_fifos(%struct.tegra_spi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_spi_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_spi_data* %0, %struct.tegra_spi_data** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i64, i64* @HZ, align 8
  %8 = add i64 %6, %7
  store i64 %8, i64* %4, align 8
  %9 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %10 = load i32, i32* @SPI_FIFO_STATUS, align 4
  %11 = call i32 @tegra_spi_readl(%struct.tegra_spi_data* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SPI_FIFO_EMPTY, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @SPI_FIFO_EMPTY, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %1
  %18 = load i32, i32* @SPI_RX_FIFO_FLUSH, align 4
  %19 = load i32, i32* @SPI_TX_FIFO_FLUSH, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SPI_FIFO_STATUS, align 4
  %26 = call i32 @tegra_spi_writel(%struct.tegra_spi_data* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %48, %17
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SPI_FIFO_EMPTY, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @SPI_FIFO_EMPTY, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %35 = load i32, i32* @SPI_FIFO_STATUS, align 4
  %36 = call i32 @tegra_spi_readl(%struct.tegra_spi_data* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i64, i64* @jiffies, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @time_after(i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %43 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %33
  %49 = call i32 @udelay(i32 1)
  br label %27

50:                                               ; preds = %27
  br label %51

51:                                               ; preds = %50, %1
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @tegra_spi_readl(%struct.tegra_spi_data*, i32) #1

declare dso_local i32 @tegra_spi_writel(%struct.tegra_spi_data*, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
