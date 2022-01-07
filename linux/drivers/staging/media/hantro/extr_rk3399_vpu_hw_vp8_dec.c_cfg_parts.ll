; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_vp8_dec.c_cfg_parts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_vp8_dec.c_cfg_parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.hantro_dev* }
%struct.hantro_dev = type { i32 }
%struct.v4l2_ctrl_vp8_frame_header = type { i32, i32, i32, i32* }
%struct.vb2_v4l2_buffer = type { i32 }

@DEC_8190_ALIGN_MASK = common dso_local global i32 0, align 4
@VDPU_REG_VP8_ADDR_CTRL_PART = common dso_local global i32 0, align 4
@vp8_dec_mb_start_bit = common dso_local global i32 0, align 4
@vp8_dec_mb_aligned_data_len = common dso_local global i32 0, align 4
@vp8_dec_num_dct_partitions = common dso_local global i32 0, align 4
@vp8_dec_stream_len = common dso_local global i32 0, align 4
@vp8_dec_dct_base = common dso_local global i32* null, align 8
@vp8_dec_dct_start_bits = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*)* @cfg_parts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg_parts(%struct.hantro_ctx* %0, %struct.v4l2_ctrl_vp8_frame_header* %1) #0 {
  %3 = alloca %struct.hantro_ctx*, align 8
  %4 = alloca %struct.v4l2_ctrl_vp8_frame_header*, align 8
  %5 = alloca %struct.hantro_dev*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  store %struct.v4l2_ctrl_vp8_frame_header* %1, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %20 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %20, i32 0, i32 0
  %22 = load %struct.hantro_dev*, %struct.hantro_dev** %21, align 8
  store %struct.hantro_dev* %22, %struct.hantro_dev** %5, align 8
  %23 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %24 = call i64 @VP8_FRAME_IS_KEY_FRAME(%struct.v4l2_ctrl_vp8_frame_header* %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 10, i32 3
  store i32 %27, i32* %7, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %28 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %29 = call %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx* %28)
  store %struct.vb2_v4l2_buffer* %29, %struct.vb2_v4l2_buffer** %6, align 8
  %30 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %30, i32 0, i32 0
  %32 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %31, i32 0)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %33, 8
  %35 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %34, %37
  %39 = add nsw i32 %38, 8
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sdiv i32 %40, 8
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @DEC_8190_ALIGN_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = mul nsw i32 %46, 8
  %48 = sub nsw i32 %42, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sub nsw i32 %51, %54
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @DEC_8190_ALIGN_MASK, align 4
  %58 = and i32 %56, %57
  %59 = add nsw i32 %55, %58
  store i32 %59, i32* %8, align 4
  %60 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @DEC_8190_ALIGN_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* @VDPU_REG_VP8_ADDR_CTRL_PART, align 4
  %68 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %60, i32 %66, i32 %67)
  %69 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @hantro_reg_write(%struct.hantro_dev* %69, i32* @vp8_dec_mb_start_bit, i32 %70)
  %72 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @hantro_reg_write(%struct.hantro_dev* %72, i32* @vp8_dec_mb_aligned_data_len, i32 %73)
  %75 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %76 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  %79 = mul nsw i32 %78, 3
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %82 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  store i32 %84, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %85

85:                                               ; preds = %101, %2
  %86 = load i32, i32* %17, align 4
  %87 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %88 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %93 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %17, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %91
  %102 = load i32, i32* %17, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %17, align 4
  br label %85

104:                                              ; preds = %85
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @DEC_8190_ALIGN_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %15, align 4
  %113 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %114 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %115 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = call i32 @hantro_reg_write(%struct.hantro_dev* %113, i32* @vp8_dec_num_dct_partitions, i32 %117)
  %119 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @hantro_reg_write(%struct.hantro_dev* %119, i32* @vp8_dec_stream_len, i32 %120)
  store i32 0, i32* %17, align 4
  br label %122

122:                                              ; preds = %166, %104
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %125 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ult i32 %123, %126
  br i1 %127, label %128, label %169

128:                                              ; preds = %122
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %134, %135
  store i32 %136, i32* %19, align 4
  %137 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %138 = load i32*, i32** @vp8_dec_dct_base, align 8
  %139 = load i32, i32* %17, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* @DEC_8190_ALIGN_MASK, align 4
  %144 = xor i32 %143, -1
  %145 = and i32 %142, %144
  %146 = call i32 @hantro_reg_write(%struct.hantro_dev* %137, i32* %141, i32 %145)
  %147 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %148 = load i32*, i32** @vp8_dec_dct_start_bits, align 8
  %149 = load i32, i32* %17, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* @DEC_8190_ALIGN_MASK, align 4
  %154 = and i32 %152, %153
  %155 = mul nsw i32 %154, 8
  %156 = call i32 @hantro_reg_write(%struct.hantro_dev* %147, i32* %151, i32 %155)
  %157 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %158 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %17, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %16, align 4
  br label %166

166:                                              ; preds = %128
  %167 = load i32, i32* %17, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %17, align 4
  br label %122

169:                                              ; preds = %122
  ret void
}

declare dso_local i64 @VP8_FRAME_IS_KEY_FRAME(%struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx*) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @hantro_reg_write(%struct.hantro_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
