; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-100k.c_spi100k_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-100k.c_spi100k_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.omap1_spi100k = type { i64 }

@SPI_TX_MSB = common dso_local global i64 0, align 8
@SPI_CTRL_WR = common dso_local global i32 0, align 4
@SPI_CTRL = common dso_local global i64 0, align 8
@SPI_STATUS = common dso_local global i64 0, align 8
@SPI_STATUS_WE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*, i32, i32)* @spi100k_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi100k_write_data(%struct.spi_master* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap1_spi100k*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %9 = call %struct.omap1_spi100k* @spi_master_get_devdata(%struct.spi_master* %8)
  store %struct.omap1_spi100k* %9, %struct.omap1_spi100k** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp sle i32 %10, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 8
  store i32 %14, i32* %6, align 4
  store i32 16, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %3
  %16 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %17 = call i32 @spi100k_enable_clock(%struct.spi_master* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %7, align 8
  %20 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SPI_TX_MSB, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writew(i32 %18, i64 %23)
  %25 = call i32 @SPI_CTRL_SEN(i32 0)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @SPI_CTRL_WORD_SIZE(i32 %26)
  %28 = or i32 %25, %27
  %29 = load i32, i32* @SPI_CTRL_WR, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %7, align 8
  %32 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SPI_CTRL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writew(i32 %30, i64 %35)
  br label %37

37:                                               ; preds = %48, %15
  %38 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %7, align 8
  %39 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SPI_STATUS, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readw(i64 %42)
  %44 = load i32, i32* @SPI_STATUS_WE, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @SPI_STATUS_WE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %37

49:                                               ; preds = %37
  %50 = call i32 @udelay(i32 1000)
  %51 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %52 = call i32 @spi100k_disable_clock(%struct.spi_master* %51)
  ret void
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
