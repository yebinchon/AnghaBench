
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct vb2_buffer {struct vb2_queue* vb2_queue; } ;
struct v4l2_pix_format {scalar_t__ sizeimage; } ;
struct TYPE_4__ {struct v4l2_pix_format pix; } ;
struct TYPE_5__ {TYPE_1__ fmt; } ;
struct TYPE_6__ {TYPE_2__ fmt; } ;
struct capture_priv {int src_sd; TYPE_3__ vdev; } ;


 int EINVAL ;
 int v4l2_err (int ,char*,scalar_t__,long) ;
 struct capture_priv* vb2_get_drv_priv (struct vb2_queue*) ;
 scalar_t__ vb2_plane_size (struct vb2_buffer*,int ) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,scalar_t__) ;

__attribute__((used)) static int capture_buf_prepare(struct vb2_buffer *vb)
{
 struct vb2_queue *vq = vb->vb2_queue;
 struct capture_priv *priv = vb2_get_drv_priv(vq);
 struct v4l2_pix_format *pix = &priv->vdev.fmt.fmt.pix;

 if (vb2_plane_size(vb, 0) < pix->sizeimage) {
  v4l2_err(priv->src_sd,
    "data will not fit into plane (%lu < %lu)\n",
    vb2_plane_size(vb, 0), (long)pix->sizeimage);
  return -EINVAL;
 }

 vb2_set_plane_payload(vb, 0, pix->sizeimage);

 return 0;
}
