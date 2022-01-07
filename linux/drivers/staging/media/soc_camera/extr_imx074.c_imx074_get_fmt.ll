; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_imx074.c_imx074_get_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_imx074.c_imx074_get_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.imx074 = type { %struct.imx074_datafmt* }
%struct.imx074_datafmt = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IMX074_WIDTH = common dso_local global i32 0, align 4
@IMX074_HEIGHT = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @imx074_get_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx074_get_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.imx074*, align 8
  %11 = alloca %struct.imx074_datafmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %12 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 1
  store %struct.v4l2_mbus_framefmt* %13, %struct.v4l2_mbus_framefmt** %8, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %9, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %17 = call %struct.imx074* @to_imx074(%struct.i2c_client* %16)
  store %struct.imx074* %17, %struct.imx074** %10, align 8
  %18 = load %struct.imx074*, %struct.imx074** %10, align 8
  %19 = getelementptr inbounds %struct.imx074, %struct.imx074* %18, i32 0, i32 0
  %20 = load %struct.imx074_datafmt*, %struct.imx074_datafmt** %19, align 8
  store %struct.imx074_datafmt* %20, %struct.imx074_datafmt** %11, align 8
  %21 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %48

28:                                               ; preds = %3
  %29 = load %struct.imx074_datafmt*, %struct.imx074_datafmt** %11, align 8
  %30 = getelementptr inbounds %struct.imx074_datafmt, %struct.imx074_datafmt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.imx074_datafmt*, %struct.imx074_datafmt** %11, align 8
  %35 = getelementptr inbounds %struct.imx074_datafmt, %struct.imx074_datafmt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @IMX074_WIDTH, align 4
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @IMX074_HEIGHT, align 4
  %43 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %46 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %47 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %28, %25
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.imx074* @to_imx074(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
