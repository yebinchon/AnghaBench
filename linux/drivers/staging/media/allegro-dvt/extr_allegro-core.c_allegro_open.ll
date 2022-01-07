; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.video_device = type { i32 }
%struct.allegro_dev = type { i32, i32 }
%struct.allegro_channel = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, %struct.v4l2_ctrl_handler, %struct.allegro_dev*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@allegro_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_PROFILE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_1B = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_LEVEL = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_5_1 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE_PEAK = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_CPB_SIZE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_GOP_SIZE = common dso_local global i32 0, align 4
@ALLEGRO_GOP_SIZE_MAX = common dso_local global i32 0, align 4
@V4L2_CID_MIN_BUFFERS_FOR_OUTPUT = common dso_local global i32 0, align 4
@allegro_queue_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @allegro_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.allegro_dev*, align 8
  %6 = alloca %struct.allegro_channel*, align 8
  %7 = alloca %struct.v4l2_ctrl_handler*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.video_device* @video_devdata(%struct.file* %9)
  store %struct.video_device* %10, %struct.video_device** %4, align 8
  %11 = load %struct.video_device*, %struct.video_device** %4, align 8
  %12 = call %struct.allegro_dev* @video_get_drvdata(%struct.video_device* %11)
  store %struct.allegro_dev* %12, %struct.allegro_dev** %5, align 8
  store %struct.allegro_channel* null, %struct.allegro_channel** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.allegro_channel* @kzalloc(i32 144, i32 %13)
  store %struct.allegro_channel* %14, %struct.allegro_channel** %6, align 8
  %15 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %16 = icmp ne %struct.allegro_channel* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %140

20:                                               ; preds = %1
  %21 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %22 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %21, i32 0, i32 6
  %23 = load %struct.video_device*, %struct.video_device** %4, align 8
  %24 = call i32 @v4l2_fh_init(%struct.TYPE_3__* %22, %struct.video_device* %23)
  %25 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %26 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %25, i32 0, i32 6
  %27 = load %struct.file*, %struct.file** %3, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %28, align 8
  %29 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %30 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %29, i32 0, i32 6
  %31 = call i32 @v4l2_fh_add(%struct.TYPE_3__* %30)
  %32 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %33 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %32, i32 0, i32 20
  %34 = call i32 @init_completion(i32* %33)
  %35 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %36 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %37 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %36, i32 0, i32 19
  store %struct.allegro_dev* %35, %struct.allegro_dev** %37, align 8
  %38 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %39 = call i32 @allegro_set_default_params(%struct.allegro_channel* %38)
  %40 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %41 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %40, i32 0, i32 18
  store %struct.v4l2_ctrl_handler* %41, %struct.v4l2_ctrl_handler** %7, align 8
  %42 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %43 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %42, i32 0)
  %44 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %45 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_PROFILE, align 4
  %46 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE, align 4
  %47 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE, align 4
  %48 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %44, i32* @allegro_ctrl_ops, i32 %45, i32 %46, i32 0, i32 %47)
  %49 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %50 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %49, i32 0, i32 17
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_1B, align 4
  %52 = shl i32 1, %51
  store i32 %52, i32* %8, align 4
  %53 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %54 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LEVEL, align 4
  %55 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_5_1, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_5_1, align 4
  %58 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %53, i32* @allegro_ctrl_ops, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %60 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %59, i32 0, i32 16
  store i8* %58, i8** %60, align 8
  %61 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %62 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE_MODE, align 4
  %63 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %64 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %65 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %64, i32 0, i32 14
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %61, i32* @allegro_ctrl_ops, i32 %62, i32 %63, i32 0, i32 %66)
  %68 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %69 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %68, i32 0, i32 15
  store i8* %67, i8** %69, align 8
  %70 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %71 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE, align 4
  %72 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_5_1, align 4
  %73 = call i32 @maximum_bitrate(i32 %72)
  %74 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %75 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %70, i32* @allegro_ctrl_ops, i32 %71, i32 0, i32 %73, i32 1, i32 %76)
  %78 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %79 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %78, i32 0, i32 13
  store i8* %77, i8** %79, align 8
  %80 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %81 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE_PEAK, align 4
  %82 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_5_1, align 4
  %83 = call i32 @maximum_bitrate(i32 %82)
  %84 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %85 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %80, i32* @allegro_ctrl_ops, i32 %81, i32 0, i32 %83, i32 1, i32 %86)
  %88 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %89 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %88, i32 0, i32 12
  store i8* %87, i8** %89, align 8
  %90 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %91 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_CPB_SIZE, align 4
  %92 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_5_1, align 4
  %93 = call i32 @maximum_cpb_size(i32 %92)
  %94 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %95 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %90, i32* @allegro_ctrl_ops, i32 %91, i32 0, i32 %93, i32 1, i32 %96)
  %98 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %99 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %98, i32 0, i32 11
  store i8* %97, i8** %99, align 8
  %100 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %101 = load i32, i32* @V4L2_CID_MPEG_VIDEO_GOP_SIZE, align 4
  %102 = load i32, i32* @ALLEGRO_GOP_SIZE_MAX, align 4
  %103 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %104 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %100, i32* @allegro_ctrl_ops, i32 %101, i32 0, i32 %102, i32 1, i32 %105)
  %107 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %108 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %107, i32 0, i32 10
  store i8* %106, i8** %108, align 8
  %109 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %110 = load i32, i32* @V4L2_CID_MIN_BUFFERS_FOR_OUTPUT, align 4
  %111 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %109, i32* @allegro_ctrl_ops, i32 %110, i32 1, i32 32, i32 1, i32 1)
  %112 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %113 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %114 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %112, %struct.v4l2_ctrl_handler** %115, align 8
  %116 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %117 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %116, i32 0, i32 4
  store i32 -1, i32* %117, align 8
  %118 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %119 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %118, i32 0, i32 5
  store i32 -1, i32* %119, align 4
  %120 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %121 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %120, i32 0, i32 9
  %122 = call i32 @INIT_LIST_HEAD(i32* %121)
  %123 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %124 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %123, i32 0, i32 8
  %125 = call i32 @INIT_LIST_HEAD(i32* %124)
  %126 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %127 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %126, i32 0, i32 7
  %128 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %129 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %128, i32 0, i32 1
  %130 = call i32 @list_add(i32* %127, i32* %129)
  %131 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %132 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %135 = load i32, i32* @allegro_queue_init, align 4
  %136 = call i32 @v4l2_m2m_ctx_init(i32 %133, %struct.allegro_channel* %134, i32 %135)
  %137 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %138 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 8
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %20, %17
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.allegro_dev* @video_get_drvdata(%struct.video_device*) #1

declare dso_local %struct.allegro_channel* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_3__*, %struct.video_device*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_3__*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @allegro_set_default_params(%struct.allegro_channel*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @maximum_bitrate(i32) #1

declare dso_local i32 @maximum_cpb_size(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.allegro_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
