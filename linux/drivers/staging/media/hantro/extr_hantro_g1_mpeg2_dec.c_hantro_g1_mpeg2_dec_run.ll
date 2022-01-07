; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_mpeg2_dec.c_hantro_g1_mpeg2_dec_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_mpeg2_dec.c_hantro_g1_mpeg2_dec_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_2__, %struct.hantro_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hantro_dev = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.v4l2_ctrl_mpeg2_slice_params = type { i32, i32, %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_sequence }
%struct.v4l2_mpeg2_picture = type { i64, i64, i32**, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_mpeg2_sequence = type { i32 }

@V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS = common dso_local global i32 0, align 4
@PICT_FRAME = common dso_local global i64 0, align 8
@V4L2_MPEG2_PICTURE_CODING_TYPE_B = common dso_local global i64 0, align 8
@V4L2_MPEG2_PICTURE_CODING_TYPE_I = common dso_local global i64 0, align 8
@PICT_TOP_FIELD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hantro_g1_mpeg2_dec_run(%struct.hantro_ctx* %0) #0 {
  %2 = alloca %struct.hantro_ctx*, align 8
  %3 = alloca %struct.hantro_dev*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.v4l2_ctrl_mpeg2_slice_params*, align 8
  %7 = alloca %struct.v4l2_mpeg2_sequence*, align 8
  %8 = alloca %struct.v4l2_mpeg2_picture*, align 8
  %9 = alloca i32, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %2, align 8
  %10 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %10, i32 0, i32 1
  %12 = load %struct.hantro_dev*, %struct.hantro_dev** %11, align 8
  store %struct.hantro_dev* %12, %struct.hantro_dev** %3, align 8
  %13 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %14 = call %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx* %13)
  store %struct.vb2_v4l2_buffer* %14, %struct.vb2_v4l2_buffer** %4, align 8
  %15 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %16 = call %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx* %15)
  store %struct.vb2_v4l2_buffer* %16, %struct.vb2_v4l2_buffer** %5, align 8
  %17 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %18 = call i32 @hantro_prepare_run(%struct.hantro_ctx* %17)
  %19 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %20 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS, align 4
  %21 = call %struct.v4l2_ctrl_mpeg2_slice_params* @hantro_get_ctrl(%struct.hantro_ctx* %19, i32 %20)
  store %struct.v4l2_ctrl_mpeg2_slice_params* %21, %struct.v4l2_ctrl_mpeg2_slice_params** %6, align 8
  %22 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %22, i32 0, i32 3
  store %struct.v4l2_mpeg2_sequence* %23, %struct.v4l2_mpeg2_sequence** %7, align 8
  %24 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %24, i32 0, i32 2
  store %struct.v4l2_mpeg2_picture* %25, %struct.v4l2_mpeg2_picture** %8, align 8
  %26 = call i32 @G1_REG_DEC_AXI_RD_ID(i32 0)
  %27 = call i32 @G1_REG_DEC_TIMEOUT_E(i32 1)
  %28 = or i32 %26, %27
  %29 = call i32 @G1_REG_DEC_STRSWAP32_E(i32 1)
  %30 = or i32 %28, %29
  %31 = call i32 @G1_REG_DEC_STRENDIAN_E(i32 1)
  %32 = or i32 %30, %31
  %33 = call i32 @G1_REG_DEC_INSWAP32_E(i32 1)
  %34 = or i32 %32, %33
  %35 = call i32 @G1_REG_DEC_OUTSWAP32_E(i32 1)
  %36 = or i32 %34, %35
  %37 = call i32 @G1_REG_DEC_DATA_DISC_E(i32 0)
  %38 = or i32 %36, %37
  %39 = call i32 @G1_REG_DEC_LATENCY(i32 0)
  %40 = or i32 %38, %39
  %41 = call i32 @G1_REG_DEC_CLK_GATE_E(i32 1)
  %42 = or i32 %40, %41
  %43 = call i32 @G1_REG_DEC_IN_ENDIAN(i32 1)
  %44 = or i32 %42, %43
  %45 = call i32 @G1_REG_DEC_OUT_ENDIAN(i32 1)
  %46 = or i32 %44, %45
  %47 = call i32 @G1_REG_DEC_ADV_PRE_DIS(i32 0)
  %48 = or i32 %46, %47
  %49 = call i32 @G1_REG_DEC_SCMD_DIS(i32 0)
  %50 = or i32 %48, %49
  %51 = call i32 @G1_REG_DEC_MAX_BURST(i32 16)
  %52 = or i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @G1_SWREG(i32 2)
  %56 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %53, i32 %54, i32 %55)
  %57 = call i32 @G1_REG_DEC_MODE(i32 5)
  %58 = call i32 @G1_REG_RLC_MODE_E(i32 0)
  %59 = or i32 %57, %58
  %60 = load %struct.v4l2_mpeg2_sequence*, %struct.v4l2_mpeg2_sequence** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_mpeg2_sequence, %struct.v4l2_mpeg2_sequence* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @G1_REG_PIC_INTERLACE_E(i32 %65)
  %67 = or i32 %59, %66
  %68 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %69 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PICT_FRAME, align 8
  %72 = icmp ne i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @G1_REG_PIC_FIELDMODE_E(i32 %73)
  %75 = or i32 %67, %74
  %76 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %77 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @V4L2_MPEG2_PICTURE_CODING_TYPE_B, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @G1_REG_PIC_B_E(i32 %81)
  %83 = or i32 %75, %82
  %84 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %85 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @V4L2_MPEG2_PICTURE_CODING_TYPE_I, align 8
  %88 = icmp ne i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @G1_REG_PIC_INTER_E(i32 %89)
  %91 = or i32 %83, %90
  %92 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %93 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PICT_TOP_FIELD, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @G1_REG_PIC_TOPFIELD_E(i32 %97)
  %99 = or i32 %91, %98
  %100 = call i32 @G1_REG_FWD_INTERLACE_E(i32 0)
  %101 = or i32 %99, %100
  %102 = call i32 @G1_REG_FILTERING_DIS(i32 1)
  %103 = or i32 %101, %102
  %104 = call i32 @G1_REG_WRITE_MVS_E(i32 0)
  %105 = or i32 %103, %104
  %106 = call i32 @G1_REG_DEC_AXI_WR_ID(i32 0)
  %107 = or i32 %105, %106
  store i32 %107, i32* %9, align 4
  %108 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @G1_SWREG(i32 3)
  %111 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %108, i32 %109, i32 %110)
  %112 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %113 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @MPEG2_MB_WIDTH(i32 %115)
  %117 = call i32 @G1_REG_PIC_MB_WIDTH(i32 %116)
  %118 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %119 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @MPEG2_MB_HEIGHT(i32 %121)
  %123 = call i32 @G1_REG_PIC_MB_HEIGHT_P(i32 %122)
  %124 = or i32 %117, %123
  %125 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %126 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @G1_REG_ALT_SCAN_E(i32 %127)
  %129 = or i32 %124, %128
  %130 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %131 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @G1_REG_TOPFIELDFIRST_E(i32 %132)
  %134 = or i32 %129, %133
  store i32 %134, i32* %9, align 4
  %135 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @G1_SWREG(i32 4)
  %138 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %135, i32 %136, i32 %137)
  %139 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %6, align 8
  %140 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @G1_REG_STRM_START_BIT(i32 %141)
  %143 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %144 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @G1_REG_QSCALE_TYPE(i32 %145)
  %147 = or i32 %142, %146
  %148 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %149 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @G1_REG_CON_MV_E(i32 %150)
  %152 = or i32 %147, %151
  %153 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %154 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @G1_REG_INTRA_DC_PREC(i32 %155)
  %157 = or i32 %152, %156
  %158 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %159 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @G1_REG_INTRA_VLC_TAB(i32 %160)
  %162 = or i32 %157, %161
  %163 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %164 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @G1_REG_FRAME_PRED_DCT(i32 %165)
  %167 = or i32 %162, %166
  store i32 %167, i32* %9, align 4
  %168 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @G1_SWREG(i32 5)
  %171 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %168, i32 %169, i32 %170)
  %172 = call i32 @G1_REG_INIT_QP(i32 1)
  %173 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %6, align 8
  %174 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = ashr i32 %175, 3
  %177 = call i32 @G1_REG_STREAM_LEN(i32 %176)
  %178 = or i32 %172, %177
  store i32 %178, i32* %9, align 4
  %179 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @G1_SWREG(i32 6)
  %182 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %179, i32 %180, i32 %181)
  %183 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %184 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @G1_REG_ALT_SCAN_FLAG_E(i32 %185)
  %187 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %188 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %187, i32 0, i32 2
  %189 = load i32**, i32*** %188, align 8
  %190 = getelementptr inbounds i32*, i32** %189, i64 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @G1_REG_FCODE_FWD_HOR(i32 %193)
  %195 = or i32 %186, %194
  %196 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %197 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %196, i32 0, i32 2
  %198 = load i32**, i32*** %197, align 8
  %199 = getelementptr inbounds i32*, i32** %198, i64 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @G1_REG_FCODE_FWD_VER(i32 %202)
  %204 = or i32 %195, %203
  %205 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %206 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %205, i32 0, i32 2
  %207 = load i32**, i32*** %206, align 8
  %208 = getelementptr inbounds i32*, i32** %207, i64 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @G1_REG_FCODE_BWD_HOR(i32 %211)
  %213 = or i32 %204, %212
  %214 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %215 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %214, i32 0, i32 2
  %216 = load i32**, i32*** %215, align 8
  %217 = getelementptr inbounds i32*, i32** %216, i64 1
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @G1_REG_FCODE_BWD_VER(i32 %220)
  %222 = or i32 %213, %221
  %223 = call i32 @G1_REG_MV_ACCURACY_FWD(i32 1)
  %224 = or i32 %222, %223
  %225 = call i32 @G1_REG_MV_ACCURACY_BWD(i32 1)
  %226 = or i32 %224, %225
  store i32 %226, i32* %9, align 4
  %227 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @G1_SWREG(i32 18)
  %230 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %227, i32 %228, i32 %229)
  %231 = call i32 @G1_REG_STARTMB_X(i32 0)
  %232 = call i32 @G1_REG_STARTMB_Y(i32 0)
  %233 = or i32 %231, %232
  store i32 %233, i32* %9, align 4
  %234 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @G1_SWREG(i32 48)
  %237 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %234, i32 %235, i32 %236)
  %238 = call i32 @G1_REG_APF_THRESHOLD(i32 8)
  store i32 %238, i32* %9, align 4
  %239 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @G1_SWREG(i32 55)
  %242 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %239, i32 %240, i32 %241)
  %243 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %244 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %245 = call i32 @hantro_g1_mpeg2_dec_set_quantization(%struct.hantro_dev* %243, %struct.hantro_ctx* %244)
  %246 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %247 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %248 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %249 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %248, i32 0, i32 0
  %250 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %251 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %250, i32 0, i32 0
  %252 = load %struct.v4l2_mpeg2_sequence*, %struct.v4l2_mpeg2_sequence** %7, align 8
  %253 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %254 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %6, align 8
  %255 = call i32 @hantro_g1_mpeg2_dec_set_buffers(%struct.hantro_dev* %246, %struct.hantro_ctx* %247, i32* %249, i32* %251, %struct.v4l2_mpeg2_sequence* %252, %struct.v4l2_mpeg2_picture* %253, %struct.v4l2_ctrl_mpeg2_slice_params* %254)
  %256 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %257 = call i32 @hantro_finish_run(%struct.hantro_ctx* %256)
  %258 = call i32 @G1_REG_DEC_E(i32 1)
  store i32 %258, i32* %9, align 4
  %259 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %260 = load i32, i32* %9, align 4
  %261 = call i32 @G1_SWREG(i32 1)
  %262 = call i32 @vdpu_write(%struct.hantro_dev* %259, i32 %260, i32 %261)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx*) #1

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx*) #1

