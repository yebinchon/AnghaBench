; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_dec.c_cedrus_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_dec.c_cedrus_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_ctx = type { i64, i32, %struct.TYPE_13__, %struct.TYPE_10__, %struct.cedrus_dev* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.cedrus_dev = type { %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32 (%struct.cedrus_ctx*)*, i32 (%struct.cedrus_ctx*, %struct.cedrus_run*)* }
%struct.cedrus_run = type { i32, %struct.TYPE_17__*, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.media_request* }
%struct.media_request = type { i32 }
%struct.TYPE_15__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i8*, i8* }

@V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_PPS = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_SPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cedrus_device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cedrus_ctx*, align 8
  %4 = alloca %struct.cedrus_dev*, align 8
  %5 = alloca %struct.cedrus_run, align 8
  %6 = alloca %struct.media_request*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.cedrus_ctx*
  store %struct.cedrus_ctx* %8, %struct.cedrus_ctx** %3, align 8
  %9 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %9, i32 0, i32 4
  %11 = load %struct.cedrus_dev*, %struct.cedrus_dev** %10, align 8
  store %struct.cedrus_dev* %11, %struct.cedrus_dev** %4, align 8
  %12 = bitcast %struct.cedrus_run* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 72, i1 false)
  %13 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_17__* @v4l2_m2m_next_src_buf(i32 %16)
  %18 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %5, i32 0, i32 1
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %18, align 8
  %19 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @v4l2_m2m_next_dst_buf(i32 %22)
  %24 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %5, i32 0, i32 1
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.media_request*, %struct.media_request** %29, align 8
  store %struct.media_request* %30, %struct.media_request** %6, align 8
  %31 = load %struct.media_request*, %struct.media_request** %6, align 8
  %32 = icmp ne %struct.media_request* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.media_request*, %struct.media_request** %6, align 8
  %35 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %35, i32 0, i32 1
  %37 = call i32 @v4l2_ctrl_request_setup(%struct.media_request* %34, i32* %36)
  br label %38

38:                                               ; preds = %33, %1
  %39 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %80 [
    i32 128, label %43
    i32 129, label %54
  ]

43:                                               ; preds = %38
  %44 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %45 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS, align 4
  %46 = call i8* @cedrus_find_control_data(%struct.cedrus_ctx* %44, i32 %45)
  %47 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %5, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %50 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION, align 4
  %51 = call i8* @cedrus_find_control_data(%struct.cedrus_ctx* %49, i32 %50)
  %52 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %5, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %81

54:                                               ; preds = %38
  %55 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %56 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS, align 4
  %57 = call i8* @cedrus_find_control_data(%struct.cedrus_ctx* %55, i32 %56)
  %58 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %5, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %61 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_PPS, align 4
  %62 = call i8* @cedrus_find_control_data(%struct.cedrus_ctx* %60, i32 %61)
  %63 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %5, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %66 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX, align 4
  %67 = call i8* @cedrus_find_control_data(%struct.cedrus_ctx* %65, i32 %66)
  %68 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %5, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %71 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS, align 4
  %72 = call i8* @cedrus_find_control_data(%struct.cedrus_ctx* %70, i32 %71)
  %73 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %5, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %76 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_SPS, align 4
  %77 = call i8* @cedrus_find_control_data(%struct.cedrus_ctx* %75, i32 %76)
  %78 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %5, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  br label %81

80:                                               ; preds = %38
  br label %81

81:                                               ; preds = %80, %54, %43
  %82 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %5, i32 0, i32 1
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %5, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @v4l2_m2m_buf_copy_metadata(%struct.TYPE_17__* %83, i32 %85, i32 1)
  %87 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %88 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %88, align 8
  %90 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %91 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %89, i64 %92
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32 (%struct.cedrus_ctx*, %struct.cedrus_run*)*, i32 (%struct.cedrus_ctx*, %struct.cedrus_run*)** %95, align 8
  %97 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %98 = call i32 %96(%struct.cedrus_ctx* %97, %struct.cedrus_run* %5)
  %99 = load %struct.media_request*, %struct.media_request** %6, align 8
  %100 = icmp ne %struct.media_request* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %81
  %102 = load %struct.media_request*, %struct.media_request** %6, align 8
  %103 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %103, i32 0, i32 1
  %105 = call i32 @v4l2_ctrl_request_complete(%struct.media_request* %102, i32* %104)
  br label %106

106:                                              ; preds = %101, %81
  %107 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %108 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %107, i32 0, i32 0
  %109 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %108, align 8
  %110 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %111 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %109, i64 %112
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32 (%struct.cedrus_ctx*)*, i32 (%struct.cedrus_ctx*)** %115, align 8
  %117 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %118 = call i32 %116(%struct.cedrus_ctx* %117)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_17__* @v4l2_m2m_next_src_buf(i32) #2

declare dso_local i32 @v4l2_m2m_next_dst_buf(i32) #2

declare dso_local i32 @v4l2_ctrl_request_setup(%struct.media_request*, i32*) #2

declare dso_local i8* @cedrus_find_control_data(%struct.cedrus_ctx*, i32) #2

declare dso_local i32 @v4l2_m2m_buf_copy_metadata(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @v4l2_ctrl_request_complete(%struct.media_request*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
