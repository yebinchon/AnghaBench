; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_init_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_init_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.v4l2_subdev_format = type { i32, %struct.v4l2_mbus_framefmt, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_media_init_cfg(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.v4l2_subdev_format, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %4, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %38, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %10, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %9
  %17 = call i32 @memset(%struct.v4l2_subdev_format* %6, i32 0, i32 12)
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @get_fmt, align 4
  %25 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %22, i32 %23, i32 %24, i32* null, %struct.v4l2_subdev_format* %6)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %38

29:                                               ; preds = %16
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %31 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %30, %struct.v4l2_subdev_pad_config* %31, i32 %32)
  store %struct.v4l2_mbus_framefmt* %33, %struct.v4l2_mbus_framefmt** %5, align 8
  %34 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 1
  %36 = bitcast %struct.v4l2_mbus_framefmt* %34 to i8*
  %37 = bitcast %struct.v4l2_mbus_framefmt* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  br label %38

38:                                               ; preds = %29, %28
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %9

41:                                               ; preds = %9
  ret i32 0
}

declare dso_local i32 @memset(%struct.v4l2_subdev_format*, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
