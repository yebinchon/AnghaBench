; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_pxa2xx_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_pxa2xx_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.driver_data = type { %struct.TYPE_2__*, %struct.ssp_device* }
%struct.TYPE_2__ = type { i64 }
%struct.ssp_device = type { i32, i32 }

@SSCR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa2xx_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_spi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.driver_data*, align 8
  %5 = alloca %struct.ssp_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.driver_data* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.driver_data* %7, %struct.driver_data** %4, align 8
  %8 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %9 = icmp ne %struct.driver_data* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %13 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %12, i32 0, i32 1
  %14 = load %struct.ssp_device*, %struct.ssp_device** %13, align 8
  store %struct.ssp_device* %14, %struct.ssp_device** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @pm_runtime_get_sync(i32* %16)
  %18 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %19 = load i32, i32* @SSCR0, align 4
  %20 = call i32 @pxa2xx_spi_write(%struct.driver_data* %18, i32 %19, i32 0)
  %21 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %22 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_disable_unprepare(i32 %23)
  %25 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %26 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %11
  %32 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %33 = call i32 @pxa2xx_spi_dma_release(%struct.driver_data* %32)
  br label %34

34:                                               ; preds = %31, %11
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @pm_runtime_put_noidle(i32* %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @pm_runtime_disable(i32* %39)
  %41 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %42 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %45 = call i32 @free_irq(i32 %43, %struct.driver_data* %44)
  %46 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %47 = call i32 @pxa_ssp_free(%struct.ssp_device* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %34, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.driver_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pxa2xx_spi_write(%struct.driver_data*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pxa2xx_spi_dma_release(%struct.driver_data*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.driver_data*) #1

declare dso_local i32 @pxa_ssp_free(%struct.ssp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
