; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_default_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_default_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32 }
%struct.v4l2_selection = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@get_selection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_selection*)* @default_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_g_selection(%struct.soc_camera_device* %0, %struct.v4l2_selection* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_selection*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_subdev_selection, align 4
  %8 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_selection* %1, %struct.v4l2_selection** %5, align 8
  %9 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %10 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %9)
  store %struct.v4l2_subdev* %10, %struct.v4l2_subdev** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %7, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %7, i32 0, i32 1
  %13 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %7, i32 0, i32 2
  %17 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %17, i32* %16, align 4
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %19 = load i32, i32* @pad, align 4
  %20 = load i32, i32* @get_selection, align 4
  %21 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %18, i32 %19, i32 %20, i32* null, %struct.v4l2_subdev_selection* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %31

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_selection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
