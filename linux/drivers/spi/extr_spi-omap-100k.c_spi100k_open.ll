; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-100k.c_spi100k_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-100k.c_spi100k_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.omap1_spi100k = type { i64 }

@SPI_SETUP1_INT_READ_ENABLE = common dso_local global i32 0, align 4
@SPI_SETUP1_INT_WRITE_ENABLE = common dso_local global i32 0, align 4
@SPI_SETUP1 = common dso_local global i64 0, align 8
@SPI_SETUP2_ACTIVE_EDGE_FALLING = common dso_local global i32 0, align 4
@SPI_SETUP2_NEGATIVE_LEVEL = common dso_local global i32 0, align 4
@SPI_SETUP2_LEVEL_TRIGGER = common dso_local global i32 0, align 4
@SPI_SETUP2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*)* @spi100k_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi100k_open(%struct.spi_master* %0) #0 {
  %2 = alloca %struct.spi_master*, align 8
  %3 = alloca %struct.omap1_spi100k*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %2, align 8
  %4 = load %struct.spi_master*, %struct.spi_master** %2, align 8
  %5 = call %struct.omap1_spi100k* @spi_master_get_devdata(%struct.spi_master* %4)
  store %struct.omap1_spi100k* %5, %struct.omap1_spi100k** %3, align 8
  %6 = load i32, i32* @SPI_SETUP1_INT_READ_ENABLE, align 4
  %7 = load i32, i32* @SPI_SETUP1_INT_WRITE_ENABLE, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @SPI_SETUP1_CLOCK_DIVISOR(i32 0)
  %10 = or i32 %8, %9
  %11 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %3, align 8
  %12 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPI_SETUP1, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writew(i32 %10, i64 %15)
  %17 = load i32, i32* @SPI_SETUP2_ACTIVE_EDGE_FALLING, align 4
  %18 = load i32, i32* @SPI_SETUP2_NEGATIVE_LEVEL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SPI_SETUP2_LEVEL_TRIGGER, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %3, align 8
  %23 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SPI_SETUP2, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writew(i32 %21, i64 %26)
  ret void
}

declare dso_local %struct.omap1_spi100k* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @SPI_SETUP1_CLOCK_DIVISOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
