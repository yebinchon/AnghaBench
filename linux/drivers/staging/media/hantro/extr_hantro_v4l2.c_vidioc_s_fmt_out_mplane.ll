; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_vidioc_s_fmt_out_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_vidioc_s_fmt_out_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hantro_ctx = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.v4l2_pix_format_mplane, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.hantro_fmt = type { i32 }
%struct.vb2_queue = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"OUTPUT codec mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"fmt - w: %d, h: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt_out_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt_out_mplane(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.hantro_ctx*, align 8
  %10 = alloca %struct.hantro_fmt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vb2_queue*, align 8
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
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %23, i32 %26)
  store %struct.vb2_queue* %27, %struct.vb2_queue** %12, align 8
  %28 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %29 = call i64 @vb2_is_busy(%struct.vb2_queue* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %126

34:                                               ; preds = %3
  %35 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %36 = call i32 @hantro_is_encoder_ctx(%struct.hantro_ctx* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %34
  %39 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %40 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %44 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %42, i32 %43)
  store %struct.vb2_queue* %44, %struct.vb2_queue** %14, align 8
  %45 = load %struct.vb2_queue*, %struct.vb2_queue** %14, align 8
  %46 = call i64 @vb2_is_busy(%struct.vb2_queue* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %126

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.file*, %struct.file** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %56 = call i32 @vidioc_try_fmt_out_mplane(%struct.file* %53, i8* %54, %struct.v4l2_format* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %4, align 4
  br label %126

61:                                               ; preds = %52
  %62 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %63 = call %struct.hantro_fmt* @hantro_get_formats(%struct.hantro_ctx* %62, i32* %11)
  store %struct.hantro_fmt* %63, %struct.hantro_fmt** %10, align 8
  %64 = load %struct.hantro_fmt*, %struct.hantro_fmt** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.TYPE_8__* @hantro_find_format(%struct.hantro_fmt* %64, i32 %65, i32 %68)
  %70 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %71 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %70, i32 0, i32 0
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %71, align 8
  %72 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %73 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %72, i32 0, i32 2
  %74 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %75 = bitcast %struct.v4l2_pix_format_mplane* %73 to i8*
  %76 = bitcast %struct.v4l2_pix_format_mplane* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 4 %76, i64 28, i1 false)
  %77 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %78 = call i32 @hantro_is_encoder_ctx(%struct.hantro_ctx* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %61
  %81 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %82 = call i32 @hantro_reset_raw_fmt(%struct.hantro_ctx* %81)
  br label %83

83:                                               ; preds = %80, %61
  %84 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %88 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 4
  %90 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %94 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 8
  %96 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %97 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %100 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %103 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %106 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %109 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %110 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @hantro_update_requires_request(%struct.hantro_ctx* %108, i32 %111)
  %113 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %114 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, i32, ...) @vpu_debug(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %120 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %123 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, i32, ...) @vpu_debug(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %124)
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %83, %59, %48, %31
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.hantro_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i32 @hantro_is_encoder_ctx(%struct.hantro_ctx*) #1

declare dso_local i32 @vidioc_try_fmt_out_mplane(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local %struct.hantro_fmt* @hantro_get_formats(%struct.hantro_ctx*, i32*) #1

declare dso_local %struct.TYPE_8__* @hantro_find_format(%struct.hantro_fmt*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hantro_reset_raw_fmt(%struct.hantro_ctx*) #1

declare dso_local i32 @hantro_update_requires_request(%struct.hantro_ctx*, i32) #1

declare dso_local i32 @vpu_debug(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
