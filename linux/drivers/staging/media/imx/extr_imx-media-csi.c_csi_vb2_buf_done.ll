; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_vb2_buf_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_vb2_buf_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_priv = type { i64, i32, i32, i64, %struct.imx_media_buffer**, %struct.TYPE_7__, i32, %struct.imx_media_video_dev* }
%struct.imx_media_buffer = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.vb2_buffer, i32, i32 }
%struct.vb2_buffer = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.imx_media_video_dev = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csi_priv*)* @csi_vb2_buf_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_vb2_buf_done(%struct.csi_priv* %0) #0 {
  %2 = alloca %struct.csi_priv*, align 8
  %3 = alloca %struct.imx_media_video_dev*, align 8
  %4 = alloca %struct.imx_media_buffer*, align 8
  %5 = alloca %struct.imx_media_buffer*, align 8
  %6 = alloca %struct.vb2_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.csi_priv* %0, %struct.csi_priv** %2, align 8
  %8 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %9 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %8, i32 0, i32 7
  %10 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %9, align 8
  store %struct.imx_media_video_dev* %10, %struct.imx_media_video_dev** %3, align 8
  %11 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %12 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %11, i32 0, i32 4
  %13 = load %struct.imx_media_buffer**, %struct.imx_media_buffer*** %12, align 8
  %14 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %15 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.imx_media_buffer*, %struct.imx_media_buffer** %13, i64 %16
  %18 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %17, align 8
  store %struct.imx_media_buffer* %18, %struct.imx_media_buffer** %4, align 8
  %19 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %4, align 8
  %20 = icmp ne %struct.imx_media_buffer* %19, null
  br i1 %20, label %21, label %55

21:                                               ; preds = %1
  %22 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %3, align 8
  %23 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.imx_media_buffer, %struct.imx_media_buffer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %32 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.imx_media_buffer, %struct.imx_media_buffer* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.imx_media_buffer, %struct.imx_media_buffer* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store %struct.vb2_buffer* %39, %struct.vb2_buffer** %6, align 8
  %40 = call i32 (...) @ktime_get_ns()
  %41 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %44 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %45 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %21
  %49 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  br label %52

50:                                               ; preds = %21
  %51 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = call i32 @vb2_buffer_done(%struct.vb2_buffer* %43, i32 %53)
  br label %55

55:                                               ; preds = %52, %1
  %56 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %57 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %61 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %60, i32 0, i32 1
  store i32 0, i32* %61, align 8
  %62 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %3, align 8
  %63 = call %struct.imx_media_buffer* @imx_media_capture_device_next_buf(%struct.imx_media_video_dev* %62)
  store %struct.imx_media_buffer* %63, %struct.imx_media_buffer** %5, align 8
  %64 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %5, align 8
  %65 = icmp ne %struct.imx_media_buffer* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %55
  %67 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %5, align 8
  %68 = getelementptr inbounds %struct.imx_media_buffer, %struct.imx_media_buffer* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %69, i32 0)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %5, align 8
  %72 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %73 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %72, i32 0, i32 4
  %74 = load %struct.imx_media_buffer**, %struct.imx_media_buffer*** %73, align 8
  %75 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %76 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.imx_media_buffer*, %struct.imx_media_buffer** %74, i64 %77
  store %struct.imx_media_buffer* %71, %struct.imx_media_buffer** %78, align 8
  br label %91

79:                                               ; preds = %55
  %80 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %81 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %7, align 4
  %84 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %85 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %84, i32 0, i32 4
  %86 = load %struct.imx_media_buffer**, %struct.imx_media_buffer*** %85, align 8
  %87 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %88 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.imx_media_buffer*, %struct.imx_media_buffer** %86, i64 %89
  store %struct.imx_media_buffer* null, %struct.imx_media_buffer** %90, align 8
  br label %91

91:                                               ; preds = %79, %66
  %92 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %93 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %96 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @ipu_idmac_buffer_is_ready(i32 %94, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %91
  %101 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %102 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %105 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @ipu_idmac_clear_buffer(i32 %103, i64 %106)
  br label %108

108:                                              ; preds = %100, %91
  %109 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %110 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %108
  %114 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %3, align 8
  %115 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %113, %108
  %125 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %126 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %129 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @ipu_cpmem_set_buffer(i32 %127, i64 %130, i32 %131)
  ret void
}

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_buffer_done(%struct.vb2_buffer*, i32) #1

declare dso_local %struct.imx_media_buffer* @imx_media_capture_device_next_buf(%struct.imx_media_video_dev*) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @ipu_idmac_buffer_is_ready(i32, i64) #1

declare dso_local i32 @ipu_idmac_clear_buffer(i32, i64) #1

declare dso_local i32 @ipu_cpmem_set_buffer(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
