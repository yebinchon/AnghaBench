; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_YUYV8_2X8 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @ov9740_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9740_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %9 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %10, %struct.v4l2_mbus_framefmt** %8, align 8
  %11 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %19, i32 0, i32 4
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i32 0, i32 3
  %23 = call i32 @ov9740_res_roundup(i32* %20, i32* %22)
  %24 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %25 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %26 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @MEDIA_BUS_FMT_YUYV8_2X8, align 4
  %28 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %18
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %41 = call i32 @ov9740_s_fmt(%struct.v4l2_subdev* %39, %struct.v4l2_mbus_framefmt* %40)
  store i32 %41, i32* %4, align 4
  br label %48

42:                                               ; preds = %18
  %43 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_pad_config, %struct.v4l2_subdev_pad_config* %43, i32 0, i32 0
  %45 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %46 = bitcast %struct.v4l2_mbus_framefmt* %44 to i8*
  %47 = bitcast %struct.v4l2_mbus_framefmt* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 20, i1 false)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %38, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @ov9740_res_roundup(i32*, i32*) #1

declare dso_local i32 @ov9740_s_fmt(%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
