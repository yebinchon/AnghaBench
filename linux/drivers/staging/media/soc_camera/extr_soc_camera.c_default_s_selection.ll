; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_default_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_default_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32 }
%struct.v4l2_selection = type { i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_selection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_selection*)* @default_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_s_selection(%struct.soc_camera_device* %0, %struct.v4l2_selection* %1) #0 {
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
  %12 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %7, i32 0, i32 1
  %16 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %7, i32 0, i32 2
  %20 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %7, i32 0, i32 3
  %24 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %24, i32* %23, align 4
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %26 = load i32, i32* @pad, align 4
  %27 = load i32, i32* @set_selection, align 4
  %28 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %25, i32 %26, i32 %27, i32* null, %struct.v4l2_subdev_selection* %7)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %31
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_selection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
