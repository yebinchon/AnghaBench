; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ad2s1210_state = type { i32, i32, i32, i32, i32, %struct.spi_device*, i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MOD_CONFIG = common dso_local global i32 0, align 4
@AD2S1210_DEF_EXCIT = common dso_local global i32 0, align 4
@ad2s1210_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad2s1210_channels = common dso_local global i32 0, align 4
@SPI_MODE_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad2s1210_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad2s1210_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.ad2s1210_state*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 2
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %8, i32 40)
  store %struct.iio_dev* %9, %struct.iio_dev** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %88

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %17 = call %struct.ad2s1210_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad2s1210_state* %17, %struct.ad2s1210_state** %5, align 8
  %18 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %5, align 8
  %19 = call i32 @ad2s1210_setup_gpios(%struct.ad2s1210_state* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %88

24:                                               ; preds = %15
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %27 = call i32 @spi_set_drvdata(%struct.spi_device* %25, %struct.iio_dev* %26)
  %28 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %5, align 8
  %29 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %28, i32 0, i32 6
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %5, align 8
  %33 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %32, i32 0, i32 5
  store %struct.spi_device* %31, %struct.spi_device** %33, align 8
  %34 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %5, align 8
  %35 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @MOD_CONFIG, align 4
  %37 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %5, align 8
  %38 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %5, align 8
  %40 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %39, i32 0, i32 1
  store i32 12, i32* %40, align 4
  %41 = load i32, i32* @AD2S1210_DEF_EXCIT, align 4
  %42 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %5, align 8
  %43 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 2
  %46 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32* %45, i32** %48, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 4
  store i32* @ad2s1210_info, i32** %50, align 8
  %51 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ad2s1210_channels, align 4
  %55 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @ad2s1210_channels, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 2
  %69 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %70 = call i32 @devm_iio_device_register(i32* %68, %struct.iio_dev* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %24
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %88

75:                                               ; preds = %24
  %76 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %77 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %5, align 8
  %80 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @SPI_MODE_3, align 4
  %82 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %83 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %85 = call i32 @spi_setup(%struct.spi_device* %84)
  %86 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %5, align 8
  %87 = call i32 @ad2s1210_initial(%struct.ad2s1210_state* %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %75, %73, %22, %12
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ad2s1210_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad2s1210_setup_gpios(%struct.ad2s1210_state*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @ad2s1210_initial(%struct.ad2s1210_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
