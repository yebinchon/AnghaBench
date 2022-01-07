; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_try_fmt_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_try_fmt_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_format = type { i64*, i32, i32 }
%struct.amvdec_session = type { %struct.amvdec_format*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.amvdec_format* }
%struct.v4l2_format = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i64, i32, i64, i8*, i8*, i32, %struct.v4l2_plane_pix_format* }
%struct.v4l2_plane_pix_format = type { i32, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_MPEG2 = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV12M = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUV420M = common dso_local global i64 0, align 8
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amvdec_format* (%struct.amvdec_session*, i32, %struct.v4l2_format*)* @vdec_try_fmt_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amvdec_format* @vdec_try_fmt_common(%struct.amvdec_session* %0, i32 %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.amvdec_format*, align 8
  %5 = alloca %struct.amvdec_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.v4l2_plane_pix_format*, align 8
  %10 = alloca %struct.amvdec_format*, align 8
  %11 = alloca %struct.amvdec_format*, align 8
  store %struct.amvdec_session* %0, %struct.amvdec_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %14, %struct.v4l2_pix_format_mplane** %8, align 8
  %15 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %16 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %15, i32 0, i32 6
  %17 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %16, align 8
  store %struct.v4l2_plane_pix_format* %17, %struct.v4l2_plane_pix_format** %9, align 8
  %18 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %19 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.amvdec_format*, %struct.amvdec_format** %23, align 8
  store %struct.amvdec_format* %24, %struct.amvdec_format** %10, align 8
  %25 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %26 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %25, i64 0
  %27 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memset(i32 %28, i32 0, i32 4)
  %30 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @memset(i32 %32, i32 0, i32 4)
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %3
  %40 = load %struct.amvdec_format*, %struct.amvdec_format** %10, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.amvdec_format* @find_format(%struct.amvdec_format* %40, i32 %41, i64 %44)
  store %struct.amvdec_format* %45, %struct.amvdec_format** %11, align 8
  %46 = load %struct.amvdec_format*, %struct.amvdec_format** %11, align 8
  %47 = icmp ne %struct.amvdec_format* %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %39
  %49 = load i64, i64* @V4L2_PIX_FMT_MPEG2, align 8
  %50 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.amvdec_format*, %struct.amvdec_format** %10, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call %struct.amvdec_format* @find_format(%struct.amvdec_format* %52, i32 %53, i64 %56)
  store %struct.amvdec_format* %57, %struct.amvdec_format** %11, align 8
  br label %58

58:                                               ; preds = %48, %39
  %59 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @get_output_size(i8* %61, i8* %64)
  %66 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %67 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %66, i64 0
  %68 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %70 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %69, i64 0
  %71 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %73 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %72, i32 0, i32 1
  store i32 1, i32* %73, align 8
  br label %215

74:                                               ; preds = %3
  %75 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %213

80:                                               ; preds = %74
  %81 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %82 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %81, i32 0, i32 0
  %83 = load %struct.amvdec_format*, %struct.amvdec_format** %82, align 8
  store %struct.amvdec_format* %83, %struct.amvdec_format** %11, align 8
  %84 = load %struct.amvdec_format*, %struct.amvdec_format** %11, align 8
  %85 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %86 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @vdec_supports_pixfmt_cap(%struct.amvdec_format* %84, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %80
  %91 = load %struct.amvdec_format*, %struct.amvdec_format** %11, align 8
  %92 = getelementptr inbounds %struct.amvdec_format, %struct.amvdec_format* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %97 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %90, %80
  %99 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %100 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %99, i64 1
  %101 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @memset(i32 %102, i32 0, i32 4)
  %104 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %105 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @V4L2_PIX_FMT_NV12M, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %147

109:                                              ; preds = %98
  %110 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %111 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %110, i32 0, i32 4
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %114 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @get_output_size(i8* %112, i8* %115)
  %117 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %118 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %117, i64 0
  %119 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  %120 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %121 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %120, i32 0, i32 4
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @ALIGN(i8* %122, i32 64)
  %124 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %125 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %124, i64 0
  %126 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  %127 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %128 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %127, i32 0, i32 4
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %131 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %130, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @get_output_size(i8* %129, i8* %132)
  %134 = sdiv i32 %133, 2
  %135 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %136 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %135, i64 1
  %137 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 4
  %138 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %139 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %138, i32 0, i32 4
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @ALIGN(i8* %140, i32 64)
  %142 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %143 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %142, i64 1
  %144 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %143, i32 0, i32 1
  store i32 %141, i32* %144, align 4
  %145 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %146 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %145, i32 0, i32 1
  store i32 2, i32* %146, align 8
  br label %212

147:                                              ; preds = %98
  %148 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %149 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @V4L2_PIX_FMT_YUV420M, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %211

153:                                              ; preds = %147
  %154 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %155 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %154, i32 0, i32 4
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %158 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %157, i32 0, i32 3
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @get_output_size(i8* %156, i8* %159)
  %161 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %162 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %161, i64 0
  %163 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 4
  %164 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %165 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %164, i32 0, i32 4
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @ALIGN(i8* %166, i32 64)
  %168 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %169 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %168, i64 0
  %170 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 4
  %171 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %172 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %171, i32 0, i32 4
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %175 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %174, i32 0, i32 3
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @get_output_size(i8* %173, i8* %176)
  %178 = sdiv i32 %177, 4
  %179 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %180 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %179, i64 1
  %181 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 4
  %182 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %183 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %182, i32 0, i32 4
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @ALIGN(i8* %184, i32 64)
  %186 = sdiv i32 %185, 2
  %187 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %188 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %187, i64 1
  %189 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %188, i32 0, i32 1
  store i32 %186, i32* %189, align 4
  %190 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %191 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %190, i32 0, i32 4
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %194 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %193, i32 0, i32 3
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @get_output_size(i8* %192, i8* %195)
  %197 = sdiv i32 %196, 4
  %198 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %199 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %198, i64 2
  %200 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 4
  %201 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %202 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %201, i32 0, i32 4
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @ALIGN(i8* %203, i32 64)
  %205 = sdiv i32 %204, 2
  %206 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %207 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %206, i64 2
  %208 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %207, i32 0, i32 1
  store i32 %205, i32* %208, align 4
  %209 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %210 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %209, i32 0, i32 1
  store i32 3, i32* %210, align 8
  br label %211

211:                                              ; preds = %153, %147
  br label %212

212:                                              ; preds = %211, %109
  br label %214

213:                                              ; preds = %74
  store %struct.amvdec_format* null, %struct.amvdec_format** %4, align 8
  br label %245

214:                                              ; preds = %212
  br label %215

215:                                              ; preds = %214, %58
  %216 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %217 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %216, i32 0, i32 4
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.amvdec_format*, %struct.amvdec_format** %11, align 8
  %220 = getelementptr inbounds %struct.amvdec_format, %struct.amvdec_format* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i8* @clamp(i8* %218, i32 256, i32 %221)
  %223 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %224 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %223, i32 0, i32 4
  store i8* %222, i8** %224, align 8
  %225 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %226 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %225, i32 0, i32 3
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.amvdec_format*, %struct.amvdec_format** %11, align 8
  %229 = getelementptr inbounds %struct.amvdec_format, %struct.amvdec_format* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = call i8* @clamp(i8* %227, i32 144, i32 %230)
  %232 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %233 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %232, i32 0, i32 3
  store i8* %231, i8** %233, align 8
  %234 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %235 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %215
  %240 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %241 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %242 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %241, i32 0, i32 2
  store i64 %240, i64* %242, align 8
  br label %243

243:                                              ; preds = %239, %215
  %244 = load %struct.amvdec_format*, %struct.amvdec_format** %11, align 8
  store %struct.amvdec_format* %244, %struct.amvdec_format** %4, align 8
  br label %245

245:                                              ; preds = %243, %213
  %246 = load %struct.amvdec_format*, %struct.amvdec_format** %4, align 8
  ret %struct.amvdec_format* %246
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.amvdec_format* @find_format(%struct.amvdec_format*, i32, i64) #1

declare dso_local i32 @get_output_size(i8*, i8*) #1

declare dso_local i32 @vdec_supports_pixfmt_cap(%struct.amvdec_format*, i64) #1

declare dso_local i32 @ALIGN(i8*, i32) #1

declare dso_local i8* @clamp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
