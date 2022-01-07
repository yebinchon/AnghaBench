; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c64xx.c_s3c64xx_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c64xx.c_s3c64xx_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i32 }
%struct.s3c64xx_spi_driver_data = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@S3C64XX_SPI_INT_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c64xx_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c64xx_spi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.s3c64xx_spi_driver_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.spi_master* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.spi_master* %6, %struct.spi_master** %3, align 8
  %7 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %8 = call %struct.s3c64xx_spi_driver_data* @spi_master_get_devdata(%struct.spi_master* %7)
  store %struct.s3c64xx_spi_driver_data* %8, %struct.s3c64xx_spi_driver_data** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @pm_runtime_get_sync(i32* %10)
  %12 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %4, align 8
  %13 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @S3C64XX_SPI_INT_EN, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 0, i64 %16)
  %18 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %4, align 8
  %19 = call i32 @is_polling(%struct.s3c64xx_spi_driver_data* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %1
  %22 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %4, align 8
  %23 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dma_release_channel(i32 %25)
  %27 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %4, align 8
  %28 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dma_release_channel(i32 %30)
  br label %32

32:                                               ; preds = %21, %1
  %33 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %4, align 8
  %34 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clk_disable_unprepare(i32 %35)
  %37 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %4, align 8
  %38 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_disable_unprepare(i32 %39)
  %41 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %4, align 8
  %42 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @clk_disable_unprepare(i32 %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @pm_runtime_put_noidle(i32* %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @pm_runtime_disable(i32* %49)
  %51 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @pm_runtime_set_suspended(i32* %52)
  ret i32 0
}

declare dso_local %struct.spi_master* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.s3c64xx_spi_driver_data* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @is_polling(%struct.s3c64xx_spi_driver_data*) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
