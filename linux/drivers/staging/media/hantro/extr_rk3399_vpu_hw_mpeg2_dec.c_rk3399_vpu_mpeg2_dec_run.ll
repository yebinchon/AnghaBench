; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_mpeg2_dec.c_rk3399_vpu_mpeg2_dec_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_mpeg2_dec.c_rk3399_vpu_mpeg2_dec_run.c"
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
define dso_local void @rk3399_vpu_mpeg2_dec_run(%struct.hantro_ctx* %0) #0 {
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
  %26 = call i32 @VDPU_REG_DEC_ADV_PRE_DIS(i32 0)
  %27 = call i32 @VDPU_REG_DEC_SCMD_DIS(i32 0)
  %28 = or i32 %26, %27
  %29 = call i32 @VDPU_REG_FILTERING_DIS(i32 1)
  %30 = or i32 %28, %29
  %31 = call i32 @VDPU_REG_DEC_LATENCY(i32 0)
  %32 = or i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @VDPU_SWREG(i32 50)
  %36 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %33, i32 %34, i32 %35)
  %37 = call i32 @VDPU_REG_INIT_QP(i32 1)
  %38 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = ashr i32 %40, 3
  %42 = call i32 @VDPU_REG_STREAM_LEN(i32 %41)
  %43 = or i32 %37, %42
  store i32 %43, i32* %9, align 4
  %44 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @VDPU_SWREG(i32 51)
  %47 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %44, i32 %45, i32 %46)
  %48 = call i32 @VDPU_REG_APF_THRESHOLD(i32 8)
  %49 = call i32 @VDPU_REG_STARTMB_X(i32 0)
  %50 = or i32 %48, %49
  %51 = call i32 @VDPU_REG_STARTMB_Y(i32 0)
  %52 = or i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @VDPU_SWREG(i32 52)
  %56 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %53, i32 %54, i32 %55)
  %57 = call i32 @VDPU_REG_DEC_MODE(i32 5)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @VDPU_SWREG(i32 53)
  %61 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %58, i32 %59, i32 %60)
  %62 = call i32 @VDPU_REG_DEC_STRENDIAN_E(i32 1)
  %63 = call i32 @VDPU_REG_DEC_STRSWAP32_E(i32 1)
  %64 = or i32 %62, %63
  %65 = call i32 @VDPU_REG_DEC_OUTSWAP32_E(i32 1)
  %66 = or i32 %64, %65
  %67 = call i32 @VDPU_REG_DEC_INSWAP32_E(i32 1)
  %68 = or i32 %66, %67
  %69 = call i32 @VDPU_REG_DEC_OUT_ENDIAN(i32 1)
  %70 = or i32 %68, %69
  %71 = call i32 @VDPU_REG_DEC_IN_ENDIAN(i32 1)
  %72 = or i32 %70, %71
  store i32 %72, i32* %9, align 4
  %73 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @VDPU_SWREG(i32 54)
  %76 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %73, i32 %74, i32 %75)
  %77 = call i32 @VDPU_REG_DEC_DATA_DISC_E(i32 0)
  %78 = call i32 @VDPU_REG_DEC_MAX_BURST(i32 16)
  %79 = or i32 %77, %78
  %80 = call i32 @VDPU_REG_DEC_AXI_WR_ID(i32 0)
  %81 = or i32 %79, %80
  %82 = call i32 @VDPU_REG_DEC_AXI_RD_ID(i32 0)
  %83 = or i32 %81, %82
  store i32 %83, i32* %9, align 4
  %84 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @VDPU_SWREG(i32 56)
  %87 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %84, i32 %85, i32 %86)
  %88 = call i32 @VDPU_REG_RLC_MODE_E(i32 0)
  %89 = load %struct.v4l2_mpeg2_sequence*, %struct.v4l2_mpeg2_sequence** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_mpeg2_sequence, %struct.v4l2_mpeg2_sequence* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @VDPU_REG_PIC_INTERLACE_E(i32 %94)
  %96 = or i32 %88, %95
  %97 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %98 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PICT_FRAME, align 8
  %101 = icmp ne i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @VDPU_REG_PIC_FIELDMODE_E(i32 %102)
  %104 = or i32 %96, %103
  %105 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %106 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @V4L2_MPEG2_PICTURE_CODING_TYPE_B, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @VDPU_REG_PIC_B_E(i32 %110)
  %112 = or i32 %104, %111
  %113 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %114 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @V4L2_MPEG2_PICTURE_CODING_TYPE_I, align 8
  %117 = icmp ne i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @VDPU_REG_PIC_INTER_E(i32 %118)
  %120 = or i32 %112, %119
  %121 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %122 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @PICT_TOP_FIELD, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @VDPU_REG_PIC_TOPFIELD_E(i32 %126)
  %128 = or i32 %120, %127
  %129 = call i32 @VDPU_REG_FWD_INTERLACE_E(i32 0)
  %130 = or i32 %128, %129
  %131 = call i32 @VDPU_REG_WRITE_MVS_E(i32 0)
  %132 = or i32 %130, %131
  %133 = call i32 @VDPU_REG_DEC_TIMEOUT_E(i32 1)
  %134 = or i32 %132, %133
  %135 = call i32 @VDPU_REG_DEC_CLK_GATE_E(i32 1)
  %136 = or i32 %134, %135
  store i32 %136, i32* %9, align 4
  %137 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @VDPU_SWREG(i32 57)
  %140 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %137, i32 %138, i32 %139)
  %141 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %142 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @MPEG2_MB_WIDTH(i32 %144)
  %146 = call i32 @VDPU_REG_PIC_MB_WIDTH(i32 %145)
  %147 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %148 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @MPEG2_MB_HEIGHT(i32 %150)
  %152 = call i32 @VDPU_REG_PIC_MB_HEIGHT_P(i32 %151)
  %153 = or i32 %146, %152
  %154 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %155 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @VDPU_REG_ALT_SCAN_E(i32 %156)
  %158 = or i32 %153, %157
  %159 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %160 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @VDPU_REG_TOPFIELDFIRST_E(i32 %161)
  %163 = or i32 %158, %162
  store i32 %163, i32* %9, align 4
  %164 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @VDPU_SWREG(i32 120)
  %167 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %164, i32 %165, i32 %166)
  %168 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %6, align 8
  %169 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @VDPU_REG_STRM_START_BIT(i32 %170)
  %172 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %173 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @VDPU_REG_QSCALE_TYPE(i32 %174)
  %176 = or i32 %171, %175
  %177 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %178 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @VDPU_REG_CON_MV_E(i32 %179)
  %181 = or i32 %176, %180
  %182 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %183 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @VDPU_REG_INTRA_DC_PREC(i32 %184)
  %186 = or i32 %181, %185
  %187 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %188 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @VDPU_REG_INTRA_VLC_TAB(i32 %189)
  %191 = or i32 %186, %190
  %192 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %193 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @VDPU_REG_FRAME_PRED_DCT(i32 %194)
  %196 = or i32 %191, %195
  store i32 %196, i32* %9, align 4
  %197 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @VDPU_SWREG(i32 122)
  %200 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %197, i32 %198, i32 %199)
  %201 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %202 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @VDPU_REG_ALT_SCAN_FLAG_E(i32 %203)
  %205 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %206 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %205, i32 0, i32 2
  %207 = load i32**, i32*** %206, align 8
  %208 = getelementptr inbounds i32*, i32** %207, i64 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @VDPU_REG_FCODE_FWD_HOR(i32 %211)
  %213 = or i32 %204, %212
  %214 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %215 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %214, i32 0, i32 2
  %216 = load i32**, i32*** %215, align 8
  %217 = getelementptr inbounds i32*, i32** %216, i64 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @VDPU_REG_FCODE_FWD_VER(i32 %220)
  %222 = or i32 %213, %221
  %223 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %224 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %223, i32 0, i32 2
  %225 = load i32**, i32*** %224, align 8
  %226 = getelementptr inbounds i32*, i32** %225, i64 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @VDPU_REG_FCODE_BWD_HOR(i32 %229)
  %231 = or i32 %222, %230
  %232 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %233 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %232, i32 0, i32 2
  %234 = load i32**, i32*** %233, align 8
  %235 = getelementptr inbounds i32*, i32** %234, i64 1
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @VDPU_REG_FCODE_BWD_VER(i32 %238)
  %240 = or i32 %231, %239
  %241 = call i32 @VDPU_REG_MV_ACCURACY_FWD(i32 1)
  %242 = or i32 %240, %241
  %243 = call i32 @VDPU_REG_MV_ACCURACY_BWD(i32 1)
  %244 = or i32 %242, %243
  store i32 %244, i32* %9, align 4
  %245 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %246 = load i32, i32* %9, align 4
  %247 = call i32 @VDPU_SWREG(i32 136)
  %248 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %245, i32 %246, i32 %247)
  %249 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %250 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %251 = call i32 @rk3399_vpu_mpeg2_dec_set_quantization(%struct.hantro_dev* %249, %struct.hantro_ctx* %250)
  %252 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %253 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %254 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %255 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %254, i32 0, i32 0
  %256 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %257 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %256, i32 0, i32 0
  %258 = load %struct.v4l2_mpeg2_sequence*, %struct.v4l2_mpeg2_sequence** %7, align 8
  %259 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %8, align 8
  %260 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %6, align 8
  %261 = call i32 @rk3399_vpu_mpeg2_dec_set_buffers(%struct.hantro_dev* %252, %struct.hantro_ctx* %253, i32* %255, i32* %257, %struct.v4l2_mpeg2_sequence* %258, %struct.v4l2_mpeg2_picture* %259, %struct.v4l2_ctrl_mpeg2_slice_params* %260)
  %262 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %263 = call i32 @hantro_finish_run(%struct.hantro_ctx* %262)
  %264 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %265 = call i32 @VDPU_SWREG(i32 57)
  %266 = call i32 @vdpu_read(%struct.hantro_dev* %264, i32 %265)
  %267 = call i32 @VDPU_REG_DEC_E(i32 1)
  %268 = or i32 %266, %267
  store i32 %268, i32* %9, align 4
  %269 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %270 = load i32, i32* %9, align 4
  %271 = call i32 @VDPU_SWREG(i32 57)
  %272 = call i32 @vdpu_write(%struct.hantro_dev* %269, i32 %270, i32 %271)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx*) #1

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx*) #1

