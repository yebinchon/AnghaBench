
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vb2_v4l2_buffer {int vb2_buf; } ;
struct v4l2_mpeg2_sequence {int progressive_sequence; } ;
struct v4l2_mpeg2_picture {scalar_t__ picture_structure; scalar_t__ picture_coding_type; int ** f_code; int alternate_scan; int frame_pred_frame_dct; int intra_vlc_format; int intra_dc_precision; int concealment_motion_vectors; int q_scale_type; int top_field_first; } ;
struct v4l2_ctrl_mpeg2_slice_params {int bit_size; int data_bit_offset; struct v4l2_mpeg2_picture picture; struct v4l2_mpeg2_sequence sequence; } ;
struct hantro_dev {int dummy; } ;
struct TYPE_2__ {int height; int width; } ;
struct hantro_ctx {TYPE_1__ dst_fmt; struct hantro_dev* dev; } ;


 int G1_REG_ALT_SCAN_E (int ) ;
 int G1_REG_ALT_SCAN_FLAG_E (int ) ;
 int G1_REG_APF_THRESHOLD (int) ;
 int G1_REG_CON_MV_E (int ) ;
 int G1_REG_DEC_ADV_PRE_DIS (int ) ;
 int G1_REG_DEC_AXI_RD_ID (int ) ;
 int G1_REG_DEC_AXI_WR_ID (int ) ;
 int G1_REG_DEC_CLK_GATE_E (int) ;
 int G1_REG_DEC_DATA_DISC_E (int ) ;
 int G1_REG_DEC_E (int) ;
 int G1_REG_DEC_INSWAP32_E (int) ;
 int G1_REG_DEC_IN_ENDIAN (int) ;
 int G1_REG_DEC_LATENCY (int ) ;
 int G1_REG_DEC_MAX_BURST (int) ;
 int G1_REG_DEC_MODE (int) ;
 int G1_REG_DEC_OUTSWAP32_E (int) ;
 int G1_REG_DEC_OUT_ENDIAN (int) ;
 int G1_REG_DEC_SCMD_DIS (int ) ;
 int G1_REG_DEC_STRENDIAN_E (int) ;
 int G1_REG_DEC_STRSWAP32_E (int) ;
 int G1_REG_DEC_TIMEOUT_E (int) ;
 int G1_REG_FCODE_BWD_HOR (int ) ;
 int G1_REG_FCODE_BWD_VER (int ) ;
 int G1_REG_FCODE_FWD_HOR (int ) ;
 int G1_REG_FCODE_FWD_VER (int ) ;
 int G1_REG_FILTERING_DIS (int) ;
 int G1_REG_FRAME_PRED_DCT (int ) ;
 int G1_REG_FWD_INTERLACE_E (int ) ;
 int G1_REG_INIT_QP (int) ;
 int G1_REG_INTRA_DC_PREC (int ) ;
 int G1_REG_INTRA_VLC_TAB (int ) ;
 int G1_REG_MV_ACCURACY_BWD (int) ;
 int G1_REG_MV_ACCURACY_FWD (int) ;
 int G1_REG_PIC_B_E (int) ;
 int G1_REG_PIC_FIELDMODE_E (int) ;
 int G1_REG_PIC_INTERLACE_E (int) ;
 int G1_REG_PIC_INTER_E (int) ;
 int G1_REG_PIC_MB_HEIGHT_P (int ) ;
 int G1_REG_PIC_MB_WIDTH (int ) ;
 int G1_REG_PIC_TOPFIELD_E (int) ;
 int G1_REG_QSCALE_TYPE (int ) ;
 int G1_REG_RLC_MODE_E (int ) ;
 int G1_REG_STARTMB_X (int ) ;
 int G1_REG_STARTMB_Y (int ) ;
 int G1_REG_STREAM_LEN (int) ;
 int G1_REG_STRM_START_BIT (int ) ;
 int G1_REG_TOPFIELDFIRST_E (int ) ;
 int G1_REG_WRITE_MVS_E (int ) ;
 int G1_SWREG (int) ;
 int MPEG2_MB_HEIGHT (int ) ;
 int MPEG2_MB_WIDTH (int ) ;
 scalar_t__ PICT_FRAME ;
 scalar_t__ PICT_TOP_FIELD ;
 int V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS ;
 scalar_t__ V4L2_MPEG2_PICTURE_CODING_TYPE_B ;
 scalar_t__ V4L2_MPEG2_PICTURE_CODING_TYPE_I ;
 int hantro_finish_run (struct hantro_ctx*) ;
 int hantro_g1_mpeg2_dec_set_buffers (struct hantro_dev*,struct hantro_ctx*,int *,int *,struct v4l2_mpeg2_sequence const*,struct v4l2_mpeg2_picture const*,struct v4l2_ctrl_mpeg2_slice_params const*) ;
 int hantro_g1_mpeg2_dec_set_quantization (struct hantro_dev*,struct hantro_ctx*) ;
 struct v4l2_ctrl_mpeg2_slice_params* hantro_get_ctrl (struct hantro_ctx*,int ) ;
 struct vb2_v4l2_buffer* hantro_get_dst_buf (struct hantro_ctx*) ;
 struct vb2_v4l2_buffer* hantro_get_src_buf (struct hantro_ctx*) ;
 int hantro_prepare_run (struct hantro_ctx*) ;
 int vdpu_write (struct hantro_dev*,int,int ) ;
 int vdpu_write_relaxed (struct hantro_dev*,int,int ) ;

