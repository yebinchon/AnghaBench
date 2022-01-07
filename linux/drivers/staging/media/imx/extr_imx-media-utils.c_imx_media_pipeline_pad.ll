; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_pipeline_pad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_pipeline_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_pad = type { i32, %struct.media_entity* }
%struct.media_entity = type { i32, %struct.media_pad* }
%struct.video_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev = type { i32 }

@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.media_pad* @imx_media_pipeline_pad(%struct.media_entity* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.media_pad*, align 8
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.media_entity*, align 8
  %11 = alloca %struct.media_pad*, align 8
  %12 = alloca %struct.video_device*, align 8
  %13 = alloca %struct.v4l2_subdev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.media_pad*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  store %struct.media_entity* %16, %struct.media_entity** %10, align 8
  store %struct.media_pad* null, %struct.media_pad** %11, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %121, %4
  %18 = load i32, i32* %14, align 4
  %19 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %20 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %124

23:                                               ; preds = %17
  %24 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %25 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %24, i32 0, i32 1
  %26 = load %struct.media_pad*, %struct.media_pad** %25, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %26, i64 %28
  store %struct.media_pad* %29, %struct.media_pad** %15, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.media_pad*, %struct.media_pad** %15, align 8
  %34 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %32, %23
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load %struct.media_pad*, %struct.media_pad** %15, align 8
  %44 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42, %32
  br label %121

50:                                               ; preds = %42, %39
  %51 = load %struct.media_pad*, %struct.media_pad** %15, align 8
  %52 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %51)
  store %struct.media_pad* %52, %struct.media_pad** %11, align 8
  %53 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  %54 = icmp ne %struct.media_pad* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %121

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %56
  %60 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  %61 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %60, i32 0, i32 1
  %62 = load %struct.media_entity*, %struct.media_entity** %61, align 8
  %63 = call i64 @is_media_entity_v4l2_subdev(%struct.media_entity* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  %67 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %66, i32 0, i32 1
  %68 = load %struct.media_entity*, %struct.media_entity** %67, align 8
  %69 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %68)
  store %struct.v4l2_subdev* %69, %struct.v4l2_subdev** %13, align 8
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %13, align 8
  %71 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  store %struct.media_pad* %77, %struct.media_pad** %5, align 8
  br label %125

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %59
  %80 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  %81 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %80, i32 0, i32 1
  %82 = load %struct.media_entity*, %struct.media_entity** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call %struct.media_pad* @imx_media_pipeline_pad(%struct.media_entity* %82, i32 %83, i32 %84, i32 %85)
  store %struct.media_pad* %86, %struct.media_pad** %5, align 8
  br label %125

87:                                               ; preds = %56
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %119

90:                                               ; preds = %87
  %91 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  %92 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %91, i32 0, i32 1
  %93 = load %struct.media_entity*, %struct.media_entity** %92, align 8
  %94 = call i64 @is_media_entity_v4l2_video_device(%struct.media_entity* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  %98 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %97, i32 0, i32 1
  %99 = load %struct.media_entity*, %struct.media_entity** %98, align 8
  %100 = call %struct.video_device* @media_entity_to_video_device(%struct.media_entity* %99)
  store %struct.video_device* %100, %struct.video_device** %12, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.video_device*, %struct.video_device** %12, align 8
  %103 = getelementptr inbounds %struct.video_device, %struct.video_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %101, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  store %struct.media_pad* %109, %struct.media_pad** %5, align 8
  br label %125

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110, %90
  %112 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  %113 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %112, i32 0, i32 1
  %114 = load %struct.media_entity*, %struct.media_entity** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call %struct.media_pad* @imx_media_pipeline_pad(%struct.media_entity* %114, i32 %115, i32 %116, i32 %117)
  store %struct.media_pad* %118, %struct.media_pad** %5, align 8
  br label %125

119:                                              ; preds = %87
  %120 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  store %struct.media_pad* %120, %struct.media_pad** %5, align 8
  br label %125

121:                                              ; preds = %55, %49
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %17

124:                                              ; preds = %17
  store %struct.media_pad* null, %struct.media_pad** %5, align 8
  br label %125

125:                                              ; preds = %124, %119, %111, %108, %79, %76
  %126 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  ret %struct.media_pad* %126
}

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local i64 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i64 @is_media_entity_v4l2_video_device(%struct.media_entity*) #1

declare dso_local %struct.video_device* @media_entity_to_video_device(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
