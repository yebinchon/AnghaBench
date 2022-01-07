; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_idmac_setup_vb2_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_idmac_setup_vb2_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_priv = type { %struct.TYPE_4__, %struct.imx_media_buffer**, %struct.imx_media_video_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.imx_media_buffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.imx_media_video_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csi_priv*, i32*)* @csi_idmac_setup_vb2_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_idmac_setup_vb2_buf(%struct.csi_priv* %0, i32* %1) #0 {
  %3 = alloca %struct.csi_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.imx_media_video_dev*, align 8
  %6 = alloca %struct.imx_media_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.csi_priv* %0, %struct.csi_priv** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %9 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %8, i32 0, i32 2
  %10 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %9, align 8
  store %struct.imx_media_video_dev* %10, %struct.imx_media_video_dev** %5, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %51, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  %15 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %5, align 8
  %16 = call %struct.imx_media_buffer* @imx_media_capture_device_next_buf(%struct.imx_media_video_dev* %15)
  store %struct.imx_media_buffer* %16, %struct.imx_media_buffer** %6, align 8
  %17 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %6, align 8
  %18 = icmp ne %struct.imx_media_buffer* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %6, align 8
  %21 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %22 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %21, i32 0, i32 1
  %23 = load %struct.imx_media_buffer**, %struct.imx_media_buffer*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.imx_media_buffer*, %struct.imx_media_buffer** %23, i64 %25
  store %struct.imx_media_buffer* %20, %struct.imx_media_buffer** %26, align 8
  %27 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.imx_media_buffer, %struct.imx_media_buffer* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %29, i32 0)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  br label %50

35:                                               ; preds = %14
  %36 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %37 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %36, i32 0, i32 1
  %38 = load %struct.imx_media_buffer**, %struct.imx_media_buffer*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.imx_media_buffer*, %struct.imx_media_buffer** %38, i64 %40
  store %struct.imx_media_buffer* null, %struct.imx_media_buffer** %41, align 8
  %42 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %43 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %35, %19
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %11

54:                                               ; preds = %11
  ret void
}

declare dso_local %struct.imx_media_buffer* @imx_media_capture_device_next_buf(%struct.imx_media_video_dev*) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
