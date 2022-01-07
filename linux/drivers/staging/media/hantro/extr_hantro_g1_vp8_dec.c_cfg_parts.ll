; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_vp8_dec.c_cfg_parts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_vp8_dec.c_cfg_parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_reg = type { i32, i32, i8* }
%struct.hantro_ctx = type { %struct.hantro_dev* }
%struct.hantro_dev = type { i32 }
%struct.v4l2_ctrl_vp8_frame_header = type { i32, i32, i32, i32* }
%struct.vb2_v4l2_buffer = type { i32 }

@DEC_8190_ALIGN_MASK = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL2 = common dso_local global i8* null, align 8
@G1_REG_DEC_CTRL6 = common dso_local global i8* null, align 8
@G1_REG_DEC_CTRL3 = common dso_local global i32 0, align 4
@vp8_dec_dct_base = common dso_local global %struct.hantro_reg* null, align 8
@vp8_dec_dct_start_bits = common dso_local global %struct.hantro_reg* null, align 8
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
  %14 = alloca %struct.hantro_reg, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  store %struct.v4l2_ctrl_vp8_frame_header* %1, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %21 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %21, i32 0, i32 0
  %23 = load %struct.hantro_dev*, %struct.hantro_dev** %22, align 8
  store %struct.hantro_dev* %23, %struct.hantro_dev** %5, align 8
  %24 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %25 = call i64 @VP8_FRAME_IS_KEY_FRAME(%struct.v4l2_ctrl_vp8_frame_header* %24)
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 10, i32 3
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %29 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %30 = call %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx* %29)
  store %struct.vb2_v4l2_buffer* %30, %struct.vb2_v4l2_buffer** %6, align 8
  %31 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %31, i32 0, i32 0
  %33 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %32, i32 0)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %34, 8
  %36 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %35, %38
  %40 = add nsw i32 %39, 8
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sdiv i32 %41, 8
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @DEC_8190_ALIGN_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = mul nsw i32 %47, 8
  %49 = sub nsw i32 %43, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %51 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sub nsw i32 %52, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @DEC_8190_ALIGN_MASK, align 4
  %59 = and i32 %57, %58
  %60 = add nsw i32 %56, %59
  store i32 %60, i32* %8, align 4
  %61 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @DEC_8190_ALIGN_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %65, %66
  %68 = call i32 @G1_REG_ADDR_REF(i32 13)
  %69 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %61, i32 %67, i32 %68)
  %70 = load i8*, i8** @G1_REG_DEC_CTRL2, align 8
  %71 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %14, i32 0, i32 2
  store i8* %70, i8** %71, align 8
  %72 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %14, i32 0, i32 0
  store i32 63, i32* %72, align 8
  %73 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %14, i32 0, i32 1
  store i32 18, i32* %73, align 4
  %74 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @hantro_reg_write(%struct.hantro_dev* %74, %struct.hantro_reg* %14, i32 %75)
  %77 = load i8*, i8** @G1_REG_DEC_CTRL6, align 8
  %78 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %14, i32 0, i32 2
  store i8* %77, i8** %78, align 8
  %79 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %14, i32 0, i32 0
  store i32 4194303, i32* %79, align 8
  %80 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %14, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  %84 = call i32 @hantro_reg_write(%struct.hantro_dev* %81, %struct.hantro_reg* %14, i32 %83)
  %85 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %86 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  %89 = mul nsw i32 %88, 3
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %92 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  store i32 %94, i32* %13, align 4
  store i32 0, i32* %18, align 4
  br label %95

95:                                               ; preds = %111, %2
  %96 = load i32, i32* %18, align 4
  %97 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %98 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %95
  %102 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %103 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %18, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %18, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %18, align 4
  br label %95

114:                                              ; preds = %95
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @DEC_8190_ALIGN_MASK, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %16, align 4
  %123 = load i8*, i8** @G1_REG_DEC_CTRL6, align 8
  %124 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %14, i32 0, i32 2
  store i8* %123, i8** %124, align 8
  %125 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %14, i32 0, i32 0
  store i32 15, i32* %125, align 8
  %126 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %14, i32 0, i32 1
  store i32 24, i32* %126, align 4
  %127 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %128 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %129 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %130, 1
  %132 = call i32 @hantro_reg_write(%struct.hantro_dev* %127, %struct.hantro_reg* %14, i32 %131)
  %133 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %134 = load i32, i32* %16, align 4
  %135 = call i32 @G1_REG_DEC_CTRL3_STREAM_LEN(i32 %134)
  %136 = load i32, i32* @G1_REG_DEC_CTRL3, align 4
  %137 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %133, i32 %135, i32 %136)
  store i32 0, i32* %18, align 4
  br label %138

138:                                              ; preds = %182, %114
  %139 = load i32, i32* %18, align 4
  %140 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %141 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp ult i32 %139, %142
  br i1 %143, label %144, label %185

144:                                              ; preds = %138
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* %17, align 4
  %149 = add nsw i32 %147, %148
  store i32 %149, i32* %19, align 4
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %150, %151
  store i32 %152, i32* %20, align 4
  %153 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %154 = load %struct.hantro_reg*, %struct.hantro_reg** @vp8_dec_dct_base, align 8
  %155 = load i32, i32* %18, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %154, i64 %156
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* @DEC_8190_ALIGN_MASK, align 4
  %160 = xor i32 %159, -1
  %161 = and i32 %158, %160
  %162 = call i32 @hantro_reg_write(%struct.hantro_dev* %153, %struct.hantro_reg* %157, i32 %161)
  %163 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %164 = load %struct.hantro_reg*, %struct.hantro_reg** @vp8_dec_dct_start_bits, align 8
  %165 = load i32, i32* %18, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %164, i64 %166
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* @DEC_8190_ALIGN_MASK, align 4
  %170 = and i32 %168, %169
  %171 = mul nsw i32 %170, 8
  %172 = call i32 @hantro_reg_write(%struct.hantro_dev* %163, %struct.hantro_reg* %167, i32 %171)
  %173 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %174 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %18, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %17, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %17, align 4
  br label %182

182:                                              ; preds = %144
  %183 = load i32, i32* %18, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %18, align 4
  br label %138

185:                                              ; preds = %138
  ret void
}

declare dso_local i64 @VP8_FRAME_IS_KEY_FRAME(%struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx*) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @G1_REG_ADDR_REF(i32) #1

declare dso_local i32 @hantro_reg_write(%struct.hantro_dev*, %struct.hantro_reg*, i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL3_STREAM_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
