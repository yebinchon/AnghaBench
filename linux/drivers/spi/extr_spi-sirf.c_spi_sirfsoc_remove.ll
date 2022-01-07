; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i32 }
%struct.sirfsoc_spi = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spi_sirfsoc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_sirfsoc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.sirfsoc_spi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.spi_master* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.spi_master* %6, %struct.spi_master** %3, align 8
  %7 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %8 = call %struct.sirfsoc_spi* @spi_master_get_devdata(%struct.spi_master* %7)
  store %struct.sirfsoc_spi* %8, %struct.sirfsoc_spi** %4, align 8
  %9 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %10 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %9, i32 0, i32 3
  %11 = call i32 @spi_bitbang_stop(i32* %10)
  %12 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %13 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_disable_unprepare(i32 %14)
  %16 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %17 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_put(i32 %18)
  %20 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %21 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dma_release_channel(i32 %22)
  %24 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %25 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dma_release_channel(i32 %26)
  %28 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %29 = call i32 @spi_master_put(%struct.spi_master* %28)
  ret i32 0
}

declare dso_local %struct.spi_master* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.sirfsoc_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spi_bitbang_stop(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
