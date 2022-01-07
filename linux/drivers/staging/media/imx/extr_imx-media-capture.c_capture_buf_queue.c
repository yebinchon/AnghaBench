
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int vb2_queue; } ;
struct imx_media_buffer {int list; } ;
struct capture_priv {int q_lock; int ready_q; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct imx_media_buffer* to_imx_media_vb (struct vb2_buffer*) ;
 struct capture_priv* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void capture_buf_queue(struct vb2_buffer *vb)
{
 struct capture_priv *priv = vb2_get_drv_priv(vb->vb2_queue);
 struct imx_media_buffer *buf = to_imx_media_vb(vb);
 unsigned long flags;

 spin_lock_irqsave(&priv->q_lock, flags);

 list_add_tail(&buf->list, &priv->ready_q);

 spin_unlock_irqrestore(&priv->q_lock, flags);
}
