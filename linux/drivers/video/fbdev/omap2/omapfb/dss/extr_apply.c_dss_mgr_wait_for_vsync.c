
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_overlay_manager {int id; TYPE_1__* output; } ;
struct TYPE_2__ {int id; } ;


 int DISPC_IRQ_EVSYNC_EVEN ;
 int DISPC_IRQ_EVSYNC_ODD ;
 int ENODEV ;


 int dispc_mgr_get_vsync_irq (int ) ;
 int dispc_runtime_get () ;
 int dispc_runtime_put () ;
 unsigned long msecs_to_jiffies (int) ;
 int omap_dispc_wait_for_irq_interruptible_timeout (int ,unsigned long) ;

__attribute__((used)) static int dss_mgr_wait_for_vsync(struct omap_overlay_manager *mgr)
{
 unsigned long timeout = msecs_to_jiffies(500);
 u32 irq;
 int r;

 if (mgr->output == ((void*)0))
  return -ENODEV;

 r = dispc_runtime_get();
 if (r)
  return r;

 switch (mgr->output->id) {
 case 128:
  irq = DISPC_IRQ_EVSYNC_ODD;
  break;
 case 129:
  irq = DISPC_IRQ_EVSYNC_EVEN;
  break;
 default:
  irq = dispc_mgr_get_vsync_irq(mgr->id);
  break;
 }

 r = omap_dispc_wait_for_irq_interruptible_timeout(irq, timeout);

 dispc_runtime_put();

 return r;
}
