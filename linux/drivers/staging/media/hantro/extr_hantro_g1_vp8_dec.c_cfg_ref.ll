; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_vp8_dec.c_cfg_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_vp8_dec.c_cfg_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.hantro_dev*, %struct.TYPE_6__ }
%struct.hantro_dev = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.vb2_queue }
%struct.vb2_queue = type { i32 }
%struct.v4l2_ctrl_vp8_frame_header = type { i32, i64, i64, i64 }
%struct.vb2_v4l2_buffer = type { i32 }

@V4L2_VP8_FRAME_HEADER_FLAG_SIGN_BIAS_GOLDEN = common dso_local global i32 0, align 4
@G1_REG_ADDR_REF_TOPC_E = common dso_local global i32 0, align 4
@V4L2_VP8_FRAME_HEADER_FLAG_SIGN_BIAS_ALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*)* @cfg_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg_ref(%struct.hantro_ctx* %0, %struct.v4l2_ctrl_vp8_frame_header* %1) #0 {
  %3 = alloca %struct.hantro_ctx*, align 8
  %4 = alloca %struct.v4l2_ctrl_vp8_frame_header*, align 8
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca %struct.hantro_dev*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  store %struct.v4l2_ctrl_vp8_frame_header* %1, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %9 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.vb2_queue* %14, %struct.vb2_queue** %5, align 8
  %15 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %15, i32 0, i32 0
  %17 = load %struct.hantro_dev*, %struct.hantro_dev** %16, align 8
  store %struct.hantro_dev* %17, %struct.hantro_dev** %6, align 8
  %18 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %19 = call %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx* %18)
  store %struct.vb2_v4l2_buffer* %19, %struct.vb2_v4l2_buffer** %7, align 8
  %20 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %21 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @hantro_get_ref(%struct.vb2_queue* %20, i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %29 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %28, i32 0, i32 0
  %30 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %29, i32 0)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.hantro_dev*, %struct.hantro_dev** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @G1_REG_ADDR_REF(i32 0)
  %35 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %32, i32 %33, i32 %34)
  %36 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %37 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @hantro_get_ref(%struct.vb2_queue* %36, i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %31
  %44 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %45 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %43, %31
  %49 = phi i1 [ false, %31 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %56 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %55, i32 0, i32 0
  %57 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %56, i32 0)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %60 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @V4L2_VP8_FRAME_HEADER_FLAG_SIGN_BIAS_GOLDEN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @G1_REG_ADDR_REF_TOPC_E, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %58
  %70 = load %struct.hantro_dev*, %struct.hantro_dev** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @G1_REG_ADDR_REF(i32 4)
  %73 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %70, i32 %71, i32 %72)
  %74 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %75 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %76 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @hantro_get_ref(%struct.vb2_queue* %74, i64 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %69
  %82 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %83 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %81, %69
  %87 = phi i1 [ false, %69 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @WARN_ON(i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %86
  %93 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %94 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %93, i32 0, i32 0
  %95 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %94, i32 0)
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %92, %86
  %97 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %98 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @V4L2_VP8_FRAME_HEADER_FLAG_SIGN_BIAS_ALT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i32, i32* @G1_REG_ADDR_REF_TOPC_E, align 4
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %103, %96
  %108 = load %struct.hantro_dev*, %struct.hantro_dev** %6, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @G1_REG_ADDR_REF(i32 5)
  %111 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %108, i32 %109, i32 %110)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx*) #1

declare dso_local i32 @hantro_get_ref(%struct.vb2_queue*, i64) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @G1_REG_ADDR_REF(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
