; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854-i2c.c_ade7854_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854-i2c.c_ade7854_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.ade7854_state = type { i32, %struct.i2c_client*, i32, i32 }
%struct.iio_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ade7854_i2c_read_reg = common dso_local global i32 0, align 4
@ade7854_i2c_write_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ade7854_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ade7854_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ade7854_state*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %9, i32 24)
  store %struct.iio_dev* %10, %struct.iio_dev** %7, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %12 = icmp ne %struct.iio_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.ade7854_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.ade7854_state* %18, %struct.ade7854_state** %6, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.iio_dev* %20)
  %22 = load i32, i32* @ade7854_i2c_read_reg, align 4
  %23 = load %struct.ade7854_state*, %struct.ade7854_state** %6, align 8
  %24 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @ade7854_i2c_write_reg, align 4
  %26 = load %struct.ade7854_state*, %struct.ade7854_state** %6, align 8
  %27 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load %struct.ade7854_state*, %struct.ade7854_state** %6, align 8
  %30 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %29, i32 0, i32 1
  store %struct.i2c_client* %28, %struct.i2c_client** %30, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ade7854_state*, %struct.ade7854_state** %6, align 8
  %35 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = call i32 @ade7854_probe(%struct.iio_dev* %36, i32* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %16, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ade7854_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ade7854_probe(%struct.iio_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