declare dso_local i32 @hantro_prepare_run(%struct.hantro_ctx*) #1

declare dso_local %struct.v4l2_ctrl_mpeg2_slice_params* @hantro_get_ctrl(%struct.hantro_ctx*, i32) #1

declare dso_local i32 @G1_REG_DEC_AXI_RD_ID(i32) #1

declare dso_local i32 @G1_REG_DEC_TIMEOUT_E(i32) #1

declare dso_local i32 @G1_REG_DEC_STRSWAP32_E(i32) #1

declare dso_local i32 @G1_REG_DEC_STRENDIAN_E(i32) #1

declare dso_local i32 @G1_REG_DEC_INSWAP32_E(i32) #1

declare dso_local i32 @G1_REG_DEC_OUTSWAP32_E(i32) #1

declare dso_local i32 @G1_REG_DEC_DATA_DISC_E(i32) #1

declare dso_local i32 @G1_REG_DEC_LATENCY(i32) #1

declare dso_local i32 @G1_REG_DEC_CLK_GATE_E(i32) #1

declare dso_local i32 @G1_REG_DEC_IN_ENDIAN(i32) #1

declare dso_local i32 @G1_REG_DEC_OUT_ENDIAN(i32) #1

declare dso_local i32 @G1_REG_DEC_ADV_PRE_DIS(i32) #1

