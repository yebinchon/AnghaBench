
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dpaa2_io_notification_ctx {scalar_t__ id; scalar_t__ is_cdan; int desired_cpu; } ;
struct dpaa2_io {int lock_mgmt_cmd; int swp; } ;


 int ENODEV ;
 int qbman_swp_CDAN_enable (int ,int ) ;
 int qbman_swp_fq_schedule (int ,scalar_t__) ;
 struct dpaa2_io* service_select_by_cpu (struct dpaa2_io*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unlikely (struct dpaa2_io*) ;

int dpaa2_io_service_rearm(struct dpaa2_io *d,
      struct dpaa2_io_notification_ctx *ctx)
{
 unsigned long irqflags;
 int err;

 d = service_select_by_cpu(d, ctx->desired_cpu);
 if (!unlikely(d))
  return -ENODEV;

 spin_lock_irqsave(&d->lock_mgmt_cmd, irqflags);
 if (ctx->is_cdan)
  err = qbman_swp_CDAN_enable(d->swp, (u16)ctx->id);
 else
  err = qbman_swp_fq_schedule(d->swp, ctx->id);
 spin_unlock_irqrestore(&d->lock_mgmt_cmd, irqflags);

 return err;
}
