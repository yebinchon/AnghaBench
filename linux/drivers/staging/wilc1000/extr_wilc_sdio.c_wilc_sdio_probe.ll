; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sdio_device_id = type { i32 }
%struct.wilc = type { %struct.gpio_desc*, %struct.gpio_desc*, i32*, %struct.wilc_sdio* }
%struct.gpio_desc = type { i32 }
%struct.wilc_sdio = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_WILC1000_HW_OOB_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@GPIO_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to get irq gpio\0A\00", align 1
@WILC_HIF_SDIO = common dso_local global i32 0, align 4
@wilc_hif_sdio = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"rtc_clk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Driver Initializing success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @wilc_sdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_sdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca %struct.wilc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gpio_desc*, align 8
  %9 = alloca %struct.wilc_sdio*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  store %struct.gpio_desc* null, %struct.gpio_desc** %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.wilc_sdio* @kzalloc(i32 4, i32 %10)
  store %struct.wilc_sdio* %11, %struct.wilc_sdio** %9, align 8
  %12 = load %struct.wilc_sdio*, %struct.wilc_sdio** %9, align 8
  %13 = icmp ne %struct.wilc_sdio* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %98

17:                                               ; preds = %2
  %18 = load i32, i32* @CONFIG_WILC1000_HW_OOB_INTR, align 4
  %19 = call i64 @IS_ENABLED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %23 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %22, i32 0, i32 0
  %24 = load i32, i32* @GPIOD_IN, align 4
  %25 = call %struct.gpio_desc* @gpiod_get(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  store %struct.gpio_desc* %25, %struct.gpio_desc** %8, align 8
  %26 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %27 = call i64 @IS_ERR(%struct.gpio_desc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = load i32, i32* @GPIO_NUM, align 4
  %31 = call %struct.gpio_desc* @gpio_to_desc(i32 %30)
  store %struct.gpio_desc* %31, %struct.gpio_desc** %8, align 8
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %33 = icmp ne %struct.gpio_desc* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %36 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %29
  br label %39

39:                                               ; preds = %38, %21
  br label %40

40:                                               ; preds = %39, %17
  %41 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %42 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %41, i32 0, i32 0
  %43 = load i32, i32* @WILC_HIF_SDIO, align 4
  %44 = call i32 @wilc_cfg80211_init(%struct.wilc** %6, i32* %42, i32 %43, i32* @wilc_hif_sdio)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.wilc_sdio*, %struct.wilc_sdio** %9, align 8
  %49 = call i32 @kfree(%struct.wilc_sdio* %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %98

51:                                               ; preds = %40
  %52 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %53 = load %struct.wilc*, %struct.wilc** %6, align 8
  %54 = call i32 @sdio_set_drvdata(%struct.sdio_func* %52, %struct.wilc* %53)
  %55 = load %struct.wilc_sdio*, %struct.wilc_sdio** %9, align 8
  %56 = load %struct.wilc*, %struct.wilc** %6, align 8
  %57 = getelementptr inbounds %struct.wilc, %struct.wilc* %56, i32 0, i32 3
  store %struct.wilc_sdio* %55, %struct.wilc_sdio** %57, align 8
  %58 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %59 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %58, i32 0, i32 0
  %60 = load %struct.wilc*, %struct.wilc** %6, align 8
  %61 = getelementptr inbounds %struct.wilc, %struct.wilc* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %63 = load %struct.wilc*, %struct.wilc** %6, align 8
  %64 = getelementptr inbounds %struct.wilc, %struct.wilc* %63, i32 0, i32 1
  store %struct.gpio_desc* %62, %struct.gpio_desc** %64, align 8
  %65 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %66 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call %struct.gpio_desc* @devm_clk_get(i32* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.wilc*, %struct.wilc** %6, align 8
  %71 = getelementptr inbounds %struct.wilc, %struct.wilc* %70, i32 0, i32 0
  store %struct.gpio_desc* %69, %struct.gpio_desc** %71, align 8
  %72 = load %struct.wilc*, %struct.wilc** %6, align 8
  %73 = getelementptr inbounds %struct.wilc, %struct.wilc* %72, i32 0, i32 0
  %74 = load %struct.gpio_desc*, %struct.gpio_desc** %73, align 8
  %75 = call i32 @PTR_ERR_OR_ZERO(%struct.gpio_desc* %74)
  %76 = load i32, i32* @EPROBE_DEFER, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %51
  %80 = load i32, i32* @EPROBE_DEFER, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %98

82:                                               ; preds = %51
  %83 = load %struct.wilc*, %struct.wilc** %6, align 8
  %84 = getelementptr inbounds %struct.wilc, %struct.wilc* %83, i32 0, i32 0
  %85 = load %struct.gpio_desc*, %struct.gpio_desc** %84, align 8
  %86 = call i64 @IS_ERR(%struct.gpio_desc* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = load %struct.wilc*, %struct.wilc** %6, align 8
  %90 = getelementptr inbounds %struct.wilc, %struct.wilc* %89, i32 0, i32 0
  %91 = load %struct.gpio_desc*, %struct.gpio_desc** %90, align 8
  %92 = call i32 @clk_prepare_enable(%struct.gpio_desc* %91)
  br label %93

93:                                               ; preds = %88, %82
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %96 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %95, i32 0, i32 0
  %97 = call i32 @dev_info(i32* %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %79, %47, %14
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.wilc_sdio* @kzalloc(i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.gpio_desc* @gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @gpio_to_desc(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @wilc_cfg80211_init(%struct.wilc**, i32*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.wilc_sdio*) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.wilc*) #1

declare dso_local %struct.gpio_desc* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.gpio_desc*) #1

declare dso_local i32 @clk_prepare_enable(%struct.gpio_desc*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
