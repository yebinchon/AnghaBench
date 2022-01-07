; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-v4l2.c_imgu_v4l2_node_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-v4l2.c_imgu_v4l2_node_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_device = type { i32, i32, %struct.imgu_media_pipe*, %struct.TYPE_12__* }
%struct.imgu_media_pipe = type { %struct.imgu_video_device*, %struct.TYPE_13__ }
%struct.imgu_video_device = type { i32, i32, i8*, i64, i64, %struct.vb2_queue, i32, %struct.TYPE_11__, %struct.TYPE_17__, %struct.v4l2_mbus_framefmt, i32, %struct.video_device }
%struct.vb2_queue = type { i64, i32, i32, i32*, %struct.imgu_device*, i64, i32, i32*, i32* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.TYPE_16__, i32, %struct.vb2_queue*, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_13__ = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { %struct.TYPE_16__ }
%struct.TYPE_12__ = type { %struct.device }
%struct.device = type { i32 }

@MEDIA_BUS_FMT_FIXED = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_RAW = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i32 0, align 4
@V4L2_XFER_FUNC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_IPU3_SGRBG10 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed initialize media entity (%d)\0A\00", align 1
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@imgu_vb2_ops = common dso_local global i32 0, align 4
@vb2_dma_sg_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to initialize video queue (%d)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s %u %s\00", align 1
@IMGU_NAME = common dso_local global i8* null, align 8
@video_device_release_empty = common dso_local global i32 0, align 4
@imgu_v4l2_fops = common dso_local global i32 0, align 4
@VFL_DIR_TX = common dso_local global i32 0, align 4
@VFL_DIR_RX = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to register video device (%d)\00", align 1
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to create pad link (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgu_device*, i32, i32)* @imgu_v4l2_node_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgu_v4l2_node_setup(%struct.imgu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imgu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_mbus_framefmt, align 4
  %11 = alloca %struct.v4l2_pix_format_mplane, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.imgu_media_pipe*, align 8
  %14 = alloca %struct.v4l2_subdev*, align 8
  %15 = alloca %struct.imgu_video_device*, align 8
  %16 = alloca %struct.video_device*, align 8
  %17 = alloca %struct.vb2_queue*, align 8
  store %struct.imgu_device* %0, %struct.imgu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = bitcast %struct.v4l2_mbus_framefmt* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 36, i1 false)
  %19 = bitcast %struct.v4l2_pix_format_mplane* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 56, i1 false)
  %20 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %21 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %20, i32 0, i32 3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %12, align 8
  %24 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %25 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %24, i32 0, i32 2
  %26 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %26, i64 %28
  store %struct.imgu_media_pipe* %29, %struct.imgu_media_pipe** %13, align 8
  %30 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %13, align 8
  %31 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store %struct.v4l2_subdev* %32, %struct.v4l2_subdev** %14, align 8
  %33 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %13, align 8
  %34 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %33, i32 0, i32 0
  %35 = load %struct.imgu_video_device*, %struct.imgu_video_device** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %35, i64 %37
  store %struct.imgu_video_device* %38, %struct.imgu_video_device** %15, align 8
  %39 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %40 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %39, i32 0, i32 11
  store %struct.video_device* %40, %struct.video_device** %16, align 8
  %41 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %42 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %41, i32 0, i32 5
  store %struct.vb2_queue* %42, %struct.vb2_queue** %17, align 8
  %43 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 0
  store i32 1920, i32* %43, align 4
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 1
  store i32 1080, i32* %44, align 4
  %45 = load i32, i32* @MEDIA_BUS_FMT_FIXED, align 4
  %46 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 7
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 6
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @V4L2_COLORSPACE_RAW, align 4
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 5
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %52 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 4
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @V4L2_QUANTIZATION_DEFAULT, align 4
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @V4L2_XFER_FUNC_DEFAULT, align 4
  %56 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 10
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %68, 2
  %70 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 9
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 9
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %75, %80
  %82 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 9
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  %86 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 8
  store i64 0, i64* %86, align 8
  %87 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 7
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 6
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 5
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 4
  store i32 %97, i32* %98, align 8
  %99 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %100 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %99, i32 0, i32 6
  %101 = call i32 @mutex_init(i32* %100)
  %102 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %103 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %102, i32 0, i32 10
  %104 = call i32 @INIT_LIST_HEAD(i32* %103)
  %105 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %106 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %105, i32 0, i32 9
  %107 = bitcast %struct.v4l2_mbus_framefmt* %106 to i8*
  %108 = bitcast %struct.v4l2_mbus_framefmt* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 %108, i64 36, i1 false)
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %111 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %114 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.video_device*, %struct.video_device** %16, align 8
  %117 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %118 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %117, i32 0, i32 7
  %119 = call i32 @imgu_node_to_v4l2(i32 %115, %struct.video_device* %116, %struct.TYPE_11__* %118)
  %120 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %121 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %133, label %126

