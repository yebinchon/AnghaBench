
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_buffer {int dummy; } ;
struct imx_media_video_dev {int dummy; } ;
struct TYPE_3__ {struct vb2_buffer vb2_buf; } ;
struct imx_media_buffer {TYPE_1__ vbuf; } ;
struct TYPE_4__ {int phys; } ;
struct imx7_csi {TYPE_2__ underrun_buf; struct imx_media_buffer** active_vb2_buf; struct imx_media_video_dev* vdev; } ;
typedef int dma_addr_t ;


 int imx7_csi_update_buf (struct imx7_csi*,int ,int) ;
 struct imx_media_buffer* imx_media_capture_device_next_buf (struct imx_media_video_dev*) ;
 int vb2_dma_contig_plane_dma_addr (struct vb2_buffer*,int ) ;

__attribute__((used)) static void imx7_csi_setup_vb2_buf(struct imx7_csi *csi)
{
 struct imx_media_video_dev *vdev = csi->vdev;
 struct imx_media_buffer *buf;
 struct vb2_buffer *vb2_buf;
 dma_addr_t phys[2];
 int i;

 for (i = 0; i < 2; i++) {
  buf = imx_media_capture_device_next_buf(vdev);
  if (buf) {
   csi->active_vb2_buf[i] = buf;
   vb2_buf = &buf->vbuf.vb2_buf;
   phys[i] = vb2_dma_contig_plane_dma_addr(vb2_buf, 0);
  } else {
   csi->active_vb2_buf[i] = ((void*)0);
   phys[i] = csi->underrun_buf.phys;
  }

  imx7_csi_update_buf(csi, phys[i], i);
 }
}
