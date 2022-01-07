
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {int range; int value; } ;
struct TYPE_11__ {scalar_t__ level; } ;
struct v4l2_ctrl_vp8_frame_header {int flags; int version; TYPE_6__ coder_state; TYPE_5__ lf_header; } ;
struct hantro_dev {int dummy; } ;
struct TYPE_8__ {int size; scalar_t__ cpu; } ;
struct TYPE_9__ {TYPE_2__ segment_map; } ;
struct TYPE_7__ {size_t height; size_t width; } ;
struct hantro_ctx {TYPE_4__* codec_ops; TYPE_3__ vp8_dec; TYPE_1__ dst_fmt; struct hantro_dev* dev; } ;
struct TYPE_10__ {int (* reset ) (struct hantro_ctx*) ;} ;


 int V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER ;
 int V4L2_VP8_FRAME_HEADER_FLAG_MB_NO_SKIP_COEFF ;
 int VDPU_REG_AXI_CTRL ;
 int VDPU_REG_CONFIG_DEC_CLK_GATE_E ;
 int VDPU_REG_CONFIG_DEC_INSWAP32_E ;
 int VDPU_REG_CONFIG_DEC_IN_ENDIAN ;
 int VDPU_REG_CONFIG_DEC_MAX_BURST (int) ;
 int VDPU_REG_CONFIG_DEC_OUTSWAP32_E ;
 int VDPU_REG_CONFIG_DEC_OUT_ENDIAN ;
 int VDPU_REG_CONFIG_DEC_STRENDIAN_E ;
 int VDPU_REG_CONFIG_DEC_STRSWAP32_E ;
 int VDPU_REG_CONFIG_DEC_TIMEOUT_E ;
 int VDPU_REG_DATA_ENDIAN ;
 int VDPU_REG_DEC_CTRL0_DEC_MODE (int) ;
 int VDPU_REG_DEC_CTRL0_PIC_INTER_E ;
 int VDPU_REG_DEC_CTRL4_BILIN_MC_E ;
 int VDPU_REG_DEC_CTRL4_VC1_HEIGHT_EXT ;
 int VDPU_REG_DEC_FORMAT ;
 int VDPU_REG_EN_FLAGS ;
 int VDPU_REG_VP8_DCT_START_BIT ;
 scalar_t__ VP8_FRAME_IS_KEY_FRAME (struct v4l2_ctrl_vp8_frame_header const*) ;
 int VP8_MB_HEIGHT (size_t) ;
 int VP8_MB_WIDTH (size_t) ;
 scalar_t__ WARN_ON (int) ;
 int cfg_buffers (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ;
 int cfg_lf (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ;
 int cfg_parts (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ;
 int cfg_qp (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ;
 int cfg_ref (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ;
 int cfg_tap (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ;
 int hantro_finish_run (struct hantro_ctx*) ;
 struct v4l2_ctrl_vp8_frame_header* hantro_get_ctrl (struct hantro_ctx*,int ) ;
 int hantro_prepare_run (struct hantro_ctx*) ;
 int hantro_reg_write (struct hantro_dev*,int *,int) ;
 int hantro_vp8_prob_update (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ;
 int memset (scalar_t__,int ,int ) ;
 int stub1 (struct hantro_ctx*) ;
 int vdpu_read (struct hantro_dev*,int ) ;
 int vdpu_write_relaxed (struct hantro_dev*,int,int ) ;
 int vp8_dec_bool_range ;
 int vp8_dec_bool_value ;
 int vp8_dec_filter_disable ;
 int vp8_dec_mb_height ;
 int vp8_dec_mb_height_ext ;
 int vp8_dec_mb_width ;
 int vp8_dec_mb_width_ext ;
 int vp8_dec_skip_mode ;
 int vp8_dec_start_dec ;

void rk3399_vpu_vp8_dec_run(struct hantro_ctx *ctx)
{
 const struct v4l2_ctrl_vp8_frame_header *hdr;
 struct hantro_dev *vpu = ctx->dev;
 size_t height = ctx->dst_fmt.height;
 size_t width = ctx->dst_fmt.width;
 u32 mb_width, mb_height;
 u32 reg;

 hantro_prepare_run(ctx);

 hdr = hantro_get_ctrl(ctx, V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER);
 if (WARN_ON(!hdr))
  return;


 if (VP8_FRAME_IS_KEY_FRAME(hdr) && ctx->vp8_dec.segment_map.cpu)
  memset(ctx->vp8_dec.segment_map.cpu, 0,
         ctx->vp8_dec.segment_map.size);

 hantro_vp8_prob_update(ctx, hdr);
 ctx->codec_ops->reset(ctx);

 reg = VDPU_REG_CONFIG_DEC_TIMEOUT_E
  | VDPU_REG_CONFIG_DEC_CLK_GATE_E;
 if (!VP8_FRAME_IS_KEY_FRAME(hdr))
  reg |= VDPU_REG_DEC_CTRL0_PIC_INTER_E;
 vdpu_write_relaxed(vpu, reg, VDPU_REG_EN_FLAGS);

 reg = VDPU_REG_CONFIG_DEC_STRENDIAN_E
  | VDPU_REG_CONFIG_DEC_INSWAP32_E
  | VDPU_REG_CONFIG_DEC_STRSWAP32_E
  | VDPU_REG_CONFIG_DEC_OUTSWAP32_E
  | VDPU_REG_CONFIG_DEC_IN_ENDIAN
  | VDPU_REG_CONFIG_DEC_OUT_ENDIAN;
 vdpu_write_relaxed(vpu, reg, VDPU_REG_DATA_ENDIAN);

 reg = VDPU_REG_CONFIG_DEC_MAX_BURST(16);
 vdpu_write_relaxed(vpu, reg, VDPU_REG_AXI_CTRL);

 reg = VDPU_REG_DEC_CTRL0_DEC_MODE(10);
 vdpu_write_relaxed(vpu, reg, VDPU_REG_DEC_FORMAT);

 if (!(hdr->flags & V4L2_VP8_FRAME_HEADER_FLAG_MB_NO_SKIP_COEFF))
  hantro_reg_write(vpu, &vp8_dec_skip_mode, 1);
 if (hdr->lf_header.level == 0)
  hantro_reg_write(vpu, &vp8_dec_filter_disable, 1);


 mb_width = VP8_MB_WIDTH(width);
 mb_height = VP8_MB_HEIGHT(height);

 hantro_reg_write(vpu, &vp8_dec_mb_width, mb_width);
 hantro_reg_write(vpu, &vp8_dec_mb_height, mb_height);
 hantro_reg_write(vpu, &vp8_dec_mb_width_ext, mb_width >> 9);
 hantro_reg_write(vpu, &vp8_dec_mb_height_ext, mb_height >> 8);


 hantro_reg_write(vpu, &vp8_dec_bool_range, hdr->coder_state.range);
 hantro_reg_write(vpu, &vp8_dec_bool_value, hdr->coder_state.value);

 reg = vdpu_read(vpu, VDPU_REG_VP8_DCT_START_BIT);
 if (hdr->version != 3)
  reg |= VDPU_REG_DEC_CTRL4_VC1_HEIGHT_EXT;
 if (hdr->version & 0x3)
  reg |= VDPU_REG_DEC_CTRL4_BILIN_MC_E;
 vdpu_write_relaxed(vpu, reg, VDPU_REG_VP8_DCT_START_BIT);

 cfg_lf(ctx, hdr);
 cfg_qp(ctx, hdr);
 cfg_parts(ctx, hdr);
 cfg_tap(ctx, hdr);
 cfg_ref(ctx, hdr);
 cfg_buffers(ctx, hdr);

 hantro_finish_run(ctx);

 hantro_reg_write(vpu, &vp8_dec_start_dec, 1);
}