126:                                              ; preds = %3
  %127 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %128 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %126, %3
  %134 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %135 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* @V4L2_PIX_FMT_IPU3_SGRBG10, align 4
  br label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @V4L2_PIX_FMT_NV12, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  %144 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 3
  store i32 %143, i32* %144, align 4
  %145 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %146 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %145, i32 0, i32 7
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = bitcast %struct.v4l2_pix_format_mplane* %148 to i8*
  %150 = bitcast %struct.v4l2_pix_format_mplane* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %149, i8* align 8 %150, i64 56, i1 false)
  br label %151

151:                                              ; preds = %142, %126
  %152 = load %struct.video_device*, %struct.video_device** %16, align 8
  %153 = getelementptr inbounds %struct.video_device, %struct.video_device* %152, i32 0, i32 0
  %154 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %155 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %154, i32 0, i32 8
  %156 = call i32 @media_entity_pads_init(%struct.TYPE_16__* %153, i32 1, %struct.TYPE_17__* %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %151
  %160 = load %struct.device*, %struct.device** %12, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @dev_err(%struct.device* %160, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %161)
  %163 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %164 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %163, i32 0, i32 6
  %165 = call i32 @mutex_destroy(i32* %164)
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %4, align 4
  br label %334

167:                                              ; preds = %151
  %168 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %169 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  br label %176

174:                                              ; preds = %167
  %175 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %178 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %179 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %178, i32 0, i32 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 8
  %181 = load %struct.video_device*, %struct.video_device** %16, align 8
  %182 = getelementptr inbounds %struct.video_device, %struct.video_device* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  store i32* null, i32** %183, align 8
  %184 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %185 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.vb2_queue*, %struct.vb2_queue** %17, align 8
  %189 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load i32, i32* @VB2_USERPTR, align 4
  %191 = load i32, i32* @VB2_MMAP, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @VB2_DMABUF, align 4
  %194 = or i32 %192, %193
  %195 = load %struct.vb2_queue*, %struct.vb2_queue** %17, align 8
  %196 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 8
  %197 = load %struct.vb2_queue*, %struct.vb2_queue** %17, align 8
  %198 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %197, i32 0, i32 8
  store i32* @imgu_vb2_ops, i32** %198, align 8
  %199 = load %struct.vb2_queue*, %struct.vb2_queue** %17, align 8
  %200 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %199, i32 0, i32 7
  store i32* @vb2_dma_sg_memops, i32** %200, align 8
  %201 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %202 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp sle i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %176
  %206 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %207 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %206, i32 0, i32 0
  store i32 4, i32* %207, align 8
  br label %208

208:                                              ; preds = %205, %176
  %209 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %210 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.vb2_queue*, %struct.vb2_queue** %17, align 8
  %213 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %215 = load %struct.vb2_queue*, %struct.vb2_queue** %17, align 8
  %216 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %215, i32 0, i32 6
  store i32 %214, i32* %216, align 8
  %217 = load %struct.vb2_queue*, %struct.vb2_queue** %17, align 8
  %218 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %217, i32 0, i32 5
  store i64 0, i64* %218, align 8
  %219 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %220 = load %struct.vb2_queue*, %struct.vb2_queue** %17, align 8
  %221 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %220, i32 0, i32 4
  store %struct.imgu_device* %219, %struct.imgu_device** %221, align 8
  %222 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %223 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %222, i32 0, i32 6
  %224 = load %struct.vb2_queue*, %struct.vb2_queue** %17, align 8
  %225 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %224, i32 0, i32 3
  store i32* %223, i32** %225, align 8
  %226 = load %struct.vb2_queue*, %struct.vb2_queue** %17, align 8
  %227 = call i32 @vb2_queue_init(%struct.vb2_queue* %226)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %208
  %231 = load %struct.device*, %struct.device** %12, align 8
  %232 = load i32, i32* %8, align 4
  %233 = call i32 @dev_err(%struct.device* %231, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %232)
  %234 = load %struct.video_device*, %struct.video_device** %16, align 8
  %235 = getelementptr inbounds %struct.video_device, %struct.video_device* %234, i32 0, i32 0
  %236 = call i32 @media_entity_cleanup(%struct.TYPE_16__* %235)
  %237 = load i32, i32* %8, align 4
  store i32 %237, i32* %4, align 4
  br label %334

238:                                              ; preds = %208
  %239 = load %struct.video_device*, %struct.video_device** %16, align 8
  %240 = getelementptr inbounds %struct.video_device, %struct.video_device* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 4
  %242 = load i8*, i8** @IMGU_NAME, align 8
  %243 = load i32, i32* %6, align 4
  %244 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %245 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %244, i32 0, i32 2
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @snprintf(i32 %241, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %242, i32 %243, i8* %246)
  %248 = load i32, i32* @video_device_release_empty, align 4
  %249 = load %struct.video_device*, %struct.video_device** %16, align 8
  %250 = getelementptr inbounds %struct.video_device, %struct.video_device* %249, i32 0, i32 6
  store i32 %248, i32* %250, align 8
  %251 = load %struct.video_device*, %struct.video_device** %16, align 8
  %252 = getelementptr inbounds %struct.video_device, %struct.video_device* %251, i32 0, i32 5
  store i32* @imgu_v4l2_fops, i32** %252, align 8
  %253 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %254 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %253, i32 0, i32 6
  %255 = load %struct.video_device*, %struct.video_device** %16, align 8
  %256 = getelementptr inbounds %struct.video_device, %struct.video_device* %255, i32 0, i32 4
  store i32* %254, i32** %256, align 8
  %257 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %258 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %257, i32 0, i32 1
  %259 = load %struct.video_device*, %struct.video_device** %16, align 8
  %260 = getelementptr inbounds %struct.video_device, %struct.video_device* %259, i32 0, i32 3
  store i32* %258, i32** %260, align 8
  %261 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %262 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %261, i32 0, i32 5
  %263 = load %struct.video_device*, %struct.video_device** %16, align 8
  %264 = getelementptr inbounds %struct.video_device, %struct.video_device* %263, i32 0, i32 2
  store %struct.vb2_queue* %262, %struct.vb2_queue** %264, align 8
  %265 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %266 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %238
  %270 = load i32, i32* @VFL_DIR_TX, align 4
  br label %273

271:                                              ; preds = %238
  %272 = load i32, i32* @VFL_DIR_RX, align 4
  br label %273

273:                                              ; preds = %271, %269
  %274 = phi i32 [ %270, %269 ], [ %272, %271 ]
  %275 = load %struct.video_device*, %struct.video_device** %16, align 8
  %276 = getelementptr inbounds %struct.video_device, %struct.video_device* %275, i32 0, i32 1
  store i32 %274, i32* %276, align 8
  %277 = load %struct.video_device*, %struct.video_device** %16, align 8
  %278 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %279 = call i32 @video_set_drvdata(%struct.video_device* %277, %struct.imgu_device* %278)
  %280 = load %struct.video_device*, %struct.video_device** %16, align 8
  %281 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %282 = call i32 @video_register_device(%struct.video_device* %280, i32 %281, i32 -1)
  store i32 %282, i32* %8, align 4
  %283 = load i32, i32* %8, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %273
  %286 = load %struct.device*, %struct.device** %12, align 8
  %287 = load i32, i32* %8, align 4
  %288 = call i32 @dev_err(%struct.device* %286, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %287)
  %289 = load %struct.video_device*, %struct.video_device** %16, align 8
  %290 = getelementptr inbounds %struct.video_device, %struct.video_device* %289, i32 0, i32 0
  %291 = call i32 @media_entity_cleanup(%struct.TYPE_16__* %290)
  %292 = load i32, i32* %8, align 4
  store i32 %292, i32* %4, align 4
  br label %334

293:                                              ; preds = %273
  store i32 0, i32* %9, align 4
  %294 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %295 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %294, i32 0, i32 4
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %293
  %299 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %300 = load i32, i32* %9, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %9, align 4
  br label %302

302:                                              ; preds = %298, %293
  %303 = load %struct.imgu_video_device*, %struct.imgu_video_device** %15, align 8
  %304 = getelementptr inbounds %struct.imgu_video_device, %struct.imgu_video_device* %303, i32 0, i32 3
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %302
  %308 = load %struct.video_device*, %struct.video_device** %16, align 8
  %309 = getelementptr inbounds %struct.video_device, %struct.video_device* %308, i32 0, i32 0
  %310 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %311 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %310, i32 0, i32 0
  %312 = load i32, i32* %7, align 4
  %313 = load i32, i32* %9, align 4
  %314 = call i32 @media_create_pad_link(%struct.TYPE_16__* %309, i32 0, %struct.TYPE_16__* %311, i32 %312, i32 %313)
  store i32 %314, i32* %8, align 4
  br label %323

315:                                              ; preds = %302
  %316 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %317 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %316, i32 0, i32 0
  %318 = load i32, i32* %7, align 4
  %319 = load %struct.video_device*, %struct.video_device** %16, align 8
  %320 = getelementptr inbounds %struct.video_device, %struct.video_device* %319, i32 0, i32 0
  %321 = load i32, i32* %9, align 4
  %322 = call i32 @media_create_pad_link(%struct.TYPE_16__* %317, i32 %318, %struct.TYPE_16__* %320, i32 0, i32 %321)
  store i32 %322, i32* %8, align 4
  br label %323

323:                                              ; preds = %315, %307
  %324 = load i32, i32* %8, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %333

326:                                              ; preds = %323
  %327 = load %struct.device*, %struct.device** %12, align 8
  %328 = load i32, i32* %8, align 4
  %329 = call i32 @dev_err(%struct.device* %327, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %328)
  %330 = load %struct.video_device*, %struct.video_device** %16, align 8
  %331 = call i32 @video_unregister_device(%struct.video_device* %330)
  %332 = load i32, i32* %8, align 4
  store i32 %332, i32* %4, align 4
  br label %334

333:                                              ; preds = %323
  store i32 0, i32* %4, align 4
  br label %334

334:                                              ; preds = %333, %326, %285, %230, %159
  %335 = load i32, i32* %4, align 4
  ret i32 %335
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @imgu_node_to_v4l2(i32, %struct.video_device*, %struct.TYPE_11__*) #2

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_16__*, i32, %struct.TYPE_17__*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i32 @mutex_destroy(i32*) #2

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #2

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_16__*) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i8*) #2

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.imgu_device*) #2

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #2

declare dso_local i32 @media_create_pad_link(%struct.TYPE_16__*, i32, %struct.TYPE_16__*, i32, i32) #2

declare dso_local i32 @video_unregister_device(%struct.video_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
