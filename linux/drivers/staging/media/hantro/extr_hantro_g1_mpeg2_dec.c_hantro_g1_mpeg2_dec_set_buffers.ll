; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_mpeg2_dec.c_hantro_g1_mpeg2_dec_set_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_mpeg2_dec.c_hantro_g1_mpeg2_dec_set_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_dev = type { i32 }
%struct.hantro_ctx = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vb2_buffer = type { i32 }
%struct.v4l2_mpeg2_sequence = type { i32 }
%struct.v4l2_mpeg2_picture = type { i32, i64, i64 }
%struct.v4l2_ctrl_mpeg2_slice_params = type { i32, i32 }
%struct.vb2_queue = type { i32 }

@G1_REG_RLC_VLC_BASE = common dso_local global i32 0, align 4
@PICT_BOTTOM_FIELD = common dso_local global i64 0, align 8
@G1_REG_DEC_OUT_BASE = common dso_local global i32 0, align 4
@PICT_FRAME = common dso_local global i64 0, align 8
@PICT_TOP_FIELD = common dso_local global i64 0, align 8
@G1_REG_REFER0_BASE = common dso_local global i32 0, align 4
@G1_REG_REFER1_BASE = common dso_local global i32 0, align 4
@G1_REG_REFER2_BASE = common dso_local global i32 0, align 4
@G1_REG_REFER3_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_dev*, %struct.hantro_ctx*, %struct.vb2_buffer*, %struct.vb2_buffer*, %struct.v4l2_mpeg2_sequence*, %struct.v4l2_mpeg2_picture*, %struct.v4l2_ctrl_mpeg2_slice_params*)* @hantro_g1_mpeg2_dec_set_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hantro_g1_mpeg2_dec_set_buffers(%struct.hantro_dev* %0, %struct.hantro_ctx* %1, %struct.vb2_buffer* %2, %struct.vb2_buffer* %3, %struct.v4l2_mpeg2_sequence* %4, %struct.v4l2_mpeg2_picture* %5, %struct.v4l2_ctrl_mpeg2_slice_params* %6) #0 {
  %8 = alloca %struct.hantro_dev*, align 8
  %9 = alloca %struct.hantro_ctx*, align 8
  %10 = alloca %struct.vb2_buffer*, align 8
  %11 = alloca %struct.vb2_buffer*, align 8
  %12 = alloca %struct.v4l2_mpeg2_sequence*, align 8
  %13 = alloca %struct.v4l2_mpeg2_picture*, align 8
  %14 = alloca %struct.v4l2_ctrl_mpeg2_slice_params*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.vb2_queue*, align 8
  store %struct.hantro_dev* %0, %struct.hantro_dev** %8, align 8
  store %struct.hantro_ctx* %1, %struct.hantro_ctx** %9, align 8
  store %struct.vb2_buffer* %2, %struct.vb2_buffer** %10, align 8
  store %struct.vb2_buffer* %3, %struct.vb2_buffer** %11, align 8
  store %struct.v4l2_mpeg2_sequence* %4, %struct.v4l2_mpeg2_sequence** %12, align 8
  store %struct.v4l2_mpeg2_picture* %5, %struct.v4l2_mpeg2_picture** %13, align 8
  store %struct.v4l2_ctrl_mpeg2_slice_params* %6, %struct.v4l2_ctrl_mpeg2_slice_params** %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %20 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %21 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.vb2_queue* @v4l2_m2m_get_dst_vq(i32 %23)
  store %struct.vb2_queue* %24, %struct.vb2_queue** %19, align 8
  %25 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %13, align 8
  %26 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %40 [
    i32 129, label %28
    i32 128, label %34
  ]

28:                                               ; preds = %7
  %29 = load %struct.vb2_queue*, %struct.vb2_queue** %19, align 8
  %30 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %14, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @hantro_get_ref(%struct.vb2_queue* %29, i32 %32)
  store i64 %33, i64* %16, align 8
  br label %34

34:                                               ; preds = %7, %28
  %35 = load %struct.vb2_queue*, %struct.vb2_queue** %19, align 8
  %36 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %14, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @hantro_get_ref(%struct.vb2_queue* %35, i32 %38)
  store i64 %39, i64* %15, align 8
  br label %40

