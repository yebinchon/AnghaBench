; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_default_enum_framesizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_default_enum_framesizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32 }
%struct.v4l2_frmsizeenum = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.soc_camera_format_xlate = type { i32 }
%struct.v4l2_subdev_frame_size_enum = type { i64, i64, i64, i64, i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_frame_size = common dso_local global i32 0, align 4
@V4L2_FRMSIZE_TYPE_DISCRETE = common dso_local global i32 0, align 4
@V4L2_FRMSIZE_TYPE_CONTINUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_frmsizeenum*)* @default_enum_framesizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_enum_framesizes(%struct.soc_camera_device* %0, %struct.v4l2_frmsizeenum* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_frmsizeenum*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.soc_camera_format_xlate*, align 8
  %9 = alloca %struct.v4l2_subdev_frame_size_enum, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_frmsizeenum* %1, %struct.v4l2_frmsizeenum** %5, align 8
  %10 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %11 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %10)
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %7, align 8
  %12 = bitcast %struct.v4l2_subdev_frame_size_enum* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 48, i1 false)
  %13 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 5
  %14 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 6
  %16 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 8
  %19 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %20 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device* %19, i32 %22)
  store %struct.soc_camera_format_xlate* %23, %struct.soc_camera_format_xlate** %8, align 8
  %24 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %8, align 8
  %25 = icmp ne %struct.soc_camera_format_xlate* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %98

29:                                               ; preds = %2
  %30 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %8, align 8
  %31 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 4
  store i32 %32, i32* %33, align 8
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %35 = load i32, i32* @pad, align 4
  %36 = load i32, i32* @enum_frame_size, align 4
  %37 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %34, i32 %35, i32 %36, i32* null, %struct.v4l2_subdev_frame_size_enum* %9)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %98

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load i32, i32* @V4L2_FRMSIZE_TYPE_DISCRETE, align 4
  %56 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i64 %64, i64* %67, align 8
  store i32 0, i32* %3, align 4
  br label %98

68:                                               ; preds = %48, %42
  %69 = load i32, i32* @V4L2_FRMSIZE_TYPE_CONTINUOUS, align 4
  %70 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i64 %78, i64* %81, align 8
  %82 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i64 %83, i64* %86, align 8
  %87 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  store i64 %88, i64* %91, align 8
  %92 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %93 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  store i32 1, i32* %94, align 8
  %95 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 5
  store i32 1, i32* %97, align 4
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %68, %54, %40, %26
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device*, i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_frame_size_enum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
