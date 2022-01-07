; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-sflash.c_tegra_sflash_calculate_curr_xfer_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-sflash.c_tegra_sflash_calculate_curr_xfer_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.tegra_sflash_data = type { i32, i32, i32 }
%struct.spi_transfer = type { i32, i32 }

@SPI_FIFO_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.tegra_sflash_data*, %struct.spi_transfer*)* @tegra_sflash_calculate_curr_xfer_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sflash_calculate_curr_xfer_param(%struct.spi_device* %0, %struct.tegra_sflash_data* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.tegra_sflash_data*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.tegra_sflash_data* %1, %struct.tegra_sflash_data** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %9 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %10 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %13 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub i32 %11, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DIV_ROUND_UP(i32 %18, i32 8)
  %20 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %21 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %24 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = udiv i32 %22, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SPI_FIFO_DEPTH, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @SPI_FIFO_DEPTH, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %30, %3
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %35 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
