; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_h264_dec.c_set_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_h264_dec.c_set_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.hantro_dev* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.hantro_h264_dec_ctrls }
%struct.TYPE_9__ = type { i64 }
%struct.hantro_h264_dec_ctrls = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.hantro_dev = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@G1_REG_ADDR_STR = common dso_local global i32 0, align 4
@G1_REG_ADDR_DST = common dso_local global i32 0, align 4
@V4L2_H264_SLICE_FLAG_BOTTOM_FIELD = common dso_local global i32 0, align 4
@G1_REG_ADDR_DIR_MV = common dso_local global i32 0, align 4
@G1_REG_ADDR_QTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_ctx*)* @set_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_buffers(%struct.hantro_ctx* %0) #0 {
  %2 = alloca %struct.hantro_ctx*, align 8
  %3 = alloca %struct.hantro_h264_dec_ctrls*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.hantro_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %2, align 8
  %11 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  store %struct.hantro_h264_dec_ctrls* %13, %struct.hantro_h264_dec_ctrls** %3, align 8
  %14 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %14, i32 0, i32 2
  %16 = load %struct.hantro_dev*, %struct.hantro_dev** %15, align 8
  store %struct.hantro_dev* %16, %struct.hantro_dev** %6, align 8
  %17 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %18 = call %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx* %17)
  store %struct.vb2_v4l2_buffer* %18, %struct.vb2_v4l2_buffer** %4, align 8
  %19 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %20 = call %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx* %19)
  store %struct.vb2_v4l2_buffer* %20, %struct.vb2_v4l2_buffer** %5, align 8
  %21 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %21, i32 0, i32 0
  %23 = call i64 @vb2_dma_contig_plane_dma_addr(i32* %22, i32 0)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.hantro_dev*, %struct.hantro_dev** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* @G1_REG_ADDR_STR, align 4
  %27 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %24, i64 %25, i32 %26)
  %28 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %29 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %28, i32 0, i32 0
  %30 = call i64 @vb2_dma_contig_plane_dma_addr(i32* %29, i32 0)
  store i64 %30, i64* %8, align 8
  %31 = load %struct.hantro_dev*, %struct.hantro_dev** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* @G1_REG_ADDR_DST, align 4
  %34 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %31, i64 %32, i32 %33)
  %35 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %3, align 8
  %36 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 66
  br i1 %40, label %41, label %74

41:                                               ; preds = %1
  %42 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %43 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @round_up(i64 %46, i32 8)
  store i64 %47, i64* %10, align 8
  %48 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %3, align 8
  %49 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @V4L2_H264_SLICE_FLAG_BOTTOM_FIELD, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %41
  %58 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %59 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @H264_MB_WIDTH(i32 %61)
  %63 = mul nsw i32 32, %62
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %57, %41
  %68 = load %struct.hantro_dev*, %struct.hantro_dev** %6, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %69, %70
  %72 = load i32, i32* @G1_REG_ADDR_DIR_MV, align 4
  %73 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %68, i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %1
  %75 = load %struct.hantro_dev*, %struct.hantro_dev** %6, align 8
  %76 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @G1_REG_ADDR_QTABLE, align 4
  %82 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %75, i64 %80, i32 %81)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx*) #1

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx*) #1

declare dso_local i64 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i64, i32) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i32 @H264_MB_WIDTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
