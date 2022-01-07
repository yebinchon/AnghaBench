; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_ipu_ic_pp_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_ipu_ic_pp_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_run = type { i64 }
%struct.ipu_csc_scaler_ctx = type { %struct.TYPE_2__, i32, %struct.ipu_csc_scaler_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.ipu_csc_scaler_priv = type { i32 }
%struct.vb2_v4l2_buffer = type { i64 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_image_convert_run*, i8*)* @ipu_ic_pp_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_ic_pp_complete(%struct.ipu_image_convert_run* %0, i8* %1) #0 {
  %3 = alloca %struct.ipu_image_convert_run*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ipu_csc_scaler_ctx*, align 8
  %6 = alloca %struct.ipu_csc_scaler_priv*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.ipu_image_convert_run* %0, %struct.ipu_image_convert_run** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ipu_csc_scaler_ctx*
  store %struct.ipu_csc_scaler_ctx* %10, %struct.ipu_csc_scaler_ctx** %5, align 8
  %11 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %11, i32 0, i32 2
  %13 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %12, align 8
  store %struct.ipu_csc_scaler_priv* %13, %struct.ipu_csc_scaler_priv** %6, align 8
  %14 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %17)
  store %struct.vb2_v4l2_buffer* %18, %struct.vb2_v4l2_buffer** %7, align 8
  %19 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %22)
  store %struct.vb2_v4l2_buffer* %23, %struct.vb2_v4l2_buffer** %8, align 8
  %24 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %25 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %26 = call i32 @v4l2_m2m_buf_copy_metadata(%struct.vb2_v4l2_buffer* %24, %struct.vb2_v4l2_buffer* %25, i32 1)
  %27 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = sext i32 %29 to i64
  %32 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %33 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %35 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %38 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %40 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %3, align 8
  %41 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  br label %48

46:                                               ; preds = %2
  %47 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %39, i32 %49)
  %51 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %52 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %3, align 8
  %53 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  br label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %51, i32 %61)
  %63 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %6, align 8
  %64 = getelementptr inbounds %struct.ipu_csc_scaler_priv, %struct.ipu_csc_scaler_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @v4l2_m2m_job_finish(i32 %65, i32 %69)
  %71 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %3, align 8
  %72 = call i32 @kfree(%struct.ipu_image_convert_run* %71)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_copy_metadata(%struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

declare dso_local i32 @kfree(%struct.ipu_image_convert_run*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
