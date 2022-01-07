; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_vp8_dec.c_rk3399_vpu_vp8_dec_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_vp8_dec.c_rk3399_vpu_vp8_dec_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_7__, %struct.hantro_dev* }
%struct.TYPE_10__ = type { i32 (%struct.hantro_ctx*)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.hantro_dev = type { i32 }
%struct.v4l2_ctrl_vp8_frame_header = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER = common dso_local global i32 0, align 4
@VDPU_REG_CONFIG_DEC_TIMEOUT_E = common dso_local global i32 0, align 4
@VDPU_REG_CONFIG_DEC_CLK_GATE_E = common dso_local global i32 0, align 4
@VDPU_REG_DEC_CTRL0_PIC_INTER_E = common dso_local global i32 0, align 4
@VDPU_REG_EN_FLAGS = common dso_local global i32 0, align 4
@VDPU_REG_CONFIG_DEC_STRENDIAN_E = common dso_local global i32 0, align 4
@VDPU_REG_CONFIG_DEC_INSWAP32_E = common dso_local global i32 0, align 4
@VDPU_REG_CONFIG_DEC_STRSWAP32_E = common dso_local global i32 0, align 4
@VDPU_REG_CONFIG_DEC_OUTSWAP32_E = common dso_local global i32 0, align 4
@VDPU_REG_CONFIG_DEC_IN_ENDIAN = common dso_local global i32 0, align 4
@VDPU_REG_CONFIG_DEC_OUT_ENDIAN = common dso_local global i32 0, align 4
@VDPU_REG_DATA_ENDIAN = common dso_local global i32 0, align 4
@VDPU_REG_AXI_CTRL = common dso_local global i32 0, align 4
@VDPU_REG_DEC_FORMAT = common dso_local global i32 0, align 4
@V4L2_VP8_FRAME_HEADER_FLAG_MB_NO_SKIP_COEFF = common dso_local global i32 0, align 4
@vp8_dec_skip_mode = common dso_local global i32 0, align 4
@vp8_dec_filter_disable = common dso_local global i32 0, align 4
@vp8_dec_mb_width = common dso_local global i32 0, align 4
@vp8_dec_mb_height = common dso_local global i32 0, align 4
@vp8_dec_mb_width_ext = common dso_local global i32 0, align 4
@vp8_dec_mb_height_ext = common dso_local global i32 0, align 4
@vp8_dec_bool_range = common dso_local global i32 0, align 4
@vp8_dec_bool_value = common dso_local global i32 0, align 4
@VDPU_REG_VP8_DCT_START_BIT = common dso_local global i32 0, align 4
@VDPU_REG_DEC_CTRL4_VC1_HEIGHT_EXT = common dso_local global i32 0, align 4
@VDPU_REG_DEC_CTRL4_BILIN_MC_E = common dso_local global i32 0, align 4
@vp8_dec_start_dec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rk3399_vpu_vp8_dec_run(%struct.hantro_ctx* %0) #0 {
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
  %11 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %10, i32 0, i32 3
  %12 = load %struct.hantro_dev*, %struct.hantro_dev** %11, align 8
  store %struct.hantro_dev* %12, %struct.hantro_dev** %4, align 8
  %13 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
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
  br label %204

33:                                               ; preds = %1
  %34 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %35 = call i64 @VP8_FRAME_IS_KEY_FRAME(%struct.v4l2_ctrl_vp8_frame_header* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %51 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memset(i64 %49, i32 0, i32 %54)
  br label %56

56:                                               ; preds = %44, %37, %33
  %57 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %58 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %59 = call i32 @hantro_vp8_prob_update(%struct.hantro_ctx* %57, %struct.v4l2_ctrl_vp8_frame_header* %58)
  %60 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %61 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32 (%struct.hantro_ctx*)*, i32 (%struct.hantro_ctx*)** %63, align 8
  %65 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %66 = call i32 %64(%struct.hantro_ctx* %65)
  %67 = load i32, i32* @VDPU_REG_CONFIG_DEC_TIMEOUT_E, align 4
  %68 = load i32, i32* @VDPU_REG_CONFIG_DEC_CLK_GATE_E, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %9, align 4
  %70 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %71 = call i64 @VP8_FRAME_IS_KEY_FRAME(%struct.v4l2_ctrl_vp8_frame_header* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %56
  %74 = load i32, i32* @VDPU_REG_DEC_CTRL0_PIC_INTER_E, align 4
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %73, %56
  %78 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @VDPU_REG_EN_FLAGS, align 4
  %81 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %78, i32 %79, i32 %80)
  %82 = load i32, i32* @VDPU_REG_CONFIG_DEC_STRENDIAN_E, align 4
  %83 = load i32, i32* @VDPU_REG_CONFIG_DEC_INSWAP32_E, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @VDPU_REG_CONFIG_DEC_STRSWAP32_E, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @VDPU_REG_CONFIG_DEC_OUTSWAP32_E, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @VDPU_REG_CONFIG_DEC_IN_ENDIAN, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @VDPU_REG_CONFIG_DEC_OUT_ENDIAN, align 4
  %92 = or i32 %90, %91
  store i32 %92, i32* %9, align 4
  %93 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @VDPU_REG_DATA_ENDIAN, align 4
  %96 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %93, i32 %94, i32 %95)
  %97 = call i32 @VDPU_REG_CONFIG_DEC_MAX_BURST(i32 16)
  store i32 %97, i32* %9, align 4
  %98 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @VDPU_REG_AXI_CTRL, align 4
  %101 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %98, i32 %99, i32 %100)
  %102 = call i32 @VDPU_REG_DEC_CTRL0_DEC_MODE(i32 10)
  store i32 %102, i32* %9, align 4
  %103 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @VDPU_REG_DEC_FORMAT, align 4
  %106 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %103, i32 %104, i32 %105)
  %107 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %108 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @V4L2_VP8_FRAME_HEADER_FLAG_MB_NO_SKIP_COEFF, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %77
  %114 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %115 = call i32 @hantro_reg_write(%struct.hantro_dev* %114, i32* @vp8_dec_skip_mode, i32 1)
  br label %116

