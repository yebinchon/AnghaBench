; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_bus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.wilc = type { %struct.gpio_desc*, %struct.wilc_spi*, i32* }
%struct.gpio_desc = type { i32 }
%struct.wilc_spi = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@GPIO_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to get the irq gpio\0A\00", align 1
@WILC_HIF_SPI = common dso_local global i32 0, align 4
@wilc_hif_spi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @wilc_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_bus_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wilc*, align 8
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca %struct.wilc_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.wilc_spi* @kzalloc(i32 4, i32 %8)
  store %struct.wilc_spi* %9, %struct.wilc_spi** %7, align 8
  %10 = load %struct.wilc_spi*, %struct.wilc_spi** %7, align 8
  %11 = icmp ne %struct.wilc_spi* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %58

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GPIOD_IN, align 4
  %19 = call %struct.gpio_desc* @gpiod_get(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18)
  store %struct.gpio_desc* %19, %struct.gpio_desc** %6, align 8
  %20 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %21 = call i64 @IS_ERR(%struct.gpio_desc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load i32, i32* @GPIO_NUM, align 4
  %25 = call %struct.gpio_desc* @gpio_to_desc(i32 %24)
  store %struct.gpio_desc* %25, %struct.gpio_desc** %6, align 8
  %26 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %27 = icmp ne %struct.gpio_desc* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %23
  br label %33

33:                                               ; preds = %32, %15
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 0
  %36 = load i32, i32* @WILC_HIF_SPI, align 4
  %37 = call i32 @wilc_cfg80211_init(%struct.wilc** %5, i32* %35, i32 %36, i32* @wilc_hif_spi)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.wilc_spi*, %struct.wilc_spi** %7, align 8
  %42 = call i32 @kfree(%struct.wilc_spi* %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %58

44:                                               ; preds = %33
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = load %struct.wilc*, %struct.wilc** %5, align 8
  %47 = call i32 @spi_set_drvdata(%struct.spi_device* %45, %struct.wilc* %46)
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 0
  %50 = load %struct.wilc*, %struct.wilc** %5, align 8
  %51 = getelementptr inbounds %struct.wilc, %struct.wilc* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load %struct.wilc_spi*, %struct.wilc_spi** %7, align 8
  %53 = load %struct.wilc*, %struct.wilc** %5, align 8
  %54 = getelementptr inbounds %struct.wilc, %struct.wilc* %53, i32 0, i32 1
  store %struct.wilc_spi* %52, %struct.wilc_spi** %54, align 8
  %55 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %56 = load %struct.wilc*, %struct.wilc** %5, align 8
  %57 = getelementptr inbounds %struct.wilc, %struct.wilc* %56, i32 0, i32 0
  store %struct.gpio_desc* %55, %struct.gpio_desc** %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %44, %40, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.wilc_spi* @kzalloc(i32, i32) #1

declare dso_local %struct.gpio_desc* @gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @gpio_to_desc(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @wilc_cfg80211_init(%struct.wilc**, i32*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.wilc_spi*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.wilc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
