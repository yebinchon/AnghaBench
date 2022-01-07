; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854.c_ade7854_read_16bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854.c_ade7854_read_16bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ade7854_state = type { i32 (%struct.device*, i32, i32*, i32)* }
%struct.iio_dev_attr = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ade7854_read_16bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ade7854_read_16bit(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.ade7854_state*, align 8
  %12 = alloca %struct.iio_dev_attr*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %13)
  store %struct.iio_dev* %14, %struct.iio_dev** %10, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %16 = call %struct.ade7854_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ade7854_state* %16, %struct.ade7854_state** %11, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %18 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %17)
  store %struct.iio_dev_attr* %18, %struct.iio_dev_attr** %12, align 8
  %19 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %20 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %19, i32 0, i32 0
  %21 = load i32 (%struct.device*, i32, i32*, i32)*, i32 (%struct.device*, i32, i32*, i32)** %20, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %24 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %21(%struct.device* %22, i32 %25, i32* %9, i32 16)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %35

31:                                               ; preds = %3
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %29
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ade7854_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
