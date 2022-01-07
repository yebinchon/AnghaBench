; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_vidioc_s_fmt_cap_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_vidioc_s_fmt_cap_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.hantro_ctx = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.v4l2_pix_format_mplane, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.hantro_fmt = type { i32 }
%struct.vb2_queue = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"CAPTURE codec mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"fmt - w: %d, h: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt_cap_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt_cap_mplane(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.hantro_ctx*, align 8
  %10 = alloca %struct.hantro_fmt*, align 8
  %11 = alloca %struct.vb2_queue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vb2_queue*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %17, %struct.v4l2_pix_format_mplane** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.hantro_ctx* @fh_to_ctx(i8* %18)
  store %struct.hantro_ctx* %19, %struct.hantro_ctx** %9, align 8
  %20 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %21 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %23, i32 %26)
  store %struct.vb2_queue* %27, %struct.vb2_queue** %11, align 8
  %28 = load %struct.vb2_queue*, %struct.vb2_queue** %11, align 8
  %29 = call i64 @vb2_is_busy(%struct.vb2_queue* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %154

34:                                               ; preds = %3
  %35 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %36 = call i64 @hantro_is_encoder_ctx(%struct.hantro_ctx* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %79

38:                                               ; preds = %34
  %39 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %40 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %44 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %42, i32 %43)
  store %struct.vb2_queue* %44, %struct.vb2_queue** %14, align 8
  %45 = load %struct.vb2_queue*, %struct.vb2_queue** %14, align 8
  %46 = call i64 @vb2_is_busy(%struct.vb2_queue* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %38
  %49 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %53 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %51, %55
  br i1 %56, label %75, label %57

57:                                               ; preds = %48
  %58 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %62 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %60, %64
  br i1 %65, label %75, label %66

66:                                               ; preds = %57
  %67 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %71 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %69, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %66, %57, %48
  %76 = load i32, i32* @EBUSY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %154

78:                                               ; preds = %66, %38
  br label %79

79:                                               ; preds = %78, %34
  %80 = load %struct.file*, %struct.file** %5, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %83 = call i32 @vidioc_try_fmt_cap_mplane(%struct.file* %80, i8* %81, %struct.v4l2_format* %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %4, align 4
  br label %154

88:                                               ; preds = %79
  %89 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %90 = call %struct.hantro_fmt* @hantro_get_formats(%struct.hantro_ctx* %89, i32* %12)
  store %struct.hantro_fmt* %90, %struct.hantro_fmt** %10, align 8
  %91 = load %struct.hantro_fmt*, %struct.hantro_fmt** %10, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %94 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call %struct.TYPE_8__* @hantro_find_format(%struct.hantro_fmt* %91, i32 %92, i64 %95)
  %97 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %98 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %97, i32 0, i32 0
  store %struct.TYPE_8__* %96, %struct.TYPE_8__** %98, align 8
  %99 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %100 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %99, i32 0, i32 2
  %101 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %102 = bitcast %struct.v4l2_pix_format_mplane* %100 to i8*
  %103 = bitcast %struct.v4l2_pix_format_mplane* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 40, i1 false)
  %104 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %105 = call i64 @hantro_is_encoder_ctx(%struct.hantro_ctx* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %88
  %108 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %109 = call i32 @hantro_reset_raw_fmt(%struct.hantro_ctx* %108)
  br label %110

110:                                              ; preds = %107, %88
  %111 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %112 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %115 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  store i32 %113, i32* %116, align 4
  %117 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %118 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %121 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  store i32 %119, i32* %122, align 8
  %123 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %124 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %127 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %130 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %133 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 8
  %135 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %136 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = call i32 (i32, i8*, i64, ...) @vpu_debug(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %140)
  %142 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %143 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %146 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (i32, i8*, i64, ...) @vpu_debug(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %144, i64 %147)
  %149 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %150 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %151 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @hantro_update_requires_request(%struct.hantro_ctx* %149, i64 %152)
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %110, %86, %75, %31
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local %struct.hantro_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i64 @hantro_is_encoder_ctx(%struct.hantro_ctx*) #1

declare dso_local i32 @vidioc_try_fmt_cap_mplane(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local %struct.hantro_fmt* @hantro_get_formats(%struct.hantro_ctx*, i32*) #1

declare dso_local %struct.TYPE_8__* @hantro_find_format(%struct.hantro_fmt*, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hantro_reset_raw_fmt(%struct.hantro_ctx*) #1

declare dso_local i32 @vpu_debug(i32, i8*, i64, ...) #1

declare dso_local i32 @hantro_update_requires_request(%struct.hantro_ctx*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
