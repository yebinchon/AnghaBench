; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_session = type { i32, i64, i32, %struct.TYPE_2__*, %struct.amvdec_core* }
%struct.TYPE_2__ = type { %struct.amvdec_codec_ops* }
%struct.amvdec_codec_ops = type { i64 (%struct.amvdec_session*)* }
%struct.amvdec_core = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, i64, %struct.vb2_buffer }
%struct.vb2_buffer = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"esparser: ts = %llu pld_size = %u offset = %08X\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"esparser: input parsing error\0A\00", align 1
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@PARSER_FETCH_CMD = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amvdec_session*, %struct.vb2_v4l2_buffer*)* @esparser_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esparser_queue(%struct.amvdec_session* %0, %struct.vb2_v4l2_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amvdec_session*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_buffer*, align 8
  %8 = alloca %struct.amvdec_core*, align 8
  %9 = alloca %struct.amvdec_codec_ops*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.amvdec_session* %0, %struct.amvdec_session** %4, align 8
  store %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer** %5, align 8
  %15 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %15, i32 0, i32 2
  store %struct.vb2_buffer* %16, %struct.vb2_buffer** %7, align 8
  %17 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %18 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %17, i32 0, i32 4
  %19 = load %struct.amvdec_core*, %struct.amvdec_core** %18, align 8
  store %struct.amvdec_core* %19, %struct.amvdec_core** %8, align 8
  %20 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %21 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.amvdec_codec_ops*, %struct.amvdec_codec_ops** %23, align 8
  store %struct.amvdec_codec_ops* %24, %struct.amvdec_codec_ops** %9, align 8
  store i64 0, i64* %10, align 8
  %25 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %26 = call i64 @vb2_get_plane_payload(%struct.vb2_buffer* %25, i32 0)
  store i64 %26, i64* %11, align 8
  %27 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %28 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %27, i32 0)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.amvdec_codec_ops*, %struct.amvdec_codec_ops** %9, align 8
  %30 = getelementptr inbounds %struct.amvdec_codec_ops, %struct.amvdec_codec_ops* %29, i32 0, i32 0
  %31 = load i64 (%struct.amvdec_session*)*, i64 (%struct.amvdec_session*)** %30, align 8
  %32 = icmp ne i64 (%struct.amvdec_session*)* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load %struct.amvdec_codec_ops*, %struct.amvdec_codec_ops** %9, align 8
  %35 = getelementptr inbounds %struct.amvdec_codec_ops, %struct.amvdec_codec_ops* %34, i32 0, i32 0
  %36 = load i64 (%struct.amvdec_session*)*, i64 (%struct.amvdec_session*)** %35, align 8
  %37 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %38 = call i64 %36(%struct.amvdec_session* %37)
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %33, %2
  %40 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %41 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @v4l2_m2m_num_dst_bufs_ready(i32 %42)
  %44 = load i64, i64* %10, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %10, align 8
  %46 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %47 = call i64 @esparser_vififo_get_free_space(%struct.amvdec_session* %46)
  %48 = load i64, i64* %11, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %39
  %51 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %52 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %51, i32 0, i32 0
  %53 = call i64 @atomic_read(i32* %52)
  %54 = load i64, i64* %10, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %39
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %139

59:                                               ; preds = %50
  %60 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %61 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %64 = call i32 @v4l2_m2m_src_buf_remove_by_buf(i32 %62, %struct.vb2_v4l2_buffer* %63)
  %65 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %66 = call i64 @esparser_get_offset(%struct.amvdec_session* %65)
  store i64 %66, i64* %13, align 8
  %67 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %68 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %69 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %13, align 8
  %72 = call i32 @amvdec_add_ts_reorder(%struct.amvdec_session* %67, i32 %70, i64 %71)
  %73 = load %struct.amvdec_core*, %struct.amvdec_core** %8, align 8
  %74 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %77 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %78, i64 %79, i64 %80)
  %82 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %83 = call i64 @esparser_pad_start_code(%struct.vb2_buffer* %82)
  store i64 %83, i64* %14, align 8
  %84 = load %struct.amvdec_core*, %struct.amvdec_core** %8, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %14, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @esparser_write_data(%struct.amvdec_core* %84, i32 %85, i64 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp sle i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %59
  %93 = load %struct.amvdec_core*, %struct.amvdec_core** %8, align 8
  %94 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dev_warn(i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %98 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %99 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @amvdec_remove_ts(%struct.amvdec_session* %97, i32 %100)
  %102 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %103 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %104 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %102, i32 %103)
  %105 = load %struct.amvdec_core*, %struct.amvdec_core** %8, align 8
  %106 = load i32, i32* @PARSER_FETCH_CMD, align 4
  %107 = call i32 @amvdec_write_parser(%struct.amvdec_core* %105, i32 %106, i32 0)
  store i32 0, i32* %3, align 4
  br label %139

108:                                              ; preds = %59
  %109 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %110 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %115

115:                                              ; preds = %113, %108
  %116 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %117 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %122 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %121, i32 0, i32 0
  %123 = call i32 @atomic_inc(i32* %122)
  br label %130

124:                                              ; preds = %115
  %125 = load %struct.amvdec_session*, %struct.amvdec_session** %4, align 8
  %126 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %127 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @amvdec_remove_ts(%struct.amvdec_session* %125, i32 %128)
  br label %130

130:                                              ; preds = %124, %120
  %131 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %132 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %134 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %135 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %137 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %138 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %136, i32 %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %130, %92, %56
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @vb2_get_plane_payload(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @v4l2_m2m_num_dst_bufs_ready(i32) #1

declare dso_local i64 @esparser_vififo_get_free_space(%struct.amvdec_session*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @v4l2_m2m_src_buf_remove_by_buf(i32, %struct.vb2_v4l2_buffer*) #1

declare dso_local i64 @esparser_get_offset(%struct.amvdec_session*) #1

declare dso_local i32 @amvdec_add_ts_reorder(%struct.amvdec_session*, i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i64) #1

declare dso_local i64 @esparser_pad_start_code(%struct.vb2_buffer*) #1

declare dso_local i32 @esparser_write_data(%struct.amvdec_core*, i32, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @amvdec_remove_ts(%struct.amvdec_session*, i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @amvdec_write_parser(%struct.amvdec_core*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
