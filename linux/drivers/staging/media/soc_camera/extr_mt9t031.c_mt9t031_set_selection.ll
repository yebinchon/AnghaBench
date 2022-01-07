; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_mt9t031.c_mt9t031_set_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_mt9t031.c_mt9t031_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i64, %struct.v4l2_rect }
%struct.v4l2_rect = type { i8*, i32, i8*, i32 }
%struct.i2c_client = type { i32 }
%struct.mt9t031 = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MT9T031_COLUMN_SKIP = common dso_local global i32 0, align 4
@MT9T031_MIN_WIDTH = common dso_local global i32 0, align 4
@MT9T031_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9T031_ROW_SKIP = common dso_local global i32 0, align 4
@MT9T031_MIN_HEIGHT = common dso_local global i32 0, align 4
@MT9T031_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @mt9t031_set_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t031_set_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.mt9t031*, align 8
  %10 = alloca %struct.v4l2_rect, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %8, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %14 = call %struct.mt9t031* @to_mt9t031(%struct.i2c_client* %13)
  store %struct.mt9t031* %14, %struct.mt9t031** %9, align 8
  %15 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %15, i32 0, i32 2
  %17 = bitcast %struct.v4l2_rect* %10 to i8*
  %18 = bitcast %struct.v4l2_rect* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 32, i1 false)
  %19 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %62

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @ALIGN(i8* %35, i32 2)
  %37 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 2
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @ALIGN(i8* %39, i32 2)
  %41 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 3
  %43 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 2
  %44 = load i32, i32* @MT9T031_COLUMN_SKIP, align 4
  %45 = load i32, i32* @MT9T031_MIN_WIDTH, align 4
  %46 = load i32, i32* @MT9T031_MAX_WIDTH, align 4
  %47 = call i32 @soc_camera_limit_side(i32* %42, i8** %43, i32 %44, i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  %49 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  %50 = load i32, i32* @MT9T031_ROW_SKIP, align 4
  %51 = load i32, i32* @MT9T031_MIN_HEIGHT, align 4
  %52 = load i32, i32* @MT9T031_MAX_HEIGHT, align 4
  %53 = call i32 @soc_camera_limit_side(i32* %48, i8** %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %55 = load %struct.mt9t031*, %struct.mt9t031** %9, align 8
  %56 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mt9t031*, %struct.mt9t031** %9, align 8
  %59 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mt9t031_set_params(%struct.i2c_client* %54, %struct.v4l2_rect* %10, i32 %57, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %33, %30
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9t031* @to_mt9t031(%struct.i2c_client*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ALIGN(i8*, i32) #1

declare dso_local i32 @soc_camera_limit_side(i32*, i8**, i32, i32, i32) #1

declare dso_local i32 @mt9t031_set_params(%struct.i2c_client*, %struct.v4l2_rect*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
