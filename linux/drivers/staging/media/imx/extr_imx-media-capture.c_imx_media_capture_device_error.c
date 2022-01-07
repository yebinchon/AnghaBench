
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct imx_media_video_dev {int dummy; } ;
struct capture_priv {int q_lock; struct vb2_queue q; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct capture_priv* to_capture_priv (struct imx_media_video_dev*) ;
 int vb2_is_streaming (struct vb2_queue*) ;
 int vb2_queue_error (struct vb2_queue*) ;

void imx_media_capture_device_error(struct imx_media_video_dev *vdev)
{
 struct capture_priv *priv = to_capture_priv(vdev);
 struct vb2_queue *vq = &priv->q;
 unsigned long flags;

 if (!vb2_is_streaming(vq))
  return;

 spin_lock_irqsave(&priv->q_lock, flags);
 vb2_queue_error(vq);
 spin_unlock_irqrestore(&priv->q_lock, flags);
}
