; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.vb2_queue* }
%struct.vb2_queue = type { i32 }
%struct.cedrus_ctx = type { %struct.v4l2_pix_format, %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @cedrus_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca %struct.cedrus_ctx*, align 8
  %6 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 0
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  store %struct.vb2_queue* %9, %struct.vb2_queue** %4, align 8
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %11 = call %struct.cedrus_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %10)
  store %struct.cedrus_ctx* %11, %struct.cedrus_ctx** %5, align 8
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %13 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %18, i32 0, i32 1
  store %struct.v4l2_pix_format* %19, %struct.v4l2_pix_format** %6, align 8
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %21, i32 0, i32 0
  store %struct.v4l2_pix_format* %22, %struct.v4l2_pix_format** %6, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %25 = call i64 @vb2_plane_size(%struct.vb2_buffer* %24, i32 0)
  %26 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %39

33:                                               ; preds = %23
  %34 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %35 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %34, i32 0, i64 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.cedrus_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
