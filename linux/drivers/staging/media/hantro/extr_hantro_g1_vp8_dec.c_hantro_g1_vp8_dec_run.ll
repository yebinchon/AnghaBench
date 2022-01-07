; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_vp8_dec.c_hantro_g1_vp8_dec_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_vp8_dec.c_hantro_g1_vp8_dec_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.hantro_dev* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.hantro_dev = type { i32 }
%struct.v4l2_ctrl_vp8_frame_header = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }

@V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER = common dso_local global i32 0, align 4
@G1_REG_CONFIG_DEC_TIMEOUT_E = common dso_local global i32 0, align 4
@G1_REG_CONFIG_DEC_STRENDIAN_E = common dso_local global i32 0, align 4
@G1_REG_CONFIG_DEC_INSWAP32_E = common dso_local global i32 0, align 4
@G1_REG_CONFIG_DEC_STRSWAP32_E = common dso_local global i32 0, align 4
@G1_REG_CONFIG_DEC_OUTSWAP32_E = common dso_local global i32 0, align 4
@G1_REG_CONFIG_DEC_CLK_GATE_E = common dso_local global i32 0, align 4
@G1_REG_CONFIG_DEC_IN_ENDIAN = common dso_local global i32 0, align 4
@G1_REG_CONFIG_DEC_OUT_ENDIAN = common dso_local global i32 0, align 4
@G1_REG_CONFIG = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL0_PIC_INTER_E = common dso_local global i32 0, align 4
@V4L2_VP8_FRAME_HEADER_FLAG_MB_NO_SKIP_COEFF = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL0_SKIP_MODE = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL0_FILTERING_DIS = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL0 = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL1 = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL2 = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL4_VC1_HEIGHT_EXT = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL4_BILIN_MC_E = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL4 = common dso_local global i32 0, align 4
@G1_REG_INTERRUPT_DEC_E = common dso_local global i32 0, align 4
@G1_REG_INTERRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hantro_g1_vp8_dec_run(%struct.hantro_ctx* %0) #0 {
  %2 = alloca %struct.hantro_ctx*, align 8
  %3 = alloca %struct.v4l2_ctrl_vp8_frame_header*, align 8
  %4 = alloca %struct.hantro_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %2, align 8
  %10 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %10, i32 0, i32 2
  %12 = load %struct.hantro_dev*, %struct.hantro_dev** %11, align 8
  store %struct.hantro_dev* %12, %struct.hantro_dev** %4, align 8
  %13 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %22 = call i32 @hantro_prepare_run(%struct.hantro_ctx* %21)
  %23 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %24 = load i32, i32* @V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER, align 4
  %25 = call %struct.v4l2_ctrl_vp8_frame_header* @hantro_get_ctrl(%struct.hantro_ctx* %23, i32 %24)
  store %struct.v4l2_ctrl_vp8_frame_header* %25, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %26 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %27 = icmp ne %struct.v4l2_ctrl_vp8_frame_header* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %198

33:                                               ; preds = %1
  %34 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %35 = call i64 @VP8_FRAME_IS_KEY_FRAME(%struct.v4l2_ctrl_vp8_frame_header* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %51 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memset(i64 %49, i32 0, i32 %54)
  br label %56

56:                                               ; preds = %44, %37, %33
  %57 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %58 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %59 = call i32 @hantro_vp8_prob_update(%struct.hantro_ctx* %57, %struct.v4l2_ctrl_vp8_frame_header* %58)
  %60 = load i32, i32* @G1_REG_CONFIG_DEC_TIMEOUT_E, align 4
  %61 = load i32, i32* @G1_REG_CONFIG_DEC_STRENDIAN_E, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @G1_REG_CONFIG_DEC_INSWAP32_E, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @G1_REG_CONFIG_DEC_STRSWAP32_E, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @G1_REG_CONFIG_DEC_OUTSWAP32_E, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @G1_REG_CONFIG_DEC_CLK_GATE_E, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @G1_REG_CONFIG_DEC_IN_ENDIAN, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @G1_REG_CONFIG_DEC_OUT_ENDIAN, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @G1_REG_CONFIG_DEC_MAX_BURST(i32 16)
  %76 = or i32 %74, %75
  store i32 %76, i32* %9, align 4
  %77 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @G1_REG_CONFIG, align 4
  %80 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %77, i32 %78, i32 %79)
  %81 = call i32 @G1_REG_DEC_CTRL0_DEC_MODE(i32 10)
  store i32 %81, i32* %9, align 4
  %82 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %83 = call i64 @VP8_FRAME_IS_KEY_FRAME(%struct.v4l2_ctrl_vp8_frame_header* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %56
  %86 = load i32, i32* @G1_REG_DEC_CTRL0_PIC_INTER_E, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %85, %56
  %90 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %91 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @V4L2_VP8_FRAME_HEADER_FLAG_MB_NO_SKIP_COEFF, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* @G1_REG_DEC_CTRL0_SKIP_MODE, align 4
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %96, %89
  %101 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %102 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, i32* @G1_REG_DEC_CTRL0_FILTERING_DIS, align 4
  %108 = load i32, i32* %9, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %106, %100
  %111 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @G1_REG_DEC_CTRL0, align 4
  %114 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %111, i32 %112, i32 %113)
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @VP8_MB_WIDTH(i64 %115)
  store i32 %116, i32* %7, align 4
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @VP8_MB_HEIGHT(i64 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @G1_REG_DEC_CTRL1_PIC_MB_WIDTH(i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @G1_REG_DEC_CTRL1_PIC_MB_HEIGHT_P(i32 %121)
  %123 = or i32 %120, %122
  %124 = load i32, i32* %7, align 4
  %125 = ashr i32 %124, 9
  %126 = call i32 @G1_REG_DEC_CTRL1_PIC_MB_W_EXT(i32 %125)
  %127 = or i32 %123, %126
  %128 = load i32, i32* %8, align 4
  %129 = ashr i32 %128, 8
  %130 = call i32 @G1_REG_DEC_CTRL1_PIC_MB_H_EXT(i32 %129)
  %131 = or i32 %127, %130
  store i32 %131, i32* %9, align 4
  %132 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @G1_REG_DEC_CTRL1, align 4
  %135 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %132, i32 %133, i32 %134)
  %136 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %137 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @G1_REG_DEC_CTRL2_BOOLEAN_RANGE(i32 %139)
  %141 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %142 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @G1_REG_DEC_CTRL2_BOOLEAN_VALUE(i32 %144)
  %146 = or i32 %140, %145
  store i32 %146, i32* %9, align 4
  %147 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @G1_REG_DEC_CTRL2, align 4
  %150 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %147, i32 %148, i32 %149)
  store i32 0, i32* %9, align 4
  %151 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %152 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 3
  br i1 %154, label %155, label %159

