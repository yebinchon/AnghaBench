; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_h264_dec.c_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_h264_dec.c_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.hantro_dev*, %struct.TYPE_2__ }
%struct.hantro_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.hantro_h264_dec_ctrls }
%struct.hantro_h264_dec_ctrls = type { %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_decode_params* }
%struct.v4l2_ctrl_h264_pps = type { i32, i64, i64, i32, i64, i32, i32 }
%struct.v4l2_ctrl_h264_sps = type { i32, i64, i64, i32, i64, i64 }
%struct.v4l2_ctrl_h264_slice_params = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_h264_decode_params = type { i32, i64 }
%struct.vb2_v4l2_buffer = type { i32 }

@V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL0_SEQ_MBAFF_E = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL0_PICORD_COUNT_E = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL0_WRITE_MVS_E = common dso_local global i32 0, align 4
@V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY = common dso_local global i32 0, align 4
@V4L2_H264_SLICE_FLAG_FIELD_PIC = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL0_PIC_INTERLACE_E = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL0_PIC_FIELDMODE_E = common dso_local global i32 0, align 4
@V4L2_H264_SLICE_FLAG_BOTTOM_FIELD = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL0_PIC_TOPFIELD_E = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL0 = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL1 = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL2_TYPE1_QUANT_E = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL2_FIELDPIC_FLAG_E = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL2 = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL3_START_CODE_E = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL3 = common dso_local global i32 0, align 4
@V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL4_CABAC_E = common dso_local global i32 0, align 4
@V4L2_H264_SPS_FLAG_DIRECT_8X8_INFERENCE = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL4_DIR_8X8_INFER_E = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL4_BLACKWHITE_E = common dso_local global i32 0, align 4
@V4L2_H264_PPS_FLAG_WEIGHTED_PRED = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL4_WEIGHT_PRED_E = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL4 = common dso_local global i32 0, align 4
@V4L2_H264_PPS_FLAG_CONSTRAINED_INTRA_PRED = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL5_CONST_INTRA_E = common dso_local global i32 0, align 4
@V4L2_H264_PPS_FLAG_DEBLOCKING_FILTER_CONTROL_PRESENT = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL5_FILT_CTRL_PRES = common dso_local global i32 0, align 4
@V4L2_H264_PPS_FLAG_REDUNDANT_PIC_CNT_PRESENT = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL5_RDPIC_CNT_PRES = common dso_local global i32 0, align 4
@V4L2_H264_PPS_FLAG_TRANSFORM_8X8_MODE = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL5_8X8TRANS_FLAG_E = common dso_local global i32 0, align 4
@V4L2_H264_DECODE_PARAM_FLAG_IDR_PIC = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL5_IDR_PIC_E = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL5 = common dso_local global i32 0, align 4
@G1_REG_DEC_CTRL6 = common dso_local global i32 0, align 4
@G1_REG_ERR_CONC = common dso_local global i32 0, align 4
@G1_REG_PRED_FLT = common dso_local global i32 0, align 4
@G1_REG_REF_BUF_CTRL = common dso_local global i32 0, align 4
@G1_REG_REF_BUF_CTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_ctx*)* @set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_params(%struct.hantro_ctx* %0) #0 {
  %2 = alloca %struct.hantro_ctx*, align 8
  %3 = alloca %struct.hantro_h264_dec_ctrls*, align 8
  %4 = alloca %struct.v4l2_ctrl_h264_decode_params*, align 8
  %5 = alloca %struct.v4l2_ctrl_h264_slice_params*, align 8
  %6 = alloca %struct.v4l2_ctrl_h264_sps*, align 8
  %7 = alloca %struct.v4l2_ctrl_h264_pps*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  %9 = alloca %struct.hantro_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %2, align 8
  %11 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.hantro_h264_dec_ctrls* %13, %struct.hantro_h264_dec_ctrls** %3, align 8
  %14 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %3, align 8
  %15 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %14, i32 0, i32 3
  %16 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %15, align 8
  store %struct.v4l2_ctrl_h264_decode_params* %16, %struct.v4l2_ctrl_h264_decode_params** %4, align 8
  %17 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %3, align 8
  %18 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %17, i32 0, i32 2
  %19 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %18, align 8
  store %struct.v4l2_ctrl_h264_slice_params* %19, %struct.v4l2_ctrl_h264_slice_params** %5, align 8
  %20 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %3, align 8
  %21 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %20, i32 0, i32 1
  %22 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %21, align 8
  store %struct.v4l2_ctrl_h264_sps* %22, %struct.v4l2_ctrl_h264_sps** %6, align 8
  %23 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %3, align 8
  %24 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %23, i32 0, i32 0
  %25 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %24, align 8
  store %struct.v4l2_ctrl_h264_pps* %25, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %26 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %27 = call %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx* %26)
  store %struct.vb2_v4l2_buffer* %27, %struct.vb2_v4l2_buffer** %8, align 8
  %28 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %28, i32 0, i32 0
  %30 = load %struct.hantro_dev*, %struct.hantro_dev** %29, align 8
  store %struct.hantro_dev* %30, %struct.hantro_dev** %9, align 8
  %31 = call i32 @G1_REG_DEC_CTRL0_DEC_AXI_WR_ID(i32 0)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load i32, i32* @G1_REG_DEC_CTRL0_SEQ_MBAFF_E, align 4
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %38, %1
  %43 = load i32, i32* @G1_REG_DEC_CTRL0_PICORD_COUNT_E, align 4
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  %46 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %4, align 8
  %47 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, %struct.v4l2_ctrl_h264_decode_params* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @G1_REG_DEC_CTRL0_WRITE_MVS_E, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %50, %42
  %55 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %54
  %62 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %61
  %69 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %69, i64 0
  %71 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @V4L2_H264_SLICE_FLAG_FIELD_PIC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68, %61
  %77 = load i32, i32* @G1_REG_DEC_CTRL0_PIC_INTERLACE_E, align 4
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %76, %68, %54
  %81 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %5, align 8
  %82 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %81, i64 0
  %83 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @V4L2_H264_SLICE_FLAG_FIELD_PIC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load i32, i32* @G1_REG_DEC_CTRL0_PIC_FIELDMODE_E, align 4
  %90 = load i32, i32* %10, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %88, %80
  %93 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %93, i64 0
  %95 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @V4L2_H264_SLICE_FLAG_BOTTOM_FIELD, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %92
  %101 = load i32, i32* @G1_REG_DEC_CTRL0_PIC_TOPFIELD_E, align 4
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %100, %92
  %105 = load %struct.hantro_dev*, %struct.hantro_dev** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @G1_REG_DEC_CTRL0, align 4
  %108 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %105, i32 %106, i32 %107)
  %109 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %6, align 8
  %110 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  %113 = call i32 @G1_REG_DEC_CTRL1_PIC_MB_WIDTH(i64 %112)
  %114 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %6, align 8
  %115 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 1
  %118 = call i32 @G1_REG_DEC_CTRL1_PIC_MB_HEIGHT_P(i64 %117)
  %119 = or i32 %113, %118
  %120 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %6, align 8
  %121 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @G1_REG_DEC_CTRL1_REF_FRAMES(i32 %122)
  %124 = or i32 %119, %123
  store i32 %124, i32* %10, align 4
  %125 = load %struct.hantro_dev*, %struct.hantro_dev** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @G1_REG_DEC_CTRL1, align 4
  %128 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %125, i32 %126, i32 %127)
  %129 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %130 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @G1_REG_DEC_CTRL2_CH_QP_OFFSET(i32 %131)
  %133 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %134 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @G1_REG_DEC_CTRL2_CH_QP_OFFSET2(i32 %135)
  %137 = or i32 %132, %136
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* @G1_REG_DEC_CTRL2_TYPE1_QUANT_E, align 4
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %10, align 4
  %141 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %5, align 8
  %142 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %141, i64 0
  %143 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @V4L2_H264_SLICE_FLAG_FIELD_PIC, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %104
  %149 = load i32, i32* @G1_REG_DEC_CTRL2_FIELDPIC_FLAG_E, align 4
  %150 = load i32, i32* %10, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %148, %104
  %153 = load %struct.hantro_dev*, %struct.hantro_dev** %9, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @G1_REG_DEC_CTRL2, align 4
  %156 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %153, i32 %154, i32 %155)
  %157 = load i32, i32* @G1_REG_DEC_CTRL3_START_CODE_E, align 4
  %158 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %159 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 26
  %162 = call i32 @G1_REG_DEC_CTRL3_INIT_QP(i64 %161)
  %163 = or i32 %157, %162
  %164 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %165 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %164, i32 0, i32 0
  %166 = call i32 @vb2_get_plane_payload(i32* %165, i32 0)
  %167 = call i32 @G1_REG_DEC_CTRL3_STREAM_LEN(i32 %166)
  %168 = or i32 %163, %167
  store i32 %168, i32* %10, align 4
  %169 = load %struct.hantro_dev*, %struct.hantro_dev** %9, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @G1_REG_DEC_CTRL3, align 4
  %172 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %169, i32 %170, i32 %171)
  %173 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %6, align 8
  %174 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, 4
  %177 = call i32 @G1_REG_DEC_CTRL4_FRAMENUM_LEN(i64 %176)
  %178 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %5, align 8
  %179 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %178, i64 0
  %180 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @G1_REG_DEC_CTRL4_FRAMENUM(i32 %181)
  %183 = or i32 %177, %182
  %184 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %185 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @G1_REG_DEC_CTRL4_WEIGHT_BIPR_IDC(i32 %186)
  %188 = or i32 %183, %187
  store i32 %188, i32* %10, align 4
  %189 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %190 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %152
  %196 = load i32, i32* @G1_REG_DEC_CTRL4_CABAC_E, align 4
  %197 = load i32, i32* %10, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %10, align 4
  br label %199

