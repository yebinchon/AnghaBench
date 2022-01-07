; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7192_state = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7192_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7192_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ad7192_state*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = call %struct.iio_dev* @spi_get_drvdata(%struct.spi_device* %5)
  store %struct.iio_dev* %6, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.ad7192_state* @iio_priv(%struct.iio_dev* %7)
  store %struct.ad7192_state* %8, %struct.ad7192_state** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call i32 @iio_device_unregister(%struct.iio_dev* %9)
  %11 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %12 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_disable_unprepare(i32 %13)
  %15 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %16 = call i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev* %15)
  %17 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %18 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regulator_disable(i32 %19)
  %21 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %22 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regulator_disable(i32 %23)
  ret i32 0
}

declare dso_local %struct.iio_dev* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local %struct.ad7192_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
