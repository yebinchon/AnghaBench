; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_probe_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_probe_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev = type { i32, i32 }
%struct.v4l2_subdev_format = type { %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@g_tvnorms = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Couldn't activate the camera: %d\0A\00", align 1
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*)* @soc_camera_probe_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_probe_finish(%struct.soc_camera_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_camera_device*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_format, align 4
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %3, align 8
  %8 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %9 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %8)
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %4, align 8
  %10 = bitcast %struct.v4l2_subdev_format* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 20, i1 false)
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 1
  %12 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 0
  store %struct.v4l2_mbus_framefmt* %13, %struct.v4l2_mbus_framefmt** %6, align 8
  %14 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %15 = call i32 @soc_camera_grp_id(%struct.soc_camera_device* %14)
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %20 = call i32 @v4l2_set_subdev_hostdata(%struct.v4l2_subdev* %18, %struct.soc_camera_device* %19)
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %22 = load i32, i32* @video, align 4
  %23 = load i32, i32* @g_tvnorms, align 4
  %24 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %25 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %24, i32 0, i32 6
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 (%struct.v4l2_subdev*, i32, i32, i32*, ...) @v4l2_subdev_call(%struct.v4l2_subdev* %21, i32 %22, i32 %23, i32* %27)
  %29 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %30 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %29, i32 0, i32 5
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @v4l2_ctrl_add_handler(i32* %30, i32 %33, i32* null, i32 1)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %103

39:                                               ; preds = %1
  %40 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %41 = call i32 @soc_camera_add_device(%struct.soc_camera_device* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %46 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %103

51:                                               ; preds = %39
  %52 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %53 = call i32 @soc_camera_init_user_formats(%struct.soc_camera_device* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %99

57:                                               ; preds = %51
  %58 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %59 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %60 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %62 = call i32 @soc_camera_video_start(%struct.soc_camera_device* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %96

66:                                               ; preds = %57
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %68 = load i32, i32* @pad, align 4
  %69 = load i32, i32* @get_fmt, align 4
  %70 = call i32 (%struct.v4l2_subdev*, i32, i32, i32*, ...) @v4l2_subdev_call(%struct.v4l2_subdev* %67, i32 %68, i32 %69, i32* null, %struct.v4l2_subdev_format* %5)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %66
  %73 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %74 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %77 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %79 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %82 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %84 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %87 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %89 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %92 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %72, %66
  %94 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %95 = call i32 @soc_camera_remove_device(%struct.soc_camera_device* %94)
  store i32 0, i32* %2, align 4
  br label %103

96:                                               ; preds = %65
  %97 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %98 = call i32 @soc_camera_free_user_formats(%struct.soc_camera_device* %97)
  br label %99

99:                                               ; preds = %96, %56
  %100 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %101 = call i32 @soc_camera_remove_device(%struct.soc_camera_device* %100)
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %99, %93, %44, %37
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @soc_camera_grp_id(%struct.soc_camera_device*) #1

declare dso_local i32 @v4l2_set_subdev_hostdata(%struct.v4l2_subdev*, %struct.soc_camera_device*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, ...) #1

declare dso_local i32 @v4l2_ctrl_add_handler(i32*, i32, i32*, i32) #1

declare dso_local i32 @soc_camera_add_device(%struct.soc_camera_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @soc_camera_init_user_formats(%struct.soc_camera_device*) #1

declare dso_local i32 @soc_camera_video_start(%struct.soc_camera_device*) #1

declare dso_local i32 @soc_camera_remove_device(%struct.soc_camera_device*) #1

declare dso_local i32 @soc_camera_free_user_formats(%struct.soc_camera_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
