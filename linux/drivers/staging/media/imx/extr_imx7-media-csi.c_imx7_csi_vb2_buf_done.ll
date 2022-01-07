; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_vb2_buf_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_vb2_buf_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7_csi = type { i64, %struct.imx_media_buffer**, %struct.TYPE_10__, i32, %struct.imx_media_video_dev* }
%struct.imx_media_buffer = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.vb2_buffer, i32, i32 }
%struct.vb2_buffer = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.imx_media_video_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx7_csi*)* @imx7_csi_vb2_buf_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx7_csi_vb2_buf_done(%struct.imx7_csi* %0) #0 {
  %2 = alloca %struct.imx7_csi*, align 8
  %3 = alloca %struct.imx_media_video_dev*, align 8
  %4 = alloca %struct.imx_media_buffer*, align 8
  %5 = alloca %struct.imx_media_buffer*, align 8
  %6 = alloca %struct.vb2_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.imx7_csi* %0, %struct.imx7_csi** %2, align 8
  %8 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %9 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %8, i32 0, i32 4
  %10 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %9, align 8
  store %struct.imx_media_video_dev* %10, %struct.imx_media_video_dev** %3, align 8
  %11 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %12 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %11, i32 0, i32 1
  %13 = load %struct.imx_media_buffer**, %struct.imx_media_buffer*** %12, align 8
  %14 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %15 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.imx_media_buffer*, %struct.imx_media_buffer** %13, i64 %16
  %18 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %17, align 8
  store %struct.imx_media_buffer* %18, %struct.imx_media_buffer** %4, align 8
  %19 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %4, align 8
  %20 = icmp ne %struct.imx_media_buffer* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %1
  %22 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %3, align 8
  %23 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.imx_media_buffer, %struct.imx_media_buffer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %32 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.imx_media_buffer, %struct.imx_media_buffer* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.imx_media_buffer, %struct.imx_media_buffer* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store %struct.vb2_buffer* %39, %struct.vb2_buffer** %6, align 8
  %40 = call i32 (...) @ktime_get_ns()
  %41 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %44 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %45 = call i32 @vb2_buffer_done(%struct.vb2_buffer* %43, i32 %44)
  br label %46

46:                                               ; preds = %21, %1
  %47 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %48 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %3, align 8
  %52 = call %struct.imx_media_buffer* @imx_media_capture_device_next_buf(%struct.imx_media_video_dev* %51)
  store %struct.imx_media_buffer* %52, %struct.imx_media_buffer** %5, align 8
  %53 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %5, align 8
  %54 = icmp ne %struct.imx_media_buffer* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %46
  %56 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %5, align 8
  %57 = getelementptr inbounds %struct.imx_media_buffer, %struct.imx_media_buffer* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %58, i32 0)
  store i32 %59, i32* %7, align 4
  %60 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %5, align 8
  %61 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %62 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %61, i32 0, i32 1
  %63 = load %struct.imx_media_buffer**, %struct.imx_media_buffer*** %62, align 8
  %64 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %65 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.imx_media_buffer*, %struct.imx_media_buffer** %63, i64 %66
  store %struct.imx_media_buffer* %60, %struct.imx_media_buffer** %67, align 8
  br label %80

68:                                               ; preds = %46
  %69 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %70 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %7, align 4
  %73 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %74 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %73, i32 0, i32 1
  %75 = load %struct.imx_media_buffer**, %struct.imx_media_buffer*** %74, align 8
  %76 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %77 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.imx_media_buffer*, %struct.imx_media_buffer** %75, i64 %78
  store %struct.imx_media_buffer* null, %struct.imx_media_buffer** %79, align 8
  br label %80

80:                                               ; preds = %68, %55
  %81 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %84 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @imx7_csi_update_buf(%struct.imx7_csi* %81, i32 %82, i64 %85)
  ret void
}

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_buffer_done(%struct.vb2_buffer*, i32) #1

declare dso_local %struct.imx_media_buffer* @imx_media_capture_device_next_buf(%struct.imx_media_video_dev*) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @imx7_csi_update_buf(%struct.imx7_csi*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
