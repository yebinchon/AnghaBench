; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854-spi.c_ade7854_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854-spi.c_ade7854_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.ade7854_state = type { %struct.spi_device*, i32, i32, i32 }
%struct.iio_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ade7854_spi_read_reg = common dso_local global i32 0, align 4
@ade7854_spi_write_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ade7854_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ade7854_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ade7854_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %7, i32 24)
  store %struct.iio_dev* %8, %struct.iio_dev** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %10 = icmp ne %struct.iio_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %16 = call %struct.ade7854_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ade7854_state* %16, %struct.ade7854_state** %4, align 8
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %19 = call i32 @spi_set_drvdata(%struct.spi_device* %17, %struct.iio_dev* %18)
  %20 = load i32, i32* @ade7854_spi_read_reg, align 4
  %21 = load %struct.ade7854_state*, %struct.ade7854_state** %4, align 8
  %22 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @ade7854_spi_write_reg, align 4
  %24 = load %struct.ade7854_state*, %struct.ade7854_state** %4, align 8
  %25 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ade7854_state*, %struct.ade7854_state** %4, align 8
  %30 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = load %struct.ade7854_state*, %struct.ade7854_state** %4, align 8
  %33 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %32, i32 0, i32 0
  store %struct.spi_device* %31, %struct.spi_device** %33, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 0
  %37 = call i32 @ade7854_probe(%struct.iio_dev* %34, i32* %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %14, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ade7854_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ade7854_probe(%struct.iio_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