155:                                              ; preds = %110
  %156 = load i32, i32* @G1_REG_DEC_CTRL4_VC1_HEIGHT_EXT, align 4
  %157 = load i32, i32* %9, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %9, align 4
  br label %159

159:                                              ; preds = %155, %110
  %160 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %161 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 3
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load i32, i32* @G1_REG_DEC_CTRL4_BILIN_MC_E, align 4
  %167 = load i32, i32* %9, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %165, %159
  %170 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @G1_REG_DEC_CTRL4, align 4
  %173 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %170, i32 %171, i32 %172)
  %174 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %175 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %176 = call i32 @cfg_lf(%struct.hantro_ctx* %174, %struct.v4l2_ctrl_vp8_frame_header* %175)
  %177 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %178 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %179 = call i32 @cfg_qp(%struct.hantro_ctx* %177, %struct.v4l2_ctrl_vp8_frame_header* %178)
  %180 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %181 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %182 = call i32 @cfg_parts(%struct.hantro_ctx* %180, %struct.v4l2_ctrl_vp8_frame_header* %181)
  %183 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %184 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %185 = call i32 @cfg_tap(%struct.hantro_ctx* %183, %struct.v4l2_ctrl_vp8_frame_header* %184)
  %186 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %187 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %188 = call i32 @cfg_ref(%struct.hantro_ctx* %186, %struct.v4l2_ctrl_vp8_frame_header* %187)
  %189 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %190 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %191 = call i32 @cfg_buffers(%struct.hantro_ctx* %189, %struct.v4l2_ctrl_vp8_frame_header* %190)
  %192 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %193 = call i32 @hantro_finish_run(%struct.hantro_ctx* %192)
  %194 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %195 = load i32, i32* @G1_REG_INTERRUPT_DEC_E, align 4
  %196 = load i32, i32* @G1_REG_INTERRUPT, align 4
  %197 = call i32 @vdpu_write(%struct.hantro_dev* %194, i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %169, %32
  ret void
}

declare dso_local i32 @hantro_prepare_run(%struct.hantro_ctx*) #1

declare dso_local %struct.v4l2_ctrl_vp8_frame_header* @hantro_get_ctrl(%struct.hantro_ctx*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @VP8_FRAME_IS_KEY_FRAME(%struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @hantro_vp8_prob_update(%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @G1_REG_CONFIG_DEC_MAX_BURST(i32) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL0_DEC_MODE(i32) #1

declare dso_local i32 @VP8_MB_WIDTH(i64) #1

declare dso_local i32 @VP8_MB_HEIGHT(i64) #1

declare dso_local i32 @G1_REG_DEC_CTRL1_PIC_MB_WIDTH(i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL1_PIC_MB_HEIGHT_P(i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL1_PIC_MB_W_EXT(i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL1_PIC_MB_H_EXT(i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL2_BOOLEAN_RANGE(i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL2_BOOLEAN_VALUE(i32) #1

declare dso_local i32 @cfg_lf(%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @cfg_qp(%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @cfg_parts(%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @cfg_tap(%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @cfg_ref(%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @cfg_buffers(%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @hantro_finish_run(%struct.hantro_ctx*) #1

declare dso_local i32 @vdpu_write(%struct.hantro_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
