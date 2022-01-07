; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-falcon.c_falcon_sflash_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-falcon.c_falcon_sflash_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.falcon_sflash = type { %struct.spi_master* }
%struct.spi_master = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SPI_MODE_3 = common dso_local global i32 0, align 4
@SPI_MASTER_HALF_DUPLEX = common dso_local global i32 0, align 4
@falcon_sflash_setup = common dso_local global i32 0, align 4
@falcon_sflash_xfer_one = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @falcon_sflash_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_sflash_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.falcon_sflash*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_5__* %8, i32 8)
  store %struct.spi_master* %9, %struct.spi_master** %5, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %11 = icmp ne %struct.spi_master* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %17 = call %struct.falcon_sflash* @spi_master_get_devdata(%struct.spi_master* %16)
  store %struct.falcon_sflash* %17, %struct.falcon_sflash** %4, align 8
  %18 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %19 = load %struct.falcon_sflash*, %struct.falcon_sflash** %4, align 8
  %20 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %19, i32 0, i32 0
  store %struct.spi_master* %18, %struct.spi_master** %20, align 8
  %21 = load i32, i32* @SPI_MODE_3, align 4
  %22 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %23 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @SPI_MASTER_HALF_DUPLEX, align 4
  %25 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %26 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @falcon_sflash_setup, align 4
  %28 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %29 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @falcon_sflash_xfer_one, align 4
  %31 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %32 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %38 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %43 = call i32 @devm_spi_register_master(%struct.TYPE_5__* %41, %struct.spi_master* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %15
  %47 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %48 = call i32 @spi_master_put(%struct.spi_master* %47)
  br label %49

49:                                               ; preds = %46, %15
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.falcon_sflash* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_5__*, %struct.spi_master*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