199:                                              ; preds = %195, %152
  %200 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %6, align 8
  %201 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @V4L2_H264_SPS_FLAG_DIRECT_8X8_INFERENCE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %199
  %207 = load i32, i32* @G1_REG_DEC_CTRL4_DIR_8X8_INFER_E, align 4
  %208 = load i32, i32* %10, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %206, %199
  %211 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %6, align 8
  %212 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load i32, i32* @G1_REG_DEC_CTRL4_BLACKWHITE_E, align 4
  %217 = load i32, i32* %10, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %215, %210
  %220 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %221 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @V4L2_H264_PPS_FLAG_WEIGHTED_PRED, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %219
  %227 = load i32, i32* @G1_REG_DEC_CTRL4_WEIGHT_PRED_E, align 4
  %228 = load i32, i32* %10, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %10, align 4
  br label %230

230:                                              ; preds = %226, %219
  %231 = load %struct.hantro_dev*, %struct.hantro_dev** %9, align 8
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* @G1_REG_DEC_CTRL4, align 4
  %234 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %231, i32 %232, i32 %233)
  %235 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %5, align 8
  %236 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %235, i64 0
  %237 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @G1_REG_DEC_CTRL5_REFPIC_MK_LEN(i32 %238)
  %240 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %5, align 8
  %241 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %240, i64 0
  %242 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @G1_REG_DEC_CTRL5_IDR_PIC_ID(i32 %243)
  %245 = or i32 %239, %244
  store i32 %245, i32* %10, align 4
  %246 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %247 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @V4L2_H264_PPS_FLAG_CONSTRAINED_INTRA_PRED, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %230
  %253 = load i32, i32* @G1_REG_DEC_CTRL5_CONST_INTRA_E, align 4
  %254 = load i32, i32* %10, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %10, align 4
  br label %256

