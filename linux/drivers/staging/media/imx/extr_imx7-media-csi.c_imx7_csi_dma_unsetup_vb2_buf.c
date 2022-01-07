
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_buffer {int timestamp; } ;
struct TYPE_2__ {struct vb2_buffer vb2_buf; } ;
struct imx_media_buffer {TYPE_1__ vbuf; } ;
struct imx7_csi {struct imx_media_buffer** active_vb2_buf; } ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;


 int ktime_get_ns () ;
 int vb2_buffer_done (struct vb2_buffer*,int) ;

__attribute__((used)) static void imx7_csi_dma_unsetup_vb2_buf(struct imx7_csi *csi,
      enum vb2_buffer_state return_status)
{
 struct imx_media_buffer *buf;
 int i;


 for (i = 0; i < 2; i++) {
  buf = csi->active_vb2_buf[i];
  if (buf) {
   struct vb2_buffer *vb = &buf->vbuf.vb2_buf;

   vb->timestamp = ktime_get_ns();
   vb2_buffer_done(vb, return_status);
  }
 }
}
