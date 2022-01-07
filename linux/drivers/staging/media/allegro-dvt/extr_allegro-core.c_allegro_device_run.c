
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int vb2_buf; scalar_t__ sequence; } ;
struct allegro_dev {int dummy; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct allegro_channel {int stride; int height; int osequence; TYPE_1__ fh; struct allegro_dev* dev; } ;
typedef scalar_t__ dma_addr_t ;


 int allegro_mcu_send_encode_frame (struct allegro_dev*,struct allegro_channel*,scalar_t__,scalar_t__) ;
 int allegro_mcu_send_put_stream_buffer (struct allegro_dev*,struct allegro_channel*,scalar_t__,unsigned long) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_dst_buf (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;
 scalar_t__ vb2_dma_contig_plane_dma_addr (int *,int ) ;
 unsigned long vb2_plane_size (int *,int ) ;

__attribute__((used)) static void allegro_device_run(void *priv)
{
 struct allegro_channel *channel = priv;
 struct allegro_dev *dev = channel->dev;
 struct vb2_v4l2_buffer *src_buf;
 struct vb2_v4l2_buffer *dst_buf;
 dma_addr_t src_y;
 dma_addr_t src_uv;
 dma_addr_t dst_addr;
 unsigned long dst_size;

 dst_buf = v4l2_m2m_next_dst_buf(channel->fh.m2m_ctx);
 dst_addr = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
 dst_size = vb2_plane_size(&dst_buf->vb2_buf, 0);
 allegro_mcu_send_put_stream_buffer(dev, channel, dst_addr, dst_size);

 src_buf = v4l2_m2m_next_src_buf(channel->fh.m2m_ctx);
 src_buf->sequence = channel->osequence++;

 src_y = vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 0);
 src_uv = src_y + (channel->stride * channel->height);
 allegro_mcu_send_encode_frame(dev, channel, src_y, src_uv);
}