declare dso_local i32 @G1_REG_DEC_SCMD_DIS(i32) #1

declare dso_local i32 @G1_REG_DEC_MAX_BURST(i32) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @G1_SWREG(i32) #1

declare dso_local i32 @G1_REG_DEC_MODE(i32) #1

declare dso_local i32 @G1_REG_RLC_MODE_E(i32) #1

declare dso_local i32 @G1_REG_PIC_INTERLACE_E(i32) #1

declare dso_local i32 @G1_REG_PIC_FIELDMODE_E(i32) #1

declare dso_local i32 @G1_REG_PIC_B_E(i32) #1

declare dso_local i32 @G1_REG_PIC_INTER_E(i32) #1

declare dso_local i32 @G1_REG_PIC_TOPFIELD_E(i32) #1

declare dso_local i32 @G1_REG_FWD_INTERLACE_E(i32) #1

declare dso_local i32 @G1_REG_FILTERING_DIS(i32) #1

declare dso_local i32 @G1_REG_WRITE_MVS_E(i32) #1

declare dso_local i32 @G1_REG_DEC_AXI_WR_ID(i32) #1

declare dso_local i32 @G1_REG_PIC_MB_WIDTH(i32) #1

declare dso_local i32 @MPEG2_MB_WIDTH(i32) #1

