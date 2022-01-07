; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_setup_vb2_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_setup_vb2_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7_csi = type { %struct.TYPE_4__, %struct.imx_media_buffer**, %struct.imx_media_video_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.imx_media_buffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vb2_buffer }
%struct.vb2_buffer = type { i32 }
%struct.imx_media_video_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx7_csi*)* @imx7_csi_setup_vb2_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx7_csi_setup_vb2_buf(%struct.imx7_csi* %0) #0 {
  %2 = alloca %struct.imx7_csi*, align 8
  %3 = alloca %struct.imx_media_video_dev*, align 8
  %4 = alloca %struct.imx_media_buffer*, align 8
  %5 = alloca %struct.vb2_buffer*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.imx7_csi* %0, %struct.imx7_csi** %2, align 8
  %8 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %9 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %8, i32 0, i32 2
  %10 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %9, align 8
  store %struct.imx_media_video_dev* %10, %struct.imx_media_video_dev** %3, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %57, %1
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %60

14:                                               ; preds = %11
  %15 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %3, align 8
  %16 = call %struct.imx_media_buffer* @imx_media_capture_device_next_buf(%struct.imx_media_video_dev* %15)
  store %struct.imx_media_buffer* %16, %struct.imx_media_buffer** %4, align 8
  %17 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %4, align 8
  %18 = icmp ne %struct.imx_media_buffer* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %4, align 8
  %21 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %22 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %21, i32 0, i32 1
  %23 = load %struct.imx_media_buffer**, %struct.imx_media_buffer*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.imx_media_buffer*, %struct.imx_media_buffer** %23, i64 %25
  store %struct.imx_media_buffer* %20, %struct.imx_media_buffer** %26, align 8
  %27 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.imx_media_buffer, %struct.imx_media_buffer* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store %struct.vb2_buffer* %29, %struct.vb2_buffer** %5, align 8
  %30 = load %struct.vb2_buffer*, %struct.vb2_buffer** %5, align 8
  %31 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %30, i32 0)
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %33
  store i32 %31, i32* %34, align 4
  br label %49

35:                                               ; preds = %14
  %36 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %37 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %36, i32 0, i32 1
  %38 = load %struct.imx_media_buffer**, %struct.imx_media_buffer*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.imx_media_buffer*, %struct.imx_media_buffer** %38, i64 %40
  store %struct.imx_media_buffer* null, %struct.imx_media_buffer** %41, align 8
  %42 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %43 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %47
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %35, %19
  %50 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @imx7_csi_update_buf(%struct.imx7_csi* %50, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %11

60:                                               ; preds = %11
  ret void
}

declare dso_local %struct.imx_media_buffer* @imx_media_capture_device_next_buf(%struct.imx_media_video_dev*) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @imx7_csi_update_buf(%struct.imx7_csi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
