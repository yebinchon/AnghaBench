; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_pipeline_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_pipeline_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_pipeline = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.iss_device* }
%struct.TYPE_3__ = type { %struct.media_entity }
%struct.media_entity = type { %struct.media_pad* }
%struct.media_pad = type { i32, %struct.media_entity* }
%struct.iss_device = type { i32, i32 }
%struct.v4l2_subdev = type { i32, i32 }

@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: module stop timeout.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_pipeline*, %struct.media_entity*)* @iss_pipeline_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_pipeline_disable(%struct.iss_pipeline* %0, %struct.media_entity* %1) #0 {
  %3 = alloca %struct.iss_pipeline*, align 8
  %4 = alloca %struct.media_entity*, align 8
  %5 = alloca %struct.iss_device*, align 8
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iss_pipeline* %0, %struct.iss_pipeline** %3, align 8
  store %struct.media_entity* %1, %struct.media_entity** %4, align 8
  %11 = load %struct.iss_pipeline*, %struct.iss_pipeline** %3, align 8
  %12 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.iss_device*, %struct.iss_device** %14, align 8
  store %struct.iss_device* %15, %struct.iss_device** %5, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.iss_pipeline*, %struct.iss_pipeline** %3, align 8
  %17 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.media_entity* %20, %struct.media_entity** %6, align 8
  br label %21

21:                                               ; preds = %2, %77
  %22 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %23 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %22, i32 0, i32 0
  %24 = load %struct.media_pad*, %struct.media_pad** %23, align 8
  %25 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %24, i64 0
  store %struct.media_pad* %25, %struct.media_pad** %7, align 8
  %26 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %27 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %78

33:                                               ; preds = %21
  %34 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %35 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %34)
  store %struct.media_pad* %35, %struct.media_pad** %7, align 8
  %36 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %37 = icmp ne %struct.media_pad* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %40 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %39, i32 0, i32 1
  %41 = load %struct.media_entity*, %struct.media_entity** %40, align 8
  %42 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38, %33
  br label %78

45:                                               ; preds = %38
  %46 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %47 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %46, i32 0, i32 1
  %48 = load %struct.media_entity*, %struct.media_entity** %47, align 8
  store %struct.media_entity* %48, %struct.media_entity** %6, align 8
  %49 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %50 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %51 = icmp eq %struct.media_entity* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %78

53:                                               ; preds = %45
  %54 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %55 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %54)
  store %struct.v4l2_subdev* %55, %struct.v4l2_subdev** %8, align 8
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %57 = load i32, i32* @video, align 4
  %58 = load i32, i32* @s_stream, align 4
  %59 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %56, i32 %57, i32 %58, i32 0)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %53
  %63 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %64 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_warn(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %71 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %70, i32 0, i32 0
  %72 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %72, i32 0, i32 0
  %74 = call i32 @media_entity_enum_set(i32* %71, i32* %73)
  %75 = load i32, i32* @ETIMEDOUT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %62, %53
  br label %21

78:                                               ; preds = %52, %44, %32
  %79 = load i32, i32* %9, align 4
  ret i32 %79
}

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @media_entity_enum_set(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
