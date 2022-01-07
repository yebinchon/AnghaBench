; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_total_voltage_channel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_total_voltage_channel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { i32, i32, i32, i32, %struct.TYPE_2__, i8*, i8*, i32, i64, i32 }
%struct.TYPE_2__ = type { i8, i32, i32 }

@IIO_VOLTAGE = common dso_local global i32 0, align 4
@AD7280A_CELLS_PER_DEV = common dso_local global i32 0, align 4
@AD7280A_ALL_CELLS = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_RAW = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_chan_spec*, i32, i32)* @ad7280_total_voltage_channel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7280_total_voltage_channel_init(%struct.iio_chan_spec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iio_chan_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iio_chan_spec* %0, %struct.iio_chan_spec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @IIO_VOLTAGE, align 4
  %8 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %9 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %8, i32 0, i32 9
  store i32 %7, i32* %9, align 8
  %10 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %11 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %13 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %12, i32 0, i32 8
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @AD7280A_CELLS_PER_DEV, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @AD7280A_ALL_CELLS, align 4
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 2
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* @IIO_CHAN_INFO_RAW, align 4
  %25 = call i8* @BIT(i32 %24)
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @IIO_CHAN_INFO_SCALE, align 4
  %29 = call i8* @BIT(i32 %28)
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %36 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i8 117, i8* %37, align 8
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 32, i32* %40, align 4
  %41 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %42 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 32, i32* %43, align 8
  ret void
}

declare dso_local i8* @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
