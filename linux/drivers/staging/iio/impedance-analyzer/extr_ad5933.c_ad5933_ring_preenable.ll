; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_ring_preenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_ring_preenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.ad5933_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AD5933_CTRL_STANDBY = common dso_local global i32 0, align 4
@AD5933_CTRL_INIT_START_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ad5933_ring_preenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5933_ring_preenable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ad5933_state*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.ad5933_state* @iio_priv(%struct.iio_dev* %6)
  store %struct.ad5933_state* %7, %struct.ad5933_state** %4, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @bitmap_empty(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.ad5933_state*, %struct.ad5933_state** %4, align 8
  %21 = call i32 @ad5933_reset(%struct.ad5933_state* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %46

26:                                               ; preds = %19
  %27 = load %struct.ad5933_state*, %struct.ad5933_state** %4, align 8
  %28 = load i32, i32* @AD5933_CTRL_STANDBY, align 4
  %29 = call i32 @ad5933_cmd(%struct.ad5933_state* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %46

34:                                               ; preds = %26
  %35 = load %struct.ad5933_state*, %struct.ad5933_state** %4, align 8
  %36 = load i32, i32* @AD5933_CTRL_INIT_START_FREQ, align 4
  %37 = call i32 @ad5933_cmd(%struct.ad5933_state* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @AD5933_CTRL_INIT_START_FREQ, align 4
  %44 = load %struct.ad5933_state*, %struct.ad5933_state** %4, align 8
  %45 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %40, %32, %24, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.ad5933_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @bitmap_empty(i32, i32) #1

declare dso_local i32 @ad5933_reset(%struct.ad5933_state*) #1

declare dso_local i32 @ad5933_cmd(%struct.ad5933_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
