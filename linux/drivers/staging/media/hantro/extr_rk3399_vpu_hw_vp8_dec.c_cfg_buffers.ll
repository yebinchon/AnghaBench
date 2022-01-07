; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_vp8_dec.c_cfg_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_vp8_dec.c_cfg_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_6__, %struct.hantro_dev* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hantro_dev = type { i32 }
%struct.v4l2_ctrl_vp8_frame_header = type { %struct.v4l2_vp8_segment_header }
%struct.v4l2_vp8_segment_header = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@VDPU_REG_ADDR_QTABLE = common dso_local global i32 0, align 4
@V4L2_VP8_SEGMENT_HEADER_FLAG_ENABLED = common dso_local global i32 0, align 4
@VDPU_REG_FWD_PIC1_SEGMENT_E = common dso_local global i32 0, align 4
@V4L2_VP8_SEGMENT_HEADER_FLAG_UPDATE_MAP = common dso_local global i32 0, align 4
@VDPU_REG_FWD_PIC1_SEGMENT_UPD_E = common dso_local global i32 0, align 4
@VDPU_REG_VP8_SEGMENT_VAL = common dso_local global i32 0, align 4
@VDPU_REG_ADDR_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*)* @cfg_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg_buffers(%struct.hantro_ctx* %0, %struct.v4l2_ctrl_vp8_frame_header* %1) #0 {
  %3 = alloca %struct.hantro_ctx*, align 8
  %4 = alloca %struct.v4l2_ctrl_vp8_frame_header*, align 8
  %5 = alloca %struct.v4l2_vp8_segment_header*, align 8
  %6 = alloca %struct.hantro_dev*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  store %struct.v4l2_ctrl_vp8_frame_header* %1, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %10 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %10, i32 0, i32 0
  store %struct.v4l2_vp8_segment_header* %11, %struct.v4l2_vp8_segment_header** %5, align 8
  %12 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %12, i32 0, i32 1
  %14 = load %struct.hantro_dev*, %struct.hantro_dev** %13, align 8
  store %struct.hantro_dev* %14, %struct.hantro_dev** %6, align 8
  %15 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %16 = call %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx* %15)
  store %struct.vb2_v4l2_buffer* %16, %struct.vb2_v4l2_buffer** %7, align 8
  %17 = load %struct.hantro_dev*, %struct.hantro_dev** %6, align 8
  %18 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VDPU_REG_ADDR_QTABLE, align 4
  %24 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %17, i32 %22, i32 %23)
  %25 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @VDPU_REG_FWD_PIC1_SEGMENT_BASE(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.v4l2_vp8_segment_header*, %struct.v4l2_vp8_segment_header** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_vp8_segment_header, %struct.v4l2_vp8_segment_header* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @V4L2_VP8_SEGMENT_HEADER_FLAG_ENABLED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %2
  %38 = load i32, i32* @VDPU_REG_FWD_PIC1_SEGMENT_E, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load %struct.v4l2_vp8_segment_header*, %struct.v4l2_vp8_segment_header** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_vp8_segment_header, %struct.v4l2_vp8_segment_header* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @V4L2_VP8_SEGMENT_HEADER_FLAG_UPDATE_MAP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i32, i32* @VDPU_REG_FWD_PIC1_SEGMENT_UPD_E, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %37
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.hantro_dev*, %struct.hantro_dev** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @VDPU_REG_VP8_SEGMENT_VAL, align 4
  %56 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %53, i32 %54, i32 %55)
  %57 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %58 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %57, i32 0, i32 0
  %59 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %58, i32 0)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.hantro_dev*, %struct.hantro_dev** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @VDPU_REG_ADDR_DST, align 4
  %63 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %60, i32 %61, i32 %62)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx*) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @VDPU_REG_FWD_PIC1_SEGMENT_BASE(i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
