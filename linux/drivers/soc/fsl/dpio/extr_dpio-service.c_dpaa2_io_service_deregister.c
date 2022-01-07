
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dpaa2_io_notification_ctx {int node; scalar_t__ id; scalar_t__ is_cdan; struct dpaa2_io* dpio_private; } ;
struct dpaa2_io {int lock_notifications; int swp; } ;
struct device {int dummy; } ;


 int list_del (int *) ;
 int qbman_swp_CDAN_disable (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dpaa2_io_service_deregister(struct dpaa2_io *service,
     struct dpaa2_io_notification_ctx *ctx,
     struct device *dev)
{
 struct dpaa2_io *d = ctx->dpio_private;
 unsigned long irqflags;

 if (ctx->is_cdan)
  qbman_swp_CDAN_disable(d->swp, (u16)ctx->id);

 spin_lock_irqsave(&d->lock_notifications, irqflags);
 list_del(&ctx->node);
 spin_unlock_irqrestore(&d->lock_notifications, irqflags);

}
