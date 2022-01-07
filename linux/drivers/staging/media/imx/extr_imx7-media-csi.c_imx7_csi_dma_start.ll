; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7_csi = type { i32, i32, i64, i32, i32, i32, %struct.imx_media_video_dev* }
%struct.imx_media_video_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"consider increasing the CMA area\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx7_csi*)* @imx7_csi_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7_csi_dma_start(%struct.imx7_csi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx7_csi*, align 8
  %4 = alloca %struct.imx_media_video_dev*, align 8
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca i32, align 4
  store %struct.imx7_csi* %0, %struct.imx7_csi** %3, align 8
  %7 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %8 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %7, i32 0, i32 6
  %9 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %8, align 8
  store %struct.imx_media_video_dev* %9, %struct.imx_media_video_dev** %4, align 8
  %10 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %4, align 8
  %11 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.v4l2_pix_format* %13, %struct.v4l2_pix_format** %5, align 8
  %14 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %15 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %18 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %17, i32 0, i32 4
  %19 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @imx_media_alloc_dma_buf(i32 %16, i32* %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %27 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %26, i32 0, i32 3
  %28 = call i32 @v4l2_warn(i32* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %40

30:                                               ; preds = %1
  %31 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %32 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %34 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %36 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %35, i32 0, i32 1
  %37 = call i32 @init_completion(i32* %36)
  %38 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %39 = call i32 @imx7_csi_setup_vb2_buf(%struct.imx7_csi* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %30, %25
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @imx_media_alloc_dma_buf(i32, i32*, i32) #1

declare dso_local i32 @v4l2_warn(i32*, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @imx7_csi_setup_vb2_buf(%struct.imx7_csi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
