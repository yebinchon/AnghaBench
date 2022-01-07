
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int last_reset; } ;
struct TYPE_5__ {int error_work; int irq_error_mask; int registered_isr; int irq_lock; TYPE_1__ irq_stats; int irq_stats_lock; } ;


 int DISPC_IRQ_MASK_ERROR ;
 int DISPC_IRQ_SYNC_LOST2 ;
 int DISPC_IRQ_SYNC_LOST3 ;
 int DISPC_IRQ_VID3_FIFO_UNDERFLOW ;
 int DSSERR (char*) ;
 int FEAT_MGR_LCD2 ;
 int FEAT_MGR_LCD3 ;
 int INIT_WORK (int *,int ) ;
 int _omap_dispc_set_irqs () ;
 int dispc_clear_irqstatus (int ) ;
 TYPE_2__ dispc_compat ;
 int dispc_dump_irqs ;
 int dispc_error_worker ;
 int dispc_read_irqstatus () ;
 int dispc_request_irq (int ,TYPE_2__*) ;
 int dss_debugfs_create_file (char*,int ) ;
 int dss_feat_get_num_ovls () ;
 scalar_t__ dss_has_feature (int ) ;
 int jiffies ;
 int memset (int ,int ,int) ;
 int omap_dispc_irq_handler ;
 int spin_lock_init (int *) ;

int dss_dispc_initialize_irq(void)
{
 int r;







 spin_lock_init(&dispc_compat.irq_lock);

 memset(dispc_compat.registered_isr, 0,
   sizeof(dispc_compat.registered_isr));

 dispc_compat.irq_error_mask = DISPC_IRQ_MASK_ERROR;
 if (dss_has_feature(FEAT_MGR_LCD2))
  dispc_compat.irq_error_mask |= DISPC_IRQ_SYNC_LOST2;
 if (dss_has_feature(FEAT_MGR_LCD3))
  dispc_compat.irq_error_mask |= DISPC_IRQ_SYNC_LOST3;
 if (dss_feat_get_num_ovls() > 3)
  dispc_compat.irq_error_mask |= DISPC_IRQ_VID3_FIFO_UNDERFLOW;





 dispc_clear_irqstatus(dispc_read_irqstatus());

 INIT_WORK(&dispc_compat.error_work, dispc_error_worker);

 _omap_dispc_set_irqs();

 r = dispc_request_irq(omap_dispc_irq_handler, &dispc_compat);
 if (r) {
  DSSERR("dispc_request_irq failed\n");
  return r;
 }

 return 0;
}