116:                                              ; preds = %113, %77
  %117 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %118 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %124 = call i32 @hantro_reg_write(%struct.hantro_dev* %123, i32* @vp8_dec_filter_disable, i32 1)
  br label %125

125:                                              ; preds = %122, %116
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @VP8_MB_WIDTH(i64 %126)
  store i32 %127, i32* %7, align 4
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @VP8_MB_HEIGHT(i64 %128)
  store i32 %129, i32* %8, align 4
  %130 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @hantro_reg_write(%struct.hantro_dev* %130, i32* @vp8_dec_mb_width, i32 %131)
  %133 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @hantro_reg_write(%struct.hantro_dev* %133, i32* @vp8_dec_mb_height, i32 %134)
  %136 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %137 = load i32, i32* %7, align 4
  %138 = ashr i32 %137, 9
  %139 = call i32 @hantro_reg_write(%struct.hantro_dev* %136, i32* @vp8_dec_mb_width_ext, i32 %138)
  %140 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %141 = load i32, i32* %8, align 4
  %142 = ashr i32 %141, 8
  %143 = call i32 @hantro_reg_write(%struct.hantro_dev* %140, i32* @vp8_dec_mb_height_ext, i32 %142)
  %144 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %145 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %146 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @hantro_reg_write(%struct.hantro_dev* %144, i32* @vp8_dec_bool_range, i32 %148)
  %150 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %151 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %152 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @hantro_reg_write(%struct.hantro_dev* %150, i32* @vp8_dec_bool_value, i32 %154)
  %156 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %157 = load i32, i32* @VDPU_REG_VP8_DCT_START_BIT, align 4
  %158 = call i32 @vdpu_read(%struct.hantro_dev* %156, i32 %157)
  store i32 %158, i32* %9, align 4
  %159 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %160 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 3
  br i1 %162, label %163, label %167

163:                                              ; preds = %125
  %164 = load i32, i32* @VDPU_REG_DEC_CTRL4_VC1_HEIGHT_EXT, align 4
  %165 = load i32, i32* %9, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %163, %125
  %168 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %169 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 3
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load i32, i32* @VDPU_REG_DEC_CTRL4_BILIN_MC_E, align 4
  %175 = load i32, i32* %9, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %9, align 4
  br label %177

177:                                              ; preds = %173, %167
  %178 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @VDPU_REG_VP8_DCT_START_BIT, align 4
  %181 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %178, i32 %179, i32 %180)
  %182 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %183 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %184 = call i32 @cfg_lf(%struct.hantro_ctx* %182, %struct.v4l2_ctrl_vp8_frame_header* %183)
  %185 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %186 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %187 = call i32 @cfg_qp(%struct.hantro_ctx* %185, %struct.v4l2_ctrl_vp8_frame_header* %186)
  %188 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %189 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %190 = call i32 @cfg_parts(%struct.hantro_ctx* %188, %struct.v4l2_ctrl_vp8_frame_header* %189)
  %191 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %192 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %193 = call i32 @cfg_tap(%struct.hantro_ctx* %191, %struct.v4l2_ctrl_vp8_frame_header* %192)
  %194 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %195 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %196 = call i32 @cfg_ref(%struct.hantro_ctx* %194, %struct.v4l2_ctrl_vp8_frame_header* %195)
  %197 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %198 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %3, align 8
  %199 = call i32 @cfg_buffers(%struct.hantro_ctx* %197, %struct.v4l2_ctrl_vp8_frame_header* %198)
  %200 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %201 = call i32 @hantro_finish_run(%struct.hantro_ctx* %200)
  %202 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %203 = call i32 @hantro_reg_write(%struct.hantro_dev* %202, i32* @vp8_dec_start_dec, i32 1)
  br label %204

204:                                              ; preds = %177, %32
  ret void
}

declare dso_local i32 @hantro_prepare_run(%struct.hantro_ctx*) #1

declare dso_local %struct.v4l2_ctrl_vp8_frame_header* @hantro_get_ctrl(%struct.hantro_ctx*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @VP8_FRAME_IS_KEY_FRAME(%struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @hantro_vp8_prob_update(%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @VDPU_REG_CONFIG_DEC_MAX_BURST(i32) #1

declare dso_local i32 @VDPU_REG_DEC_CTRL0_DEC_MODE(i32) #1

declare dso_local i32 @hantro_reg_write(%struct.hantro_dev*, i32*, i32) #1

declare dso_local i32 @VP8_MB_WIDTH(i64) #1

declare dso_local i32 @VP8_MB_HEIGHT(i64) #1

declare dso_local i32 @vdpu_read(%struct.hantro_dev*, i32) #1

declare dso_local i32 @cfg_lf(%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @cfg_qp(%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @cfg_parts(%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @cfg_tap(%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @cfg_ref(%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @cfg_buffers(%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*) #1

declare dso_local i32 @hantro_finish_run(%struct.hantro_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
