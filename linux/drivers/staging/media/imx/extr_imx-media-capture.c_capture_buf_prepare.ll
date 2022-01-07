; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.vb2_queue* }
%struct.vb2_queue = type { i32 }
%struct.capture_priv = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"data will not fit into plane (%lu < %lu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @capture_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca %struct.capture_priv*, align 8
  %6 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 0
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  store %struct.vb2_queue* %9, %struct.vb2_queue** %4, align 8
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %11 = call %struct.capture_priv* @vb2_get_drv_priv(%struct.vb2_queue* %10)
  store %struct.capture_priv* %11, %struct.capture_priv** %5, align 8
  %12 = load %struct.capture_priv*, %struct.capture_priv** %5, align 8
  %13 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.v4l2_pix_format* %16, %struct.v4l2_pix_format** %6, align 8
  %17 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %18 = call i64 @vb2_plane_size(%struct.vb2_buffer* %17, i32 0)
  %19 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %1
  %24 = load %struct.capture_priv*, %struct.capture_priv** %5, align 8
  %25 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %28 = call i64 @vb2_plane_size(%struct.vb2_buffer* %27, i32 0)
  %29 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @v4l2_err(i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %1
  %36 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %37 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %36, i32 0, i64 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %35, %23
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.capture_priv* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @v4l2_err(i32, i8*, i64, i64) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
