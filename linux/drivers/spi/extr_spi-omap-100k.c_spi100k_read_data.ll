; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-100k.c_spi100k_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-100k.c_spi100k_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.omap1_spi100k = type { i64 }

@SPI_CTRL_RD = common dso_local global i32 0, align 4
@SPI_CTRL = common dso_local global i64 0, align 8
@SPI_STATUS = common dso_local global i64 0, align 8
@SPI_STATUS_RD = common dso_local global i32 0, align 4
@SPI_RX_LSB = common dso_local global i64 0, align 8
@SPI_RX_MSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, i32)* @spi100k_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi100k_read_data(%struct.spi_master* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap1_spi100k*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %9 = call %struct.omap1_spi100k* @spi_master_get_devdata(%struct.spi_master* %8)
  store %struct.omap1_spi100k* %9, %struct.omap1_spi100k** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 16, i32* %4, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %15 = call i32 @spi100k_enable_clock(%struct.spi_master* %14)
  %16 = call i32 @SPI_CTRL_SEN(i32 0)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @SPI_CTRL_WORD_SIZE(i32 %17)
  %19 = or i32 %16, %18
  %20 = load i32, i32* @SPI_CTRL_RD, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %7, align 8
  %23 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SPI_CTRL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writew(i32 %21, i64 %26)
  br label %28

28:                                               ; preds = %39, %13
  %29 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %7, align 8
  %30 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SPI_STATUS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readw(i64 %33)
  %35 = load i32, i32* @SPI_STATUS_RD, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @SPI_STATUS_RD, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %28

40:                                               ; preds = %28
  %41 = call i32 @udelay(i32 1000)
  %42 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %7, align 8
  %43 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SPI_RX_LSB, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readw(i64 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %7, align 8
  %49 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SPI_RX_MSB, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readw(i64 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %55 = call i32 @spi100k_disable_clock(%struct.spi_master* %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.omap1_spi100k* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spi100k_enable_clock(%struct.spi_master*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @SPI_CTRL_SEN(i32) #1

declare dso_local i32 @SPI_CTRL_WORD_SIZE(i32) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spi100k_disable_clock(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