40:                                               ; preds = %34, %7
  %41 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %42 = call i64 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %41, i32 0)
  store i64 %42, i64* %18, align 8
  %43 = load %struct.hantro_dev*, %struct.hantro_dev** %8, align 8
  %44 = load i64, i64* %18, align 8
  %45 = load i32, i32* @G1_REG_RLC_VLC_BASE, align 4
  %46 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %43, i64 %44, i32 %45)
  %47 = load %struct.vb2_buffer*, %struct.vb2_buffer** %11, align 8
  %48 = call i64 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %47, i32 0)
  store i64 %48, i64* %18, align 8
  %49 = load i64, i64* %18, align 8
  store i64 %49, i64* %17, align 8
  %50 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %13, align 8
  %51 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PICT_BOTTOM_FIELD, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %40
  %56 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %57 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ALIGN(i32 %59, i32 16)
  %61 = load i64, i64* %18, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %18, align 8
  br label %63

63:                                               ; preds = %55, %40
  %64 = load %struct.hantro_dev*, %struct.hantro_dev** %8, align 8
  %65 = load i64, i64* %18, align 8
  %66 = load i32, i32* @G1_REG_DEC_OUT_BASE, align 4
  %67 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %64, i64 %65, i32 %66)
  %68 = load i64, i64* %15, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %63
  %71 = load i64, i64* %17, align 8
  store i64 %71, i64* %15, align 8
  br label %72

72:                                               ; preds = %70, %63
  %73 = load i64, i64* %16, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %17, align 8
  store i64 %76, i64* %16, align 8
  br label %77

77:                                               ; preds = %75, %72
  %78 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %13, align 8
  %79 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PICT_FRAME, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %110, label %83

83:                                               ; preds = %77
  %84 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %13, align 8
  %85 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 129
  br i1 %87, label %110, label %88

88:                                               ; preds = %83
  %89 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %13, align 8
  %90 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PICT_TOP_FIELD, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %13, align 8
  %96 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %94, %88
  %100 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %13, align 8
  %101 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PICT_BOTTOM_FIELD, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %13, align 8
  %107 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %105, %94, %83, %77
  %111 = load %struct.hantro_dev*, %struct.hantro_dev** %8, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load i32, i32* @G1_REG_REFER0_BASE, align 4
  %114 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %111, i64 %112, i32 %113)
  %115 = load %struct.hantro_dev*, %struct.hantro_dev** %8, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load i32, i32* @G1_REG_REFER1_BASE, align 4
  %118 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %115, i64 %116, i32 %117)
  br label %151

119:                                              ; preds = %105, %99
  %120 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %13, align 8
  %121 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @PICT_TOP_FIELD, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load %struct.hantro_dev*, %struct.hantro_dev** %8, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i32, i32* @G1_REG_REFER0_BASE, align 4
  %129 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %126, i64 %127, i32 %128)
  %130 = load %struct.hantro_dev*, %struct.hantro_dev** %8, align 8
  %131 = load i64, i64* %17, align 8
  %132 = load i32, i32* @G1_REG_REFER1_BASE, align 4
  %133 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %130, i64 %131, i32 %132)
  br label %150

134:                                              ; preds = %119
  %135 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %13, align 8
  %136 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @PICT_BOTTOM_FIELD, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %134
  %141 = load %struct.hantro_dev*, %struct.hantro_dev** %8, align 8
  %142 = load i64, i64* %17, align 8
  %143 = load i32, i32* @G1_REG_REFER0_BASE, align 4
  %144 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %141, i64 %142, i32 %143)
  %145 = load %struct.hantro_dev*, %struct.hantro_dev** %8, align 8
  %146 = load i64, i64* %15, align 8
  %147 = load i32, i32* @G1_REG_REFER1_BASE, align 4
  %148 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %145, i64 %146, i32 %147)
  br label %149

149:                                              ; preds = %140, %134
  br label %150

150:                                              ; preds = %149, %125
  br label %151

151:                                              ; preds = %150, %110
  %152 = load %struct.hantro_dev*, %struct.hantro_dev** %8, align 8
  %153 = load i64, i64* %16, align 8
  %154 = load i32, i32* @G1_REG_REFER2_BASE, align 4
  %155 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %152, i64 %153, i32 %154)
  %156 = load %struct.hantro_dev*, %struct.hantro_dev** %8, align 8
  %157 = load i64, i64* %16, align 8
  %158 = load i32, i32* @G1_REG_REFER3_BASE, align 4
  %159 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %156, i64 %157, i32 %158)
  ret void
}

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_dst_vq(i32) #1

declare dso_local i64 @hantro_get_ref(%struct.vb2_queue*, i32) #1

declare dso_local i64 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i64, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
