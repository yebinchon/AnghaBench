; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/video/extr_video.c_comp_register_videodev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/video/extr_video.c_comp_register_videodev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.most_video_dev = type { %struct.TYPE_7__*, %struct.TYPE_8__, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@comp_videodev_template = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"MOST: %s\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"video_register_device failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_video_dev*)* @comp_register_videodev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_register_videodev(%struct.most_video_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.most_video_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.most_video_dev* %0, %struct.most_video_dev** %3, align 8
  %5 = load %struct.most_video_dev*, %struct.most_video_dev** %3, align 8
  %6 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %5, i32 0, i32 3
  %7 = call i32 @init_waitqueue_head(i32* %6)
  %8 = call %struct.TYPE_7__* (...) @video_device_alloc()
  %9 = load %struct.most_video_dev*, %struct.most_video_dev** %3, align 8
  %10 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %9, i32 0, i32 0
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %10, align 8
  %11 = load %struct.most_video_dev*, %struct.most_video_dev** %3, align 8
  %12 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %68

18:                                               ; preds = %1
  %19 = load %struct.most_video_dev*, %struct.most_video_dev** %3, align 8
  %20 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = bitcast %struct.TYPE_7__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_7__* @comp_videodev_template to i8*), i64 24, i1 false)
  %23 = load %struct.most_video_dev*, %struct.most_video_dev** %3, align 8
  %24 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %23, i32 0, i32 1
  %25 = load %struct.most_video_dev*, %struct.most_video_dev** %3, align 8
  %26 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %28, align 8
  %29 = load %struct.most_video_dev*, %struct.most_video_dev** %3, align 8
  %30 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %29, i32 0, i32 2
  %31 = load %struct.most_video_dev*, %struct.most_video_dev** %3, align 8
  %32 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32* %30, i32** %34, align 8
  %35 = load %struct.most_video_dev*, %struct.most_video_dev** %3, align 8
  %36 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.most_video_dev*, %struct.most_video_dev** %3, align 8
  %41 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @snprintf(i32 %39, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load %struct.most_video_dev*, %struct.most_video_dev** %3, align 8
  %46 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load %struct.most_video_dev*, %struct.most_video_dev** %3, align 8
  %49 = call i32 @video_set_drvdata(%struct.TYPE_7__* %47, %struct.most_video_dev* %48)
  %50 = load %struct.most_video_dev*, %struct.most_video_dev** %3, align 8
  %51 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %54 = call i32 @video_register_device(%struct.TYPE_7__* %52, i32 %53, i32 -1)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %18
  %58 = load %struct.most_video_dev*, %struct.most_video_dev** %3, align 8
  %59 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @v4l2_err(%struct.TYPE_8__* %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.most_video_dev*, %struct.most_video_dev** %3, align 8
  %63 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = call i32 @video_device_release(%struct.TYPE_7__* %64)
  br label %66

66:                                               ; preds = %57, %18
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %15
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.TYPE_7__* @video_device_alloc(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_7__*, %struct.most_video_dev*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @video_device_release(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
