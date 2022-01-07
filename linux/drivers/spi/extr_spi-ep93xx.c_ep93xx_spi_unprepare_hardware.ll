; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_unprepare_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_unprepare_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.ep93xx_spi = type { i32, i64 }

@SSPCR1 = common dso_local global i64 0, align 8
@SSPCR1_SSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*)* @ep93xx_spi_unprepare_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_spi_unprepare_hardware(%struct.spi_master* %0) #0 {
  %2 = alloca %struct.spi_master*, align 8
  %3 = alloca %struct.ep93xx_spi*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %2, align 8
  %5 = load %struct.spi_master*, %struct.spi_master** %2, align 8
  %6 = call %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master* %5)
  store %struct.ep93xx_spi* %6, %struct.ep93xx_spi** %3, align 8
  %7 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %8 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SSPCR1, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @SSPCR1_SSE, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %19 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SSPCR1, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %25 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clk_disable(i32 %26)
  ret i32 0
}

declare dso_local %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