256:                                              ; preds = %252, %230
  %257 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %258 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @V4L2_H264_PPS_FLAG_DEBLOCKING_FILTER_CONTROL_PRESENT, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %256
  %264 = load i32, i32* @G1_REG_DEC_CTRL5_FILT_CTRL_PRES, align 4
  %265 = load i32, i32* %10, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %10, align 4
  br label %267

267:                                              ; preds = %263, %256
  %268 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %269 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @V4L2_H264_PPS_FLAG_REDUNDANT_PIC_CNT_PRESENT, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %267
  %275 = load i32, i32* @G1_REG_DEC_CTRL5_RDPIC_CNT_PRES, align 4
  %276 = load i32, i32* %10, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %10, align 4
  br label %278

278:                                              ; preds = %274, %267
  %279 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %280 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @V4L2_H264_PPS_FLAG_TRANSFORM_8X8_MODE, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %278
  %286 = load i32, i32* @G1_REG_DEC_CTRL5_8X8TRANS_FLAG_E, align 4
  %287 = load i32, i32* %10, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %10, align 4
  br label %289

289:                                              ; preds = %285, %278
  %290 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %4, align 8
  %291 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, %struct.v4l2_ctrl_h264_decode_params* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @V4L2_H264_DECODE_PARAM_FLAG_IDR_PIC, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %289
  %297 = load i32, i32* @G1_REG_DEC_CTRL5_IDR_PIC_E, align 4
  %298 = load i32, i32* %10, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %10, align 4
  br label %300

