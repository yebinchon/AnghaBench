; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-efm32.c_efm32_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-efm32.c_efm32_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i32 }
%struct.efm32_spi_ddata = type { i32, i32, i32, i32 }

@REG_IEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @efm32_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efm32_spi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.efm32_spi_ddata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.spi_master* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.spi_master* %6, %struct.spi_master** %3, align 8
  %7 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %8 = call %struct.efm32_spi_ddata* @spi_master_get_devdata(%struct.spi_master* %7)
  store %struct.efm32_spi_ddata* %8, %struct.efm32_spi_ddata** %4, align 8
  %9 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %4, align 8
  %10 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %9, i32 0, i32 3
  %11 = call i32 @spi_bitbang_stop(i32* %10)
  %12 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %4, align 8
  %13 = load i32, i32* @REG_IEN, align 4
  %14 = call i32 @efm32_spi_write32(%struct.efm32_spi_ddata* %12, i32 0, i32 %13)
  %15 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %4, align 8
  %16 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %4, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.efm32_spi_ddata* %18)
  %20 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %4, align 8
  %21 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %4, align 8
  %24 = call i32 @free_irq(i32 %22, %struct.efm32_spi_ddata* %23)
  %25 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %4, align 8
  %26 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_disable_unprepare(i32 %27)
  %29 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %30 = call i32 @spi_master_put(%struct.spi_master* %29)
  ret i32 0
}

declare dso_local %struct.spi_master* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.efm32_spi_ddata* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spi_bitbang_stop(i32*) #1

declare dso_local i32 @efm32_spi_write32(%struct.efm32_spi_ddata*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.efm32_spi_ddata*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
