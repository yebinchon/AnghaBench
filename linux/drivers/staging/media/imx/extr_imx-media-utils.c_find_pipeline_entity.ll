; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_find_pipeline_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_find_pipeline_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { %struct.media_entity* }
%struct.video_device = type { %struct.media_entity, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev = type { i32, %struct.media_entity }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.media_entity* (%struct.media_entity*, i32, i32, i32)* @find_pipeline_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.media_entity* @find_pipeline_entity(%struct.media_entity* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.media_pad*, align 8
  %11 = alloca %struct.video_device*, align 8
  %12 = alloca %struct.v4l2_subdev*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.media_pad* null, %struct.media_pad** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %4
  %16 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %17 = call i64 @is_media_entity_v4l2_subdev(%struct.media_entity* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %21 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %20)
  store %struct.v4l2_subdev* %21, %struct.v4l2_subdev** %12, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %29, i32 0, i32 1
  store %struct.media_entity* %30, %struct.media_entity** %5, align 8
  br label %69

31:                                               ; preds = %19
  br label %54

32:                                               ; preds = %15, %4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %37 = call i64 @is_media_entity_v4l2_video_device(%struct.media_entity* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %41 = call %struct.video_device* @media_entity_to_video_device(%struct.media_entity* %40)
  store %struct.video_device* %41, %struct.video_device** %11, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.video_device*, %struct.video_device** %11, align 8
  %44 = getelementptr inbounds %struct.video_device, %struct.video_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load %struct.video_device*, %struct.video_device** %11, align 8
  %51 = getelementptr inbounds %struct.video_device, %struct.video_device* %50, i32 0, i32 0
  store %struct.media_entity* %51, %struct.media_entity** %5, align 8
  br label %69

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %35, %32
  br label %54

54:                                               ; preds = %53, %31
  %55 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call %struct.media_pad* @imx_media_pipeline_pad(%struct.media_entity* %55, i32 %56, i32 %57, i32 %58)
  store %struct.media_pad* %59, %struct.media_pad** %10, align 8
  %60 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %61 = icmp ne %struct.media_pad* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %64 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %63, i32 0, i32 0
  %65 = load %struct.media_entity*, %struct.media_entity** %64, align 8
  br label %67

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi %struct.media_entity* [ %65, %62 ], [ null, %66 ]
  store %struct.media_entity* %68, %struct.media_entity** %5, align 8
  br label %69

69:                                               ; preds = %67, %49, %28
  %70 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  ret %struct.media_entity* %70
}

declare dso_local i64 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i64 @is_media_entity_v4l2_video_device(%struct.media_entity*) #1

declare dso_local %struct.video_device* @media_entity_to_video_device(%struct.media_entity*) #1

declare dso_local %struct.media_pad* @imx_media_pipeline_pad(%struct.media_entity*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
