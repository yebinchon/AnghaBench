
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct work_struct {int dummy; } ;
struct omap_overlay_manager {int name; } ;
struct omap_overlay {scalar_t__ id; int (* disable ) (struct omap_overlay*) ;struct omap_overlay_manager* manager; int name; } ;
struct TYPE_2__ {unsigned int error_irqs; unsigned int irq_error_mask; int irq_lock; } ;



 unsigned int DISPC_IRQ_OCP_ERR ;



 int DSSERR (char*,...) ;
 scalar_t__ OMAP_DSS_GFX ;
 int _omap_dispc_set_irqs () ;
 TYPE_1__ dispc_compat ;
 unsigned int dispc_mgr_get_sync_lost_irq (int) ;
 int dispc_runtime_get () ;
 int dispc_runtime_put () ;
 int dss_mgr_disable (struct omap_overlay_manager*) ;
 int dss_mgr_enable (struct omap_overlay_manager*) ;
 int msleep (int) ;
 int omap_dss_get_num_overlay_managers () ;
 int omap_dss_get_num_overlays () ;
 struct omap_overlay* omap_dss_get_overlay (int) ;
 struct omap_overlay_manager* omap_dss_get_overlay_manager (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct omap_overlay*) ;
 int stub2 (struct omap_overlay*) ;

__attribute__((used)) static void dispc_error_worker(struct work_struct *work)
{
 int i;
 u32 errors;
 unsigned long flags;
 static const unsigned fifo_underflow_bits[] = {
  131,
  130,
  129,
  128,
 };

 spin_lock_irqsave(&dispc_compat.irq_lock, flags);
 errors = dispc_compat.error_irqs;
 dispc_compat.error_irqs = 0;
 spin_unlock_irqrestore(&dispc_compat.irq_lock, flags);

 dispc_runtime_get();

 for (i = 0; i < omap_dss_get_num_overlays(); ++i) {
  struct omap_overlay *ovl;
  unsigned bit;

  ovl = omap_dss_get_overlay(i);
  bit = fifo_underflow_bits[i];

  if (bit & errors) {
   DSSERR("FIFO UNDERFLOW on %s, disabling the overlay\n",
     ovl->name);
   ovl->disable(ovl);
   msleep(50);
  }
 }

 for (i = 0; i < omap_dss_get_num_overlay_managers(); ++i) {
  struct omap_overlay_manager *mgr;
  unsigned bit;

  mgr = omap_dss_get_overlay_manager(i);
  bit = dispc_mgr_get_sync_lost_irq(i);

  if (bit & errors) {
   int j;

   DSSERR("SYNC_LOST on channel %s, restarting the output "
     "with video overlays disabled\n",
     mgr->name);

   dss_mgr_disable(mgr);

   for (j = 0; j < omap_dss_get_num_overlays(); ++j) {
    struct omap_overlay *ovl;
    ovl = omap_dss_get_overlay(j);

    if (ovl->id != OMAP_DSS_GFX &&
      ovl->manager == mgr)
     ovl->disable(ovl);
   }

   dss_mgr_enable(mgr);
  }
 }

 if (errors & DISPC_IRQ_OCP_ERR) {
  DSSERR("OCP_ERR\n");
  for (i = 0; i < omap_dss_get_num_overlay_managers(); ++i) {
   struct omap_overlay_manager *mgr;

   mgr = omap_dss_get_overlay_manager(i);
   dss_mgr_disable(mgr);
  }
 }

 spin_lock_irqsave(&dispc_compat.irq_lock, flags);
 dispc_compat.irq_error_mask |= errors;
 _omap_dispc_set_irqs();
 spin_unlock_irqrestore(&dispc_compat.irq_lock, flags);

 dispc_runtime_put();
}
