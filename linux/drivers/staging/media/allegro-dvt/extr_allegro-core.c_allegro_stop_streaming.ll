; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.allegro_channel = type { %struct.TYPE_2__, %struct.allegro_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.allegro_dev = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: stop streaming\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@ALLEGRO_STATE_STOPPED = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @allegro_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allegro_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.allegro_channel*, align 8
  %4 = alloca %struct.allegro_dev*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %7 = call %struct.allegro_channel* @vb2_get_drv_priv(%struct.vb2_queue* %6)
  store %struct.allegro_channel* %7, %struct.allegro_channel** %3, align 8
  %8 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %9 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %8, i32 0, i32 1
  %10 = load %struct.allegro_dev*, %struct.allegro_dev** %9, align 8
  store %struct.allegro_dev* %10, %struct.allegro_dev** %4, align 8
  %11 = load i32, i32* @debug, align 4
  %12 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %13 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %12, i32 0, i32 0
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %15 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @V4L2_TYPE_IS_OUTPUT(i64 %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 @v4l2_dbg(i32 2, i32 %11, i32* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %23 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @V4L2_TYPE_IS_OUTPUT(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %1
  %28 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %29 = load i32, i32* @ALLEGRO_STATE_STOPPED, align 4
  %30 = call i32 @allegro_set_state(%struct.allegro_channel* %28, i32 %29)
  br label %31

31:                                               ; preds = %38, %27
  %32 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %33 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %35)
  store %struct.vb2_v4l2_buffer* %36, %struct.vb2_v4l2_buffer** %5, align 8
  %37 = icmp ne %struct.vb2_v4l2_buffer* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %40 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %41 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %39, i32 %40)
  br label %31

42:                                               ; preds = %31
  br label %65

43:                                               ; preds = %1
  %44 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %45 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %51 = call i32 @allegro_destroy_channel(%struct.allegro_channel* %50)
  br label %52

52:                                               ; preds = %59, %49
  %53 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %54 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %56)
  store %struct.vb2_v4l2_buffer* %57, %struct.vb2_v4l2_buffer** %5, align 8
  %58 = icmp ne %struct.vb2_v4l2_buffer* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %61 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %62 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %60, i32 %61)
  br label %52

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %43
  br label %65

65:                                               ; preds = %64, %42
  ret void
}

declare dso_local %struct.allegro_channel* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i8*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i64) #1

declare dso_local i32 @allegro_set_state(%struct.allegro_channel*, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @allegro_destroy_channel(%struct.allegro_channel*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
