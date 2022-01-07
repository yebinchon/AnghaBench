; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_pipeline_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_pipeline_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_media_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.media_entity = type { i64 }
%struct.v4l2_subdev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_media_pipeline_set_stream(%struct.imx_media_dev* %0, %struct.media_entity* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx_media_dev*, align 8
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca i32, align 4
  store %struct.imx_media_dev* %0, %struct.imx_media_dev** %5, align 8
  store %struct.media_entity* %1, %struct.media_entity** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %11 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %64

16:                                               ; preds = %3
  %17 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %18 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %17)
  store %struct.v4l2_subdev* %18, %struct.v4l2_subdev** %8, align 8
  %19 = load %struct.imx_media_dev*, %struct.imx_media_dev** %5, align 8
  %20 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %16
  %26 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %27 = load %struct.imx_media_dev*, %struct.imx_media_dev** %5, align 8
  %28 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %27, i32 0, i32 1
  %29 = call i32 @__media_pipeline_start(%struct.media_entity* %26, i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %58

33:                                               ; preds = %25
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %35 = load i32, i32* @video, align 4
  %36 = load i32, i32* @s_stream, align 4
  %37 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %34, i32 %35, i32 %36, i32 1)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %42 = call i32 @__media_pipeline_stop(%struct.media_entity* %41)
  br label %43

43:                                               ; preds = %40, %33
  br label %57

44:                                               ; preds = %16
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %46 = load i32, i32* @video, align 4
  %47 = load i32, i32* @s_stream, align 4
  %48 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %45, i32 %46, i32 %47, i32 0)
  %49 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %50 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %55 = call i32 @__media_pipeline_stop(%struct.media_entity* %54)
  br label %56

56:                                               ; preds = %53, %44
  br label %57

57:                                               ; preds = %56, %43
  br label %58

58:                                               ; preds = %57, %32
  %59 = load %struct.imx_media_dev*, %struct.imx_media_dev** %5, align 8
  %60 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %58, %13
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__media_pipeline_start(%struct.media_entity*, i32*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @__media_pipeline_stop(%struct.media_entity*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