declare dso_local i32 @G1_REG_PIC_MB_HEIGHT_P(i32) #1

declare dso_local i32 @MPEG2_MB_HEIGHT(i32) #1

declare dso_local i32 @G1_REG_ALT_SCAN_E(i32) #1

declare dso_local i32 @G1_REG_TOPFIELDFIRST_E(i32) #1

declare dso_local i32 @G1_REG_STRM_START_BIT(i32) #1

declare dso_local i32 @G1_REG_QSCALE_TYPE(i32) #1

declare dso_local i32 @G1_REG_CON_MV_E(i32) #1

declare dso_local i32 @G1_REG_INTRA_DC_PREC(i32) #1

declare dso_local i32 @G1_REG_INTRA_VLC_TAB(i32) #1

declare dso_local i32 @G1_REG_FRAME_PRED_DCT(i32) #1

declare dso_local i32 @G1_REG_INIT_QP(i32) #1

declare dso_local i32 @G1_REG_STREAM_LEN(i32) #1

declare dso_local i32 @G1_REG_ALT_SCAN_FLAG_E(i32) #1

declare dso_local i32 @G1_REG_FCODE_FWD_HOR(i32) #1

declare dso_local i32 @G1_REG_FCODE_FWD_VER(i32) #1

declare dso_local i32 @G1_REG_FCODE_BWD_HOR(i32) #1

declare dso_local i32 @G1_REG_FCODE_BWD_VER(i32) #1

declare dso_local i32 @G1_REG_MV_ACCURACY_FWD(i32) #1

declare dso_local i32 @G1_REG_MV_ACCURACY_BWD(i32) #1

declare dso_local i32 @G1_REG_STARTMB_X(i32) #1

declare dso_local i32 @G1_REG_STARTMB_Y(i32) #1

declare dso_local i32 @G1_REG_APF_THRESHOLD(i32) #1

declare dso_local i32 @hantro_g1_mpeg2_dec_set_quantization(%struct.hantro_dev*, %struct.hantro_ctx*) #1

declare dso_local i32 @hantro_g1_mpeg2_dec_set_buffers(%struct.hantro_dev*, %struct.hantro_ctx*, i32*, i32*, %struct.v4l2_mpeg2_sequence*, %struct.v4l2_mpeg2_picture*, %struct.v4l2_ctrl_mpeg2_slice_params*) #1

declare dso_local i32 @hantro_finish_run(%struct.hantro_ctx*) #1

declare dso_local i32 @G1_REG_DEC_E(i32) #1

declare dso_local i32 @vdpu_write(%struct.hantro_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
