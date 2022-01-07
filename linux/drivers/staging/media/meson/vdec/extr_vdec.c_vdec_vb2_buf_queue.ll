; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_vb2_buf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_vb2_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i64, i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.amvdec_session = type { i32, i32, i32, %struct.v4l2_m2m_ctx* }
%struct.v4l2_m2m_ctx = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @vdec_vb2_buf_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdec_vb2_buf_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.amvdec_session*, align 8
  %5 = alloca %struct.v4l2_m2m_ctx*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %6 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %7 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %6)
  store %struct.vb2_v4l2_buffer* %7, %struct.vb2_v4l2_buffer** %3, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.amvdec_session* @vb2_get_drv_priv(i32 %10)
  store %struct.amvdec_session* %11, %struct.amvdec_session** %4, align 8
  %12 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %13 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %12, i32 0, i32 3
  %14 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %13, align 8
  store %struct.v4l2_m2m_ctx* %14, %struct.v4l2_m2m_ctx** %5, align 8
  %15 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %5, align 8
  %16 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %17 = call i32 @v4l2_m2m_buf_queue(%struct.v4l2_m2m_ctx* %15, %struct.vb2_v4l2_buffer* %16)
  %18 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %19 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %24 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %1
  br label %46

28:                                               ; preds = %22
  %29 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %30 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %36 = call i64 @vdec_codec_needs_recycle(%struct.amvdec_session* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %40 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %41 = call i32 @vdec_queue_recycle(%struct.amvdec_session* %39, %struct.vb2_buffer* %40)
  br label %42

42:                                               ; preds = %38, %34, %28
  %43 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %44 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %43, i32 0, i32 0
  %45 = call i32 @schedule_work(i32* %44)
  br label %46

46:                                               ; preds = %42, %27
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.amvdec_session* @vb2_get_drv_priv(i32) #1

declare dso_local i32 @v4l2_m2m_buf_queue(%struct.v4l2_m2m_ctx*, %struct.vb2_v4l2_buffer*) #1

declare dso_local i64 @vdec_codec_needs_recycle(%struct.amvdec_session*) #1

declare dso_local i32 @vdec_queue_recycle(%struct.amvdec_session*, %struct.vb2_buffer*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
