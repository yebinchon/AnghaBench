; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_setup_rotation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_setup_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prp_priv = type { %struct.TYPE_7__*, i32, i32, i32, i32, i32, %struct.imx_media_pixfmt**, %struct.v4l2_mbus_framefmt*, %struct.imx_ic_priv*, %struct.imx_media_video_dev* }
%struct.TYPE_7__ = type { i32 }
%struct.imx_media_pixfmt = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }
%struct.imx_ic_priv = type { i32, i32 }
%struct.imx_media_video_dev = type { %struct.imx_media_pixfmt*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32 }
%struct.ipu_ic_csc = type { i32 }

@PRPENCVF_SINK_PAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"ipu_ic_calc_csc failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to alloc rot_buf[0], %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to alloc rot_buf[1], %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"ipu_ic_task_init failed, %d\0A\00", align 1
@IPU_ROTATE_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"prp_setup_channel(out_ch) failed, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"prp_setup_channel(rot_in_ch) failed, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"prp_setup_channel(rot_out_ch) failed, %d\0A\00", align 1
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prp_priv*)* @prp_setup_rotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_setup_rotation(%struct.prp_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.prp_priv*, align 8
  %4 = alloca %struct.imx_media_video_dev*, align 8
  %5 = alloca %struct.imx_ic_priv*, align 8
  %6 = alloca %struct.imx_media_pixfmt*, align 8
  %7 = alloca %struct.imx_media_pixfmt*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca %struct.ipu_ic_csc, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.prp_priv* %0, %struct.prp_priv** %3, align 8
  %13 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %14 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %13, i32 0, i32 9
  %15 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %14, align 8
  store %struct.imx_media_video_dev* %15, %struct.imx_media_video_dev** %4, align 8
  %16 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %17 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %16, i32 0, i32 8
  %18 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %17, align 8
  store %struct.imx_ic_priv* %18, %struct.imx_ic_priv** %5, align 8
  %19 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %20 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %19, i32 0, i32 7
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %20, align 8
  %22 = load i64, i64* @PRPENCVF_SINK_PAD, align 8
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i64 %22
  store %struct.v4l2_mbus_framefmt* %23, %struct.v4l2_mbus_framefmt** %8, align 8
  %24 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %4, align 8
  %25 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.v4l2_pix_format* %27, %struct.v4l2_pix_format** %9, align 8
  %28 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %29 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %28, i32 0, i32 6
  %30 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %29, align 8
  %31 = load i64, i64* @PRPENCVF_SINK_PAD, align 8
  %32 = getelementptr inbounds %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %30, i64 %31
  %33 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %32, align 8
  store %struct.imx_media_pixfmt* %33, %struct.imx_media_pixfmt** %7, align 8
  %34 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %4, align 8
  %35 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %34, i32 0, i32 0
  %36 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %35, align 8
  store %struct.imx_media_pixfmt* %36, %struct.imx_media_pixfmt** %6, align 8
  %37 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  %44 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %6, align 8
  %53 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ipu_ic_calc_csc(%struct.ipu_ic_csc* %10, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %1
  %59 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %60 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @v4l2_err(i32* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %2, align 4
  br label %269

64:                                               ; preds = %1
  %65 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %66 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %69 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 0
  %72 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %73 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @imx_media_alloc_dma_buf(i32 %67, %struct.TYPE_7__* %71, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %64
  %79 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %80 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @v4l2_err(i32* %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %2, align 4
  br label %269

84:                                               ; preds = %64
  %85 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %86 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %89 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 1
  %92 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %93 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @imx_media_alloc_dma_buf(i32 %87, %struct.TYPE_7__* %91, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %84
  %99 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %100 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %99, i32 0, i32 1
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @v4l2_err(i32* %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %259

103:                                              ; preds = %84
  %104 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %105 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %108 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %111 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %114 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %117 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ipu_ic_task_init(i32 %106, %struct.ipu_ic_csc* %10, i32 %109, i32 %112, i32 %115, i32 %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %103
  %123 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %124 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %123, i32 0, i32 1
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @v4l2_err(i32* %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  br label %250

127:                                              ; preds = %103
  %128 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %129 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %130 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @IPU_ROTATE_NONE, align 4
  %133 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %134 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %140 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %139, i32 0, i32 0
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @prp_setup_channel(%struct.prp_priv* %128, i32 %131, i32 %132, i32 %138, i32 %144, i32 1)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %127
  %149 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %150 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %149, i32 0, i32 1
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @v4l2_err(i32* %150, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %151)
  br label %250

153:                                              ; preds = %127
  %154 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %155 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %156 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %159 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %162 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %161, i32 0, i32 0
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %168 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %167, i32 0, i32 0
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 1
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @prp_setup_channel(%struct.prp_priv* %154, i32 %157, i32 %160, i32 %166, i32 %172, i32 1)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %153
  %177 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %178 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %177, i32 0, i32 1
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @v4l2_err(i32* %178, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %179)
  br label %250

181:                                              ; preds = %153
  %182 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %184 = call i32 @prp_setup_vb2_buf(%struct.prp_priv* %182, i32* %183)
  %185 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %186 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %187 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @IPU_ROTATE_NONE, align 4
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @prp_setup_channel(%struct.prp_priv* %185, i32 %188, i32 %189, i32 %191, i32 %193, i32 0)
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %12, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %181
  %198 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %199 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %198, i32 0, i32 1
  %200 = load i32, i32* %12, align 4
  %201 = call i32 @v4l2_err(i32* %199, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %200)
  br label %246

202:                                              ; preds = %181
  %203 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %204 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %207 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @ipu_idmac_link(i32 %205, i32 %208)
  %210 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %211 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @ipu_ic_enable(i32 %212)
  %214 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %215 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @ipu_idmac_select_buffer(i32 %216, i32 0)
  %218 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %219 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @ipu_idmac_select_buffer(i32 %220, i32 1)
  %222 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %223 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ipu_idmac_select_buffer(i32 %224, i32 0)
  %226 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %227 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @ipu_idmac_select_buffer(i32 %228, i32 1)
  %230 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %231 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @ipu_idmac_enable_channel(i32 %232)
  %234 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %235 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @ipu_idmac_enable_channel(i32 %236)
  %238 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %239 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @ipu_idmac_enable_channel(i32 %240)
  %242 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %243 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @ipu_ic_task_enable(i32 %244)
  store i32 0, i32* %2, align 4
  br label %269

246:                                              ; preds = %197
  %247 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %248 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %249 = call i32 @prp_unsetup_vb2_buf(%struct.prp_priv* %247, i32 %248)
  br label %250

250:                                              ; preds = %246, %176, %148, %122
  %251 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %252 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %255 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %254, i32 0, i32 0
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i64 1
  %258 = call i32 @imx_media_free_dma_buf(i32 %253, %struct.TYPE_7__* %257)
  br label %259

259:                                              ; preds = %250, %98
  %260 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %261 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %264 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %263, i32 0, i32 0
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i64 0
  %267 = call i32 @imx_media_free_dma_buf(i32 %262, %struct.TYPE_7__* %266)
  %268 = load i32, i32* %12, align 4
  store i32 %268, i32* %2, align 4
  br label %269

269:                                              ; preds = %259, %202, %78, %58
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local i32 @ipu_ic_calc_csc(%struct.ipu_ic_csc*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @imx_media_alloc_dma_buf(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @ipu_ic_task_init(i32, %struct.ipu_ic_csc*, i32, i32, i32, i32) #1

declare dso_local i32 @prp_setup_channel(%struct.prp_priv*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @prp_setup_vb2_buf(%struct.prp_priv*, i32*) #1

declare dso_local i32 @ipu_idmac_link(i32, i32) #1

declare dso_local i32 @ipu_ic_enable(i32) #1

declare dso_local i32 @ipu_idmac_select_buffer(i32, i32) #1

declare dso_local i32 @ipu_idmac_enable_channel(i32) #1

declare dso_local i32 @ipu_ic_task_enable(i32) #1

declare dso_local i32 @prp_unsetup_vb2_buf(%struct.prp_priv*, i32) #1

declare dso_local i32 @imx_media_free_dma_buf(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