declare dso_local i32 @hantro_prepare_run(%struct.hantro_ctx*) #1

declare dso_local %struct.v4l2_ctrl_mpeg2_slice_params* @hantro_get_ctrl(%struct.hantro_ctx*, i32) #1

declare dso_local i32 @VDPU_REG_DEC_ADV_PRE_DIS(i32) #1

declare dso_local i32 @VDPU_REG_DEC_SCMD_DIS(i32) #1

declare dso_local i32 @VDPU_REG_FILTERING_DIS(i32) #1

declare dso_local i32 @VDPU_REG_DEC_LATENCY(i32) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @VDPU_SWREG(i32) #1

declare dso_local i32 @VDPU_REG_INIT_QP(i32) #1

declare dso_local i32 @VDPU_REG_STREAM_LEN(i32) #1

declare dso_local i32 @VDPU_REG_APF_THRESHOLD(i32) #1

declare dso_local i32 @VDPU_REG_STARTMB_X(i32) #1

declare dso_local i32 @VDPU_REG_STARTMB_Y(i32) #1

declare dso_local i32 @VDPU_REG_DEC_MODE(i32) #1

declare dso_local i32 @VDPU_REG_DEC_STRENDIAN_E(i32) #1

declare dso_local i32 @VDPU_REG_DEC_STRSWAP32_E(i32) #1

