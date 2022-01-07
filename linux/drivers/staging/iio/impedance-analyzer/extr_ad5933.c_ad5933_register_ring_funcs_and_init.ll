; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_register_ring_funcs_and_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_register_ring_funcs_and_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32* }
%struct.iio_buffer = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ad5933_ring_setup_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ad5933_register_ring_funcs_and_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5933_register_ring_funcs_and_init(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.iio_buffer*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %5 = call %struct.iio_buffer* (...) @iio_kfifo_allocate()
  store %struct.iio_buffer* %5, %struct.iio_buffer** %4, align 8
  %6 = load %struct.iio_buffer*, %struct.iio_buffer** %4, align 8
  %7 = icmp ne %struct.iio_buffer* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %17

11:                                               ; preds = %1
  %12 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %13 = load %struct.iio_buffer*, %struct.iio_buffer** %4, align 8
  %14 = call i32 @iio_device_attach_buffer(%struct.iio_dev* %12, %struct.iio_buffer* %13)
  %15 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %16 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %15, i32 0, i32 0
  store i32* @ad5933_ring_setup_ops, i32** %16, align 8
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %11, %8
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local %struct.iio_buffer* @iio_kfifo_allocate(...) #1

declare dso_local i32 @iio_device_attach_buffer(%struct.iio_dev*, %struct.iio_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
