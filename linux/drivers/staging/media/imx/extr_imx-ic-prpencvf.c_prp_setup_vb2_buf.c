
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int phys; } ;
struct prp_priv {TYPE_2__ underrun_buf; struct imx_media_buffer** active_vb2_buf; struct imx_media_video_dev* vdev; } ;
struct imx_media_video_dev {int dummy; } ;
struct TYPE_3__ {int vb2_buf; } ;
struct imx_media_buffer {TYPE_1__ vbuf; } ;
typedef int dma_addr_t ;


 struct imx_media_buffer* imx_media_capture_device_next_buf (struct imx_media_video_dev*) ;
 int vb2_dma_contig_plane_dma_addr (int *,int ) ;

__attribute__((used)) static void prp_setup_vb2_buf(struct prp_priv *priv, dma_addr_t *phys)
{
 struct imx_media_video_dev *vdev = priv->vdev;
 struct imx_media_buffer *buf;
 int i;

 for (i = 0; i < 2; i++) {
  buf = imx_media_capture_device_next_buf(vdev);
  if (buf) {
   priv->active_vb2_buf[i] = buf;
   phys[i] = vb2_dma_contig_plane_dma_addr(
    &buf->vbuf.vb2_buf, 0);
  } else {
   priv->active_vb2_buf[i] = ((void*)0);
   phys[i] = priv->underrun_buf.phys;
  }
 }
}
