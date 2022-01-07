; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mt9v022.c_mt9v022_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mt9v022.c_mt9v022_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32, i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.i2c_client = type { i32 }
%struct.mt9v022 = type { %struct.mt9v022_datafmt*, i32, i32, i64 }
%struct.mt9v022_datafmt = type { i64, i32 }

@MEDIA_BUS_FMT_SBGGR8_1X8 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_SBGGR10_1X10 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MT9V022_MIN_WIDTH = common dso_local global i32 0, align 4
@MT9V022_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9V022_MIN_HEIGHT = common dso_local global i64 0, align 8
@MT9V022_MAX_HEIGHT = common dso_local global i64 0, align 8
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @mt9v022_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v022_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.mt9v022*, align 8
  %11 = alloca %struct.mt9v022_datafmt*, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %13 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %14, %struct.v4l2_mbus_framefmt** %8, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %9, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %18 = call %struct.mt9v022* @to_mt9v022(%struct.i2c_client* %17)
  store %struct.mt9v022* %18, %struct.mt9v022** %10, align 8
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MEDIA_BUS_FMT_SBGGR8_1X8, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %26 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MEDIA_BUS_FMT_SBGGR10_1X10, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %24, %3
  %31 = phi i1 [ true, %3 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %103

40:                                               ; preds = %30
  %41 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %41, i32 0, i32 3
  %43 = load i32, i32* @MT9V022_MIN_WIDTH, align 4
  %44 = load i32, i32* @MT9V022_MAX_WIDTH, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %47 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %46, i32 0, i32 2
  %48 = load i64, i64* @MT9V022_MIN_HEIGHT, align 8
  %49 = load %struct.mt9v022*, %struct.mt9v022** %10, align 8
  %50 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load i64, i64* @MT9V022_MAX_HEIGHT, align 8
  %54 = load %struct.mt9v022*, %struct.mt9v022** %10, align 8
  %55 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @v4l_bound_align_image(i32* %42, i32 %43, i32 %44, i32 %45, i32* %47, i64 %52, i64 %57, i32 %58, i32 0)
  %60 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %61 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.mt9v022*, %struct.mt9v022** %10, align 8
  %64 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mt9v022*, %struct.mt9v022** %10, align 8
  %67 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.mt9v022_datafmt* @mt9v022_find_datafmt(i64 %62, i32 %65, i32 %68)
  store %struct.mt9v022_datafmt* %69, %struct.mt9v022_datafmt** %11, align 8
  %70 = load %struct.mt9v022_datafmt*, %struct.mt9v022_datafmt** %11, align 8
  %71 = icmp ne %struct.mt9v022_datafmt* %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %40
  %73 = load %struct.mt9v022*, %struct.mt9v022** %10, align 8
  %74 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %73, i32 0, i32 0
  %75 = load %struct.mt9v022_datafmt*, %struct.mt9v022_datafmt** %74, align 8
  store %struct.mt9v022_datafmt* %75, %struct.mt9v022_datafmt** %11, align 8
  %76 = load %struct.mt9v022_datafmt*, %struct.mt9v022_datafmt** %11, align 8
  %77 = getelementptr inbounds %struct.mt9v022_datafmt, %struct.mt9v022_datafmt* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %80 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %72, %40
  %82 = load %struct.mt9v022_datafmt*, %struct.mt9v022_datafmt** %11, align 8
  %83 = getelementptr inbounds %struct.mt9v022_datafmt, %struct.mt9v022_datafmt* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %86 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %81
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %94 = load %struct.mt9v022_datafmt*, %struct.mt9v022_datafmt** %11, align 8
  %95 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %96 = call i32 @mt9v022_s_fmt(%struct.v4l2_subdev* %93, %struct.mt9v022_datafmt* %94, %struct.v4l2_mbus_framefmt* %95)
  store i32 %96, i32* %4, align 4
  br label %103

97:                                               ; preds = %81
  %98 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %99 = getelementptr inbounds %struct.v4l2_subdev_pad_config, %struct.v4l2_subdev_pad_config* %98, i32 0, i32 0
  %100 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %101 = bitcast %struct.v4l2_mbus_framefmt* %99 to i8*
  %102 = bitcast %struct.v4l2_mbus_framefmt* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %97, %92, %37
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9v022* @to_mt9v022(%struct.i2c_client*) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i64, i64, i32, i32) #1

declare dso_local %struct.mt9v022_datafmt* @mt9v022_find_datafmt(i64, i32, i32) #1

declare dso_local i32 @mt9v022_s_fmt(%struct.v4l2_subdev*, %struct.mt9v022_datafmt*, %struct.v4l2_mbus_framefmt*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
