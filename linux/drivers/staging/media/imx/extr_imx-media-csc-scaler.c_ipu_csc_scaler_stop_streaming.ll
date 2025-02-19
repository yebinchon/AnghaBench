; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_ipu_csc_scaler_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_ipu_csc_scaler_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.ipu_csc_scaler_ctx = type { %struct.TYPE_2__, i64, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @ipu_csc_scaler_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_csc_scaler_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.ipu_csc_scaler_ctx*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %5 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %6 = call %struct.ipu_csc_scaler_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %5)
  store %struct.ipu_csc_scaler_ctx* %6, %struct.ipu_csc_scaler_ctx** %3, align 8
  %7 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @ipu_image_convert_unprepare(i32* %14)
  %16 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %22 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %34, %26
  %28 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %31)
  store %struct.vb2_v4l2_buffer* %32, %struct.vb2_v4l2_buffer** %4, align 8
  %33 = icmp ne %struct.vb2_v4l2_buffer* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %36 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %37 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %35, i32 %36)
  br label %27

38:                                               ; preds = %27
  br label %52

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %47, %39
  %41 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %44)
  store %struct.vb2_v4l2_buffer* %45, %struct.vb2_v4l2_buffer** %4, align 8
  %46 = icmp ne %struct.vb2_v4l2_buffer* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %49 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %50 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %48, i32 %49)
  br label %40

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %38
  ret void
}

declare dso_local %struct.ipu_csc_scaler_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @ipu_image_convert_unprepare(i32*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
