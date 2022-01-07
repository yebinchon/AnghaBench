; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_common_fields_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_common_fields_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { i32, i32, i32, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i8, i32, i32 }

@IIO_CHAN_INFO_RAW = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_chan_spec*, i32, i32)* @ad7280_common_fields_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7280_common_fields_init(%struct.iio_chan_spec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iio_chan_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iio_chan_spec* %0, %struct.iio_chan_spec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %8 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* @IIO_CHAN_INFO_RAW, align 4
  %10 = call i8* @BIT(i32 %9)
  %11 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %12 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %11, i32 0, i32 5
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* @IIO_CHAN_INFO_SCALE, align 4
  %14 = call i8* @BIT(i32 %13)
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %16 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8 117, i8* %25, align 4
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 12, i32* %28, align 4
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 32, i32* %31, align 4
  ret void
}

declare dso_local i8* @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