300:                                              ; preds = %296, %289
  %301 = load %struct.hantro_dev*, %struct.hantro_dev** %9, align 8
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* @G1_REG_DEC_CTRL5, align 4
  %304 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %301, i32 %302, i32 %303)
  %305 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %5, align 8
  %306 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %305, i64 0
  %307 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @G1_REG_DEC_CTRL6_PPS_ID(i32 %308)
  %310 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %311 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = add nsw i64 %312, 1
  %314 = call i32 @G1_REG_DEC_CTRL6_REFIDX0_ACTIVE(i64 %313)
  %315 = or i32 %309, %314
  %316 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %317 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = add nsw i64 %318, 1
  %320 = call i32 @G1_REG_DEC_CTRL6_REFIDX1_ACTIVE(i64 %319)
  %321 = or i32 %315, %320
  %322 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %5, align 8
  %323 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %322, i64 0
  %324 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @G1_REG_DEC_CTRL6_POC_LENGTH(i32 %325)
  %327 = or i32 %321, %326
  store i32 %327, i32* %10, align 4
  %328 = load %struct.hantro_dev*, %struct.hantro_dev** %9, align 8
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* @G1_REG_DEC_CTRL6, align 4
  %331 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %328, i32 %329, i32 %330)
  %332 = load %struct.hantro_dev*, %struct.hantro_dev** %9, align 8
  %333 = load i32, i32* @G1_REG_ERR_CONC, align 4
  %334 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %332, i32 0, i32 %333)
  %335 = load %struct.hantro_dev*, %struct.hantro_dev** %9, align 8
  %336 = call i32 @G1_REG_PRED_FLT_PRED_BC_TAP_0_0(i32 1)
  %337 = call i32 @G1_REG_PRED_FLT_PRED_BC_TAP_0_1(i32 1019)
  %338 = or i32 %336, %337
  %339 = call i32 @G1_REG_PRED_FLT_PRED_BC_TAP_0_2(i32 20)
  %340 = or i32 %338, %339
  %341 = load i32, i32* @G1_REG_PRED_FLT, align 4
  %342 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %335, i32 %340, i32 %341)
  %343 = load %struct.hantro_dev*, %struct.hantro_dev** %9, align 8
  %344 = load i32, i32* @G1_REG_REF_BUF_CTRL, align 4
  %345 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %343, i32 0, i32 %344)
  %346 = load %struct.hantro_dev*, %struct.hantro_dev** %9, align 8
  %347 = call i32 @G1_REG_REF_BUF_CTRL2_APF_THRESHOLD(i32 8)
  %348 = load i32, i32* @G1_REG_REF_BUF_CTRL2, align 4
  %349 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %346, i32 %347, i32 %348)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx*) #1

declare dso_local i32 @G1_REG_DEC_CTRL0_DEC_AXI_WR_ID(i32) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL1_PIC_MB_WIDTH(i64) #1

declare dso_local i32 @G1_REG_DEC_CTRL1_PIC_MB_HEIGHT_P(i64) #1

declare dso_local i32 @G1_REG_DEC_CTRL1_REF_FRAMES(i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL2_CH_QP_OFFSET(i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL2_CH_QP_OFFSET2(i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL3_INIT_QP(i64) #1

declare dso_local i32 @G1_REG_DEC_CTRL3_STREAM_LEN(i32) #1

declare dso_local i32 @vb2_get_plane_payload(i32*, i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL4_FRAMENUM_LEN(i64) #1

declare dso_local i32 @G1_REG_DEC_CTRL4_FRAMENUM(i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL4_WEIGHT_BIPR_IDC(i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL5_REFPIC_MK_LEN(i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL5_IDR_PIC_ID(i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL6_PPS_ID(i32) #1

declare dso_local i32 @G1_REG_DEC_CTRL6_REFIDX0_ACTIVE(i64) #1

declare dso_local i32 @G1_REG_DEC_CTRL6_REFIDX1_ACTIVE(i64) #1

declare dso_local i32 @G1_REG_DEC_CTRL6_POC_LENGTH(i32) #1

declare dso_local i32 @G1_REG_PRED_FLT_PRED_BC_TAP_0_0(i32) #1

declare dso_local i32 @G1_REG_PRED_FLT_PRED_BC_TAP_0_1(i32) #1

declare dso_local i32 @G1_REG_PRED_FLT_PRED_BC_TAP_0_2(i32) #1

declare dso_local i32 @G1_REG_REF_BUF_CTRL2_APF_THRESHOLD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
