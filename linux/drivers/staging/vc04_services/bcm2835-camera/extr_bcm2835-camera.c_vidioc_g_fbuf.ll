; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_bcm2835-camera.c_vidioc_g_fbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_bcm2835-camera.c_vidioc_g_fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_framebuffer = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.bm2835_mmal_dev = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.vchiq_mmal_port* }
%struct.vchiq_mmal_port = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@COMP_CAMERA = common dso_local global i64 0, align 8
@CAM_PORT_PREVIEW = common dso_local global i64 0, align 8
@V4L2_FBUF_CAP_EXTERNOVERLAY = common dso_local global i32 0, align 4
@V4L2_FBUF_CAP_GLOBAL_ALPHA = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_OVERLAY = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV420 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)* @vidioc_g_fbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fbuf(%struct.file* %0, i8* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_framebuffer*, align 8
  %7 = alloca %struct.bm2835_mmal_dev*, align 8
  %8 = alloca %struct.vchiq_mmal_port*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.bm2835_mmal_dev* @video_drvdata(%struct.file* %9)
  store %struct.bm2835_mmal_dev* %10, %struct.bm2835_mmal_dev** %7, align 8
  %11 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %7, align 8
  %12 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  %14 = load i64, i64* @COMP_CAMERA, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %13, i64 %14
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %17, align 8
  %19 = load i64, i64* @CAM_PORT_PREVIEW, align 8
  %20 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %18, i64 %19
  store %struct.vchiq_mmal_port* %20, %struct.vchiq_mmal_port** %8, align 8
  %21 = load i32, i32* @V4L2_FBUF_CAP_EXTERNOVERLAY, align 4
  %22 = load i32, i32* @V4L2_FBUF_CAP_GLOBAL_ALPHA, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @V4L2_FBUF_FLAG_OVERLAY, align 4
  %27 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %8, align 8
  %30 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %8, align 8
  %38 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @V4L2_PIX_FMT_YUV420, align 4
  %46 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 5
  store i32 %45, i32* %48, align 4
  %49 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %8, align 8
  %50 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %8, align 8
  %58 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %8, align 8
  %63 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %61, %66
  %68 = mul nsw i32 %67, 3
  %69 = ashr i32 %68, 1
  %70 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %74 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %75 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 4
  store i32 %73, i32* %76, align 4
  ret i32 0
}

declare dso_local %struct.bm2835_mmal_dev* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