declare dso_local i32 @VDPU_REG_DEC_OUTSWAP32_E(i32) #1

declare dso_local i32 @VDPU_REG_DEC_INSWAP32_E(i32) #1

declare dso_local i32 @VDPU_REG_DEC_OUT_ENDIAN(i32) #1

declare dso_local i32 @VDPU_REG_DEC_IN_ENDIAN(i32) #1

declare dso_local i32 @VDPU_REG_DEC_DATA_DISC_E(i32) #1

declare dso_local i32 @VDPU_REG_DEC_MAX_BURST(i32) #1

declare dso_local i32 @VDPU_REG_DEC_AXI_WR_ID(i32) #1

declare dso_local i32 @VDPU_REG_DEC_AXI_RD_ID(i32) #1

declare dso_local i32 @VDPU_REG_RLC_MODE_E(i32) #1

declare dso_local i32 @VDPU_REG_PIC_INTERLACE_E(i32) #1

declare dso_local i32 @VDPU_REG_PIC_FIELDMODE_E(i32) #1

declare dso_local i32 @VDPU_REG_PIC_B_E(i32) #1

declare dso_local i32 @VDPU_REG_PIC_INTER_E(i32) #1

declare dso_local i32 @VDPU_REG_PIC_TOPFIELD_E(i32) #1

