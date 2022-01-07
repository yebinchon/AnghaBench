; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_init_dev_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_init_dev_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7280_state = type { %struct.iio_chan_spec* }
%struct.iio_chan_spec = type { i32 }

@AD7280A_CELL_VOLTAGE_1 = common dso_local global i32 0, align 4
@AD7280A_AUX_ADC_6 = common dso_local global i32 0, align 4
@AD7280A_AUX_ADC_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad7280_state*, i32, i32*)* @ad7280_init_dev_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7280_init_dev_channels(%struct.ad7280_state* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ad7280_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iio_chan_spec*, align 8
  store %struct.ad7280_state* %0, %struct.ad7280_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @AD7280A_CELL_VOLTAGE_1, align 4
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %55, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @AD7280A_AUX_ADC_6, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %58

16:                                               ; preds = %12
  %17 = load %struct.ad7280_state*, %struct.ad7280_state** %4, align 8
  %18 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %17, i32 0, i32 0
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %18, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i64 %22
  store %struct.iio_chan_spec* %23, %struct.iio_chan_spec** %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @AD7280A_AUX_ADC_1, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @AD7280A_CALC_VOLTAGE_CHAN_NUM(i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @ad7280_voltage_channel_init(%struct.iio_chan_spec* %31, i32 %32)
  br label %41

34:                                               ; preds = %16
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @AD7280A_CALC_TEMP_CHAN_NUM(i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ad7280_temp_channel_init(%struct.iio_chan_spec* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %27
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ad7280a_devaddr(i32 %42)
  %44 = shl i32 %43, 8
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %7, align 4
  %47 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ad7280_common_fields_init(%struct.iio_chan_spec* %47, i32 %48, i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %12

58:                                               ; preds = %12
  ret void
}

declare dso_local i32 @AD7280A_CALC_VOLTAGE_CHAN_NUM(i32, i32) #1

declare dso_local i32 @ad7280_voltage_channel_init(%struct.iio_chan_spec*, i32) #1

declare dso_local i32 @AD7280A_CALC_TEMP_CHAN_NUM(i32, i32) #1

declare dso_local i32 @ad7280_temp_channel_init(%struct.iio_chan_spec*, i32) #1

declare dso_local i32 @ad7280a_devaddr(i32) #1

declare dso_local i32 @ad7280_common_fields_init(%struct.iio_chan_spec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
