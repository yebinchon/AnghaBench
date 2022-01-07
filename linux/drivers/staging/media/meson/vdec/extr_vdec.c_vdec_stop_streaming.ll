; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.amvdec_session = type { i64, i64, i32, i64, i32*, i32, i32, i32, %struct.amvdec_core*, i32 }
%struct.amvdec_core = type { i32*, i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@STATUS_RUNNING = common dso_local global i64 0, align 8
@STATUS_NEEDS_RESUME = common dso_local global i64 0, align 8
@STATUS_STOPPED = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @vdec_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdec_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.amvdec_session*, align 8
  %4 = alloca %struct.amvdec_core*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %7 = call %struct.amvdec_session* @vb2_get_drv_priv(%struct.vb2_queue* %6)
  store %struct.amvdec_session* %7, %struct.amvdec_session** %3, align 8
  %8 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %9 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %8, i32 0, i32 8
  %10 = load %struct.amvdec_core*, %struct.amvdec_core** %9, align 8
  store %struct.amvdec_core* %10, %struct.amvdec_core** %4, align 8
  %11 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %12 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @STATUS_RUNNING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %1
  %17 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %18 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @STATUS_NEEDS_RESUME, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %76

22:                                               ; preds = %16
  %23 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %24 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %29 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %76, label %32

32:                                               ; preds = %27, %22, %1
  %33 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %34 = call i64 @vdec_codec_needs_recycle(%struct.amvdec_session* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %38 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @kthread_stop(i32 %39)
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %43 = call i32 @vdec_poweroff(%struct.amvdec_session* %42)
  %44 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %45 = call i32 @vdec_free_canvas(%struct.amvdec_session* %44)
  %46 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %47 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %46, i32 0, i32 8
  %48 = load %struct.amvdec_core*, %struct.amvdec_core** %47, align 8
  %49 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %52 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %55 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %58 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dma_free_coherent(i32 %50, i32 %53, i32 %56, i32 %59)
  %61 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %62 = call i32 @vdec_reset_timestamps(%struct.amvdec_session* %61)
  %63 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %64 = call i32 @vdec_reset_bufs_recycle(%struct.amvdec_session* %63)
  %65 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %66 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @kfree(i32* %67)
  %69 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %70 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %69, i32 0, i32 4
  store i32* null, i32** %70, align 8
  %71 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %72 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  %73 = load i64, i64* @STATUS_STOPPED, align 8
  %74 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %75 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %41, %27, %16
  %77 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %78 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %89, %82
  %84 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %85 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %86)
  store %struct.vb2_v4l2_buffer* %87, %struct.vb2_v4l2_buffer** %5, align 8
  %88 = icmp ne %struct.vb2_v4l2_buffer* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %91 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %92 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %90, i32 %91)
  br label %83

93:                                               ; preds = %83
  %94 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %95 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  br label %110

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %103, %96
  %98 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %99 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %100)
  store %struct.vb2_v4l2_buffer* %101, %struct.vb2_v4l2_buffer** %5, align 8
  %102 = icmp ne %struct.vb2_v4l2_buffer* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %105 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %106 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %104, i32 %105)
  br label %97

107:                                              ; preds = %97
  %108 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %109 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %107, %93
  ret void
}

declare dso_local %struct.amvdec_session* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @vdec_codec_needs_recycle(%struct.amvdec_session*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @vdec_poweroff(%struct.amvdec_session*) #1

declare dso_local i32 @vdec_free_canvas(%struct.amvdec_session*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @vdec_reset_timestamps(%struct.amvdec_session*) #1

declare dso_local i32 @vdec_reset_bufs_recycle(%struct.amvdec_session*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
