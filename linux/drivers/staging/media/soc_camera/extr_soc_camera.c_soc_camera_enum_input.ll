; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_input = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @soc_camera_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.soc_camera_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.soc_camera_device*, %struct.soc_camera_device** %10, align 8
  store %struct.soc_camera_device* %11, %struct.soc_camera_device** %8, align 8
  %12 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %21 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %24 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @strscpy(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %19, %16
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
