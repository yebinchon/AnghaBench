; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_ring_postenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_ring_postenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad5933_state = type { i32 }

@AD5933_INIT_EXCITATION_TIME_ms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ad5933_ring_postenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5933_ring_postenable(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.ad5933_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %4 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %5 = call %struct.ad5933_state* @iio_priv(%struct.iio_dev* %4)
  store %struct.ad5933_state* %5, %struct.ad5933_state** %3, align 8
  %6 = load %struct.ad5933_state*, %struct.ad5933_state** %3, align 8
  %7 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %6, i32 0, i32 0
  %8 = load i32, i32* @AD5933_INIT_EXCITATION_TIME_ms, align 4
  %9 = call i32 @msecs_to_jiffies(i32 %8)
  %10 = call i32 @schedule_delayed_work(i32* %7, i32 %9)
  ret i32 0
}

declare dso_local %struct.ad5933_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