void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
{
 struct hantro_dev *vpu = ctx->dev;
 struct vb2_v4l2_buffer *src_buf, *dst_buf;
 const struct v4l2_ctrl_mpeg2_slice_params *slice_params;
 const struct v4l2_mpeg2_sequence *sequence;
 const struct v4l2_mpeg2_picture *picture;
 u32 reg;

 src_buf = hantro_get_src_buf(ctx);
 dst_buf = hantro_get_dst_buf(ctx);


 hantro_prepare_run(ctx);

 slice_params = hantro_get_ctrl(ctx,
           V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
 sequence = &slice_params->sequence;
 picture = &slice_params->picture;

 reg = G1_REG_DEC_AXI_RD_ID(0) |
       G1_REG_DEC_TIMEOUT_E(1) |
       G1_REG_DEC_STRSWAP32_E(1) |
       G1_REG_DEC_STRENDIAN_E(1) |
       G1_REG_DEC_INSWAP32_E(1) |
       G1_REG_DEC_OUTSWAP32_E(1) |
       G1_REG_DEC_DATA_DISC_E(0) |
       G1_REG_DEC_LATENCY(0) |
       G1_REG_DEC_CLK_GATE_E(1) |
       G1_REG_DEC_IN_ENDIAN(1) |
       G1_REG_DEC_OUT_ENDIAN(1) |
       G1_REG_DEC_ADV_PRE_DIS(0) |
       G1_REG_DEC_SCMD_DIS(0) |
       G1_REG_DEC_MAX_BURST(16);
 vdpu_write_relaxed(vpu, reg, G1_SWREG(2));

 reg = G1_REG_DEC_MODE(5) |
       G1_REG_RLC_MODE_E(0) |
       G1_REG_PIC_INTERLACE_E(!sequence->progressive_sequence) |
       G1_REG_PIC_FIELDMODE_E(picture->picture_structure != PICT_FRAME) |
       G1_REG_PIC_B_E(picture->picture_coding_type == V4L2_MPEG2_PICTURE_CODING_TYPE_B) |
       G1_REG_PIC_INTER_E(picture->picture_coding_type != V4L2_MPEG2_PICTURE_CODING_TYPE_I) |
       G1_REG_PIC_TOPFIELD_E(picture->picture_structure == PICT_TOP_FIELD) |
       G1_REG_FWD_INTERLACE_E(0) |
       G1_REG_FILTERING_DIS(1) |
       G1_REG_WRITE_MVS_E(0) |
       G1_REG_DEC_AXI_WR_ID(0);
 vdpu_write_relaxed(vpu, reg, G1_SWREG(3));

 reg = G1_REG_PIC_MB_WIDTH(MPEG2_MB_WIDTH(ctx->dst_fmt.width)) |
       G1_REG_PIC_MB_HEIGHT_P(MPEG2_MB_HEIGHT(ctx->dst_fmt.height)) |
       G1_REG_ALT_SCAN_E(picture->alternate_scan) |
       G1_REG_TOPFIELDFIRST_E(picture->top_field_first);
 vdpu_write_relaxed(vpu, reg, G1_SWREG(4));

 reg = G1_REG_STRM_START_BIT(slice_params->data_bit_offset) |
       G1_REG_QSCALE_TYPE(picture->q_scale_type) |
       G1_REG_CON_MV_E(picture->concealment_motion_vectors) |
       G1_REG_INTRA_DC_PREC(picture->intra_dc_precision) |
       G1_REG_INTRA_VLC_TAB(picture->intra_vlc_format) |
       G1_REG_FRAME_PRED_DCT(picture->frame_pred_frame_dct);
 vdpu_write_relaxed(vpu, reg, G1_SWREG(5));

 reg = G1_REG_INIT_QP(1) |
       G1_REG_STREAM_LEN(slice_params->bit_size >> 3);
 vdpu_write_relaxed(vpu, reg, G1_SWREG(6));

 reg = G1_REG_ALT_SCAN_FLAG_E(picture->alternate_scan) |
       G1_REG_FCODE_FWD_HOR(picture->f_code[0][0]) |
       G1_REG_FCODE_FWD_VER(picture->f_code[0][1]) |
       G1_REG_FCODE_BWD_HOR(picture->f_code[1][0]) |
       G1_REG_FCODE_BWD_VER(picture->f_code[1][1]) |
       G1_REG_MV_ACCURACY_FWD(1) |
       G1_REG_MV_ACCURACY_BWD(1);
 vdpu_write_relaxed(vpu, reg, G1_SWREG(18));

 reg = G1_REG_STARTMB_X(0) |
       G1_REG_STARTMB_Y(0);
 vdpu_write_relaxed(vpu, reg, G1_SWREG(48));

 reg = G1_REG_APF_THRESHOLD(8);
 vdpu_write_relaxed(vpu, reg, G1_SWREG(55));

 hantro_g1_mpeg2_dec_set_quantization(vpu, ctx);

 hantro_g1_mpeg2_dec_set_buffers(vpu, ctx, &src_buf->vb2_buf,
     &dst_buf->vb2_buf,
     sequence, picture, slice_params);

 hantro_finish_run(ctx);

 reg = G1_REG_DEC_E(1);
 vdpu_write(vpu, reg, G1_SWREG(1));
}
