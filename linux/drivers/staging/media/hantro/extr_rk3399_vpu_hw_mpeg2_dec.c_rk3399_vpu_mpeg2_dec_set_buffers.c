
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct vb2_buffer {int dummy; } ;
struct v4l2_mpeg2_sequence {int dummy; } ;
struct v4l2_mpeg2_picture {int picture_coding_type; scalar_t__ picture_structure; scalar_t__ top_field_first; } ;
struct v4l2_ctrl_mpeg2_slice_params {int forward_ref_ts; int backward_ref_ts; } ;
struct hantro_dev {int dummy; } ;
struct TYPE_4__ {int width; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct hantro_ctx {TYPE_2__ dst_fmt; TYPE_1__ fh; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ ALIGN (int ,int) ;
 scalar_t__ PICT_BOTTOM_FIELD ;
 scalar_t__ PICT_FRAME ;
 scalar_t__ PICT_TOP_FIELD ;


 int VDPU_REG_DEC_OUT_BASE ;
 int VDPU_REG_REFER0_BASE ;
 int VDPU_REG_REFER1_BASE ;
 int VDPU_REG_REFER2_BASE ;
 int VDPU_REG_REFER3_BASE ;
 int VDPU_REG_RLC_VLC_BASE ;
 scalar_t__ hantro_get_ref (struct vb2_queue*,int ) ;
 struct vb2_queue* v4l2_m2m_get_dst_vq (int ) ;
 scalar_t__ vb2_dma_contig_plane_dma_addr (struct vb2_buffer*,int ) ;
 int vdpu_write_relaxed (struct hantro_dev*,scalar_t__,int ) ;

__attribute__((used)) static void
rk3399_vpu_mpeg2_dec_set_buffers(struct hantro_dev *vpu,
     struct hantro_ctx *ctx,
     struct vb2_buffer *src_buf,
     struct vb2_buffer *dst_buf,
     const struct v4l2_mpeg2_sequence *sequence,
     const struct v4l2_mpeg2_picture *picture,
     const struct v4l2_ctrl_mpeg2_slice_params *slice_params)
{
 dma_addr_t forward_addr = 0, backward_addr = 0;
 dma_addr_t current_addr, addr;
 struct vb2_queue *vq;

 vq = v4l2_m2m_get_dst_vq(ctx->fh.m2m_ctx);

 switch (picture->picture_coding_type) {
 case 129:
  backward_addr = hantro_get_ref(vq,
            slice_params->backward_ref_ts);

 case 128:
  forward_addr = hantro_get_ref(vq,
           slice_params->forward_ref_ts);
 }


 addr = vb2_dma_contig_plane_dma_addr(src_buf, 0);
 vdpu_write_relaxed(vpu, addr, VDPU_REG_RLC_VLC_BASE);


 addr = vb2_dma_contig_plane_dma_addr(dst_buf, 0);
 current_addr = addr;

 if (picture->picture_structure == PICT_BOTTOM_FIELD)
  addr += ALIGN(ctx->dst_fmt.width, 16);
 vdpu_write_relaxed(vpu, addr, VDPU_REG_DEC_OUT_BASE);

 if (!forward_addr)
  forward_addr = current_addr;
 if (!backward_addr)
  backward_addr = current_addr;


 if (picture->picture_structure == PICT_FRAME ||
     picture->picture_coding_type == 129 ||
     (picture->picture_structure == PICT_TOP_FIELD &&
      picture->top_field_first) ||
     (picture->picture_structure == PICT_BOTTOM_FIELD &&
      !picture->top_field_first)) {
  vdpu_write_relaxed(vpu, forward_addr, VDPU_REG_REFER0_BASE);
  vdpu_write_relaxed(vpu, forward_addr, VDPU_REG_REFER1_BASE);
 } else if (picture->picture_structure == PICT_TOP_FIELD) {
  vdpu_write_relaxed(vpu, forward_addr, VDPU_REG_REFER0_BASE);
  vdpu_write_relaxed(vpu, current_addr, VDPU_REG_REFER1_BASE);
 } else if (picture->picture_structure == PICT_BOTTOM_FIELD) {
  vdpu_write_relaxed(vpu, current_addr, VDPU_REG_REFER0_BASE);
  vdpu_write_relaxed(vpu, forward_addr, VDPU_REG_REFER1_BASE);
 }


 vdpu_write_relaxed(vpu, backward_addr, VDPU_REG_REFER2_BASE);
 vdpu_write_relaxed(vpu, backward_addr, VDPU_REG_REFER3_BASE);
}
