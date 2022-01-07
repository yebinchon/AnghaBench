; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_vb2_buf_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_vb2_buf_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prp_priv = type { i64, i32, %struct.ipuv3_channel*, i64, %struct.imx_media_buffer**, %struct.TYPE_7__, i32, %struct.imx_media_video_dev* }
%struct.imx_media_buffer = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.vb2_buffer, i32, i32 }
%struct.vb2_buffer = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.imx_media_video_dev = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.ipuv3_channel = type { i32 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prp_priv*, %struct.ipuv3_channel*)* @prp_vb2_buf_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prp_vb2_buf_done(%struct.prp_priv* %0, %struct.ipuv3_channel* %1) #0 {
  %3 = alloca %struct.prp_priv*, align 8
  %4 = alloca %struct.ipuv3_channel*, align 8
  %5 = alloca %struct.imx_media_video_dev*, align 8
  %6 = alloca %struct.imx_media_buffer*, align 8
  %7 = alloca %struct.imx_media_buffer*, align 8
  %8 = alloca %struct.vb2_buffer*, align 8
  %9 = alloca i32, align 4
  store %struct.prp_priv* %0, %struct.prp_priv** %3, align 8
  store %struct.ipuv3_channel* %1, %struct.ipuv3_channel** %4, align 8
  %10 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %11 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %10, i32 0, i32 7
  %12 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %11, align 8
  store %struct.imx_media_video_dev* %12, %struct.imx_media_video_dev** %5, align 8
  %13 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %14 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %13, i32 0, i32 4
  %15 = load %struct.imx_media_buffer**, %struct.imx_media_buffer*** %14, align 8
  %16 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %17 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.imx_media_buffer*, %struct.imx_media_buffer** %15, i64 %18
  %20 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %19, align 8
  store %struct.imx_media_buffer* %20, %struct.imx_media_buffer** %6, align 8
  %21 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %6, align 8
  %22 = icmp ne %struct.imx_media_buffer* %21, null
  br i1 %22, label %23, label %57

23:                                               ; preds = %2
  %24 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %5, align 8
  %25 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.imx_media_buffer, %struct.imx_media_buffer* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  %33 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %34 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.imx_media_buffer, %struct.imx_media_buffer* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.imx_media_buffer, %struct.imx_media_buffer* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.vb2_buffer* %41, %struct.vb2_buffer** %8, align 8
  %42 = call i32 (...) @ktime_get_ns()
  %43 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %44 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %46 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %47 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %23
  %51 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  br label %54

52:                                               ; preds = %23
  %53 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @vb2_buffer_done(%struct.vb2_buffer* %45, i32 %55)
  br label %57

57:                                               ; preds = %54, %2
  %58 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %59 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %63 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %62, i32 0, i32 1
  store i32 0, i32* %63, align 8
  %64 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %5, align 8
  %65 = call %struct.imx_media_buffer* @imx_media_capture_device_next_buf(%struct.imx_media_video_dev* %64)
  store %struct.imx_media_buffer* %65, %struct.imx_media_buffer** %7, align 8
  %66 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %7, align 8
  %67 = icmp ne %struct.imx_media_buffer* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %57
  %69 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %7, align 8
  %70 = getelementptr inbounds %struct.imx_media_buffer, %struct.imx_media_buffer* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %71, i32 0)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %7, align 8
  %74 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %75 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %74, i32 0, i32 4
  %76 = load %struct.imx_media_buffer**, %struct.imx_media_buffer*** %75, align 8
  %77 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %78 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.imx_media_buffer*, %struct.imx_media_buffer** %76, i64 %79
  store %struct.imx_media_buffer* %73, %struct.imx_media_buffer** %80, align 8
  br label %93

81:                                               ; preds = %57
  %82 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %83 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %9, align 4
  %86 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %87 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %86, i32 0, i32 4
  %88 = load %struct.imx_media_buffer**, %struct.imx_media_buffer*** %87, align 8
  %89 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %90 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.imx_media_buffer*, %struct.imx_media_buffer** %88, i64 %91
  store %struct.imx_media_buffer* null, %struct.imx_media_buffer** %92, align 8
  br label %93

93:                                               ; preds = %81, %68
  %94 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %95 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %96 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @ipu_idmac_buffer_is_ready(%struct.ipuv3_channel* %94, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %102 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %103 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @ipu_idmac_clear_buffer(%struct.ipuv3_channel* %101, i64 %104)
  br label %106

106:                                              ; preds = %100, %93
  %107 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %108 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %113 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %114 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %113, i32 0, i32 2
  %115 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %114, align 8
  %116 = icmp eq %struct.ipuv3_channel* %112, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %5, align 8
  %119 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %117, %111, %106
  %129 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %130 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %131 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @ipu_cpmem_set_buffer(%struct.ipuv3_channel* %129, i64 %132, i32 %133)
  ret void
}

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_buffer_done(%struct.vb2_buffer*, i32) #1

declare dso_local %struct.imx_media_buffer* @imx_media_capture_device_next_buf(%struct.imx_media_video_dev*) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @ipu_idmac_buffer_is_ready(%struct.ipuv3_channel*, i64) #1

declare dso_local i32 @ipu_idmac_clear_buffer(%struct.ipuv3_channel*, i64) #1

declare dso_local i32 @ipu_cpmem_set_buffer(%struct.ipuv3_channel*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
