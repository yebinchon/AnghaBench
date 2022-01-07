
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vb2_v4l2_buffer {int vb2_buf; } ;
struct v4l2_vp8_segment_header {int flags; } ;
struct v4l2_ctrl_vp8_frame_header {struct v4l2_vp8_segment_header segment_header; } ;
struct hantro_dev {int dummy; } ;
struct TYPE_5__ {int dma; } ;
struct TYPE_4__ {int dma; } ;
struct TYPE_6__ {TYPE_2__ segment_map; TYPE_1__ prob_tbl; } ;
struct hantro_ctx {TYPE_3__ vp8_dec; struct hantro_dev* dev; } ;
typedef int dma_addr_t ;


 int V4L2_VP8_SEGMENT_HEADER_FLAG_ENABLED ;
 int V4L2_VP8_SEGMENT_HEADER_FLAG_UPDATE_MAP ;
 int VDPU_REG_ADDR_DST ;
 int VDPU_REG_ADDR_QTABLE ;
 int VDPU_REG_FWD_PIC1_SEGMENT_BASE (int ) ;
 int VDPU_REG_FWD_PIC1_SEGMENT_E ;
 int VDPU_REG_FWD_PIC1_SEGMENT_UPD_E ;
 int VDPU_REG_VP8_SEGMENT_VAL ;
 struct vb2_v4l2_buffer* hantro_get_dst_buf (struct hantro_ctx*) ;
 int vb2_dma_contig_plane_dma_addr (int *,int ) ;
 int vdpu_write_relaxed (struct hantro_dev*,int ,int ) ;

__attribute__((used)) static void cfg_buffers(struct hantro_ctx *ctx,
   const struct v4l2_ctrl_vp8_frame_header *hdr)
{
 const struct v4l2_vp8_segment_header *seg = &hdr->segment_header;
 struct hantro_dev *vpu = ctx->dev;
 struct vb2_v4l2_buffer *vb2_dst;
 dma_addr_t dst_dma;
 u32 reg;

 vb2_dst = hantro_get_dst_buf(ctx);


 vdpu_write_relaxed(vpu, ctx->vp8_dec.prob_tbl.dma,
      VDPU_REG_ADDR_QTABLE);


 reg = VDPU_REG_FWD_PIC1_SEGMENT_BASE(ctx->vp8_dec.segment_map.dma);
 if (seg->flags & V4L2_VP8_SEGMENT_HEADER_FLAG_ENABLED) {
  reg |= VDPU_REG_FWD_PIC1_SEGMENT_E;
  if (seg->flags & V4L2_VP8_SEGMENT_HEADER_FLAG_UPDATE_MAP)
   reg |= VDPU_REG_FWD_PIC1_SEGMENT_UPD_E;
 }
 vdpu_write_relaxed(vpu, reg, VDPU_REG_VP8_SEGMENT_VAL);


 dst_dma = vb2_dma_contig_plane_dma_addr(&vb2_dst->vb2_buf, 0);
 vdpu_write_relaxed(vpu, dst_dma, VDPU_REG_ADDR_DST);
}
