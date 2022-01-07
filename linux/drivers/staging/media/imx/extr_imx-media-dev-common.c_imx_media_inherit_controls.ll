; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-dev-common.c_imx_media_inherit_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-dev-common.c_imx_media_inherit_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_media_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.video_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.media_entity = type { i32, %struct.media_pad* }
%struct.media_pad = type { i32, %struct.media_entity* }
%struct.v4l2_subdev = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"adding controls to %s from %s\0A\00", align 1
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_media_dev*, %struct.video_device*, %struct.media_entity*)* @imx_media_inherit_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_media_inherit_controls(%struct.imx_media_dev* %0, %struct.video_device* %1, %struct.media_entity* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx_media_dev*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.media_entity*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca %struct.media_pad*, align 8
  %12 = alloca %struct.media_pad*, align 8
  store %struct.imx_media_dev* %0, %struct.imx_media_dev** %5, align 8
  store %struct.video_device* %1, %struct.video_device** %6, align 8
  store %struct.media_entity* %2, %struct.media_entity** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %14 = call i64 @is_media_entity_v4l2_subdev(%struct.media_entity* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %3
  %17 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %18 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %17)
  store %struct.v4l2_subdev* %18, %struct.v4l2_subdev** %10, align 8
  %19 = load %struct.imx_media_dev*, %struct.imx_media_dev** %5, align 8
  %20 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.video_device*, %struct.video_device** %6, align 8
  %24 = getelementptr inbounds %struct.video_device, %struct.video_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30)
  %32 = load %struct.video_device*, %struct.video_device** %6, align 8
  %33 = getelementptr inbounds %struct.video_device, %struct.video_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @v4l2_ctrl_add_handler(i32 %34, i32 %37, i32* null, i32 1)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %16
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %93

43:                                               ; preds = %16
  br label %44

44:                                               ; preds = %43, %3
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %88, %44
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %48 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %91

51:                                               ; preds = %45
  %52 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %53 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %52, i32 0, i32 1
  %54 = load %struct.media_pad*, %struct.media_pad** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %54, i64 %56
  store %struct.media_pad* %57, %struct.media_pad** %12, align 8
  %58 = load %struct.media_pad*, %struct.media_pad** %12, align 8
  %59 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %51
  br label %88

65:                                               ; preds = %51
  %66 = load %struct.media_pad*, %struct.media_pad** %12, align 8
  %67 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %66)
  store %struct.media_pad* %67, %struct.media_pad** %11, align 8
  %68 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  %69 = icmp ne %struct.media_pad* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  %72 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %71, i32 0, i32 1
  %73 = load %struct.media_entity*, %struct.media_entity** %72, align 8
  %74 = call i64 @is_media_entity_v4l2_subdev(%struct.media_entity* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70, %65
  br label %88

77:                                               ; preds = %70
  %78 = load %struct.imx_media_dev*, %struct.imx_media_dev** %5, align 8
  %79 = load %struct.video_device*, %struct.video_device** %6, align 8
  %80 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  %81 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %80, i32 0, i32 1
  %82 = load %struct.media_entity*, %struct.media_entity** %81, align 8
  %83 = call i32 @imx_media_inherit_controls(%struct.imx_media_dev* %78, %struct.video_device* %79, %struct.media_entity* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %91

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %76, %64
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %45

91:                                               ; preds = %86, %45
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %41
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_add_handler(i32, i32, i32*, i32) #1

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