declare dso_local i32 @VDPU_REG_FWD_INTERLACE_E(i32) #1

declare dso_local i32 @VDPU_REG_WRITE_MVS_E(i32) #1

declare dso_local i32 @VDPU_REG_DEC_TIMEOUT_E(i32) #1

declare dso_local i32 @VDPU_REG_DEC_CLK_GATE_E(i32) #1

declare dso_local i32 @VDPU_REG_PIC_MB_WIDTH(i32) #1

declare dso_local i32 @MPEG2_MB_WIDTH(i32) #1

declare dso_local i32 @VDPU_REG_PIC_MB_HEIGHT_P(i32) #1

declare dso_local i32 @MPEG2_MB_HEIGHT(i32) #1

declare dso_local i32 @VDPU_REG_ALT_SCAN_E(i32) #1

declare dso_local i32 @VDPU_REG_TOPFIELDFIRST_E(i32) #1

declare dso_local i32 @VDPU_REG_STRM_START_BIT(i32) #1

declare dso_local i32 @VDPU_REG_QSCALE_TYPE(i32) #1

declare dso_local i32 @VDPU_REG_CON_MV_E(i32) #1

declare dso_local i32 @VDPU_REG_INTRA_DC_PREC(i32) #1

declare dso_local i32 @VDPU_REG_INTRA_VLC_TAB(i32) #1

declare dso_local i32 @VDPU_REG_FRAME_PRED_DCT(i32) #1

declare dso_local i32 @VDPU_REG_ALT_SCAN_FLAG_E(i32) #1

declare dso_local i32 @VDPU_REG_FCODE_FWD_HOR(i32) #1

declare dso_local i32 @VDPU_REG_FCODE_FWD_VER(i32) #1

declare dso_local i32 @VDPU_REG_FCODE_BWD_HOR(i32) #1

declare dso_local i32 @VDPU_REG_FCODE_BWD_VER(i32) #1

declare dso_local i32 @VDPU_REG_MV_ACCURACY_FWD(i32) #1

declare dso_local i32 @VDPU_REG_MV_ACCURACY_BWD(i32) #1

declare dso_local i32 @rk3399_vpu_mpeg2_dec_set_quantization(%struct.hantro_dev*, %struct.hantro_ctx*) #1

declare dso_local i32 @rk3399_vpu_mpeg2_dec_set_buffers(%struct.hantro_dev*, %struct.hantro_ctx*, i32*, i32*, %struct.v4l2_mpeg2_sequence*, %struct.v4l2_mpeg2_picture*, %struct.v4l2_ctrl_mpeg2_slice_params*) #1

declare dso_local i32 @hantro_finish_run(%struct.hantro_ctx*) #1

declare dso_local i32 @vdpu_read(%struct.hantro_dev*, i32) #1

declare dso_local i32 @VDPU_REG_DEC_E(i32) #1

declare dso_local i32 @vdpu_write(%struct.hantro_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
