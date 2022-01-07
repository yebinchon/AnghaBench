; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-100k.c_spi100k_disable_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-100k.c_spi100k_disable_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.omap1_spi100k = type { i64 }

@SPI_SETUP1 = common dso_local global i64 0, align 8
@SPI_SETUP1_CLOCK_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*)* @spi100k_disable_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi100k_disable_clock(%struct.spi_master* %0) #0 {
  %2 = alloca %struct.spi_master*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap1_spi100k*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %2, align 8
  %5 = load %struct.spi_master*, %struct.spi_master** %2, align 8
  %6 = call %struct.omap1_spi100k* @spi_master_get_devdata(%struct.spi_master* %5)
  store %struct.omap1_spi100k* %6, %struct.omap1_spi100k** %4, align 8
  %7 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %4, align 8
  %8 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SPI_SETUP1, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readw(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @SPI_SETUP1_CLOCK_ENABLE, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %4, align 8
  %19 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SPI_SETUP1, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writew(i32 %17, i64 %22)
  ret void
}

declare dso_local %struct.omap1_spi100k* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
