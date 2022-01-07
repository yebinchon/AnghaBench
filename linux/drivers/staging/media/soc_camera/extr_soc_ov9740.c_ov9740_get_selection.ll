; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_get_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_get_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OV9740_MAX_WIDTH = common dso_local global i32 0, align 4
@OV9740_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @ov9740_get_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9740_get_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %8 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %38

16:                                               ; preds = %3
  %17 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %35 [
    i32 128, label %20
    i32 129, label %20
  ]

20:                                               ; preds = %16, %16
  %21 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* @OV9740_MAX_WIDTH, align 4
  %28 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @OV9740_MAX_HEIGHT, align 4
  %32 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %38

35:                                               ; preds = %16
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %20, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
