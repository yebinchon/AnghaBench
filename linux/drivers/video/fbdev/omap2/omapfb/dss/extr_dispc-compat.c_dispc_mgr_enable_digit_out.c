
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int DSSERR (char*,...) ;
 int OMAP_DSS_CHANNEL_DIGIT ;
 int dispc_digit_out_enable_isr ;
 int dispc_mgr_enable (int ,int) ;
 int dispc_mgr_get_sync_lost_irq (int ) ;
 int dispc_mgr_get_vsync_irq (int ) ;
 scalar_t__ dispc_mgr_is_enabled (int ) ;
 int msecs_to_jiffies (int) ;
 int omap_dispc_register_isr (int ,int *,int) ;
 int omap_dispc_unregister_isr (int ,int *,int) ;
 int vsync_compl ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void dispc_mgr_enable_digit_out(void)
{
 DECLARE_COMPLETION_ONSTACK(vsync_compl);
 int r;
 u32 irq_mask;

 if (dispc_mgr_is_enabled(OMAP_DSS_CHANNEL_DIGIT))
  return;







 irq_mask = dispc_mgr_get_vsync_irq(OMAP_DSS_CHANNEL_DIGIT) |
  dispc_mgr_get_sync_lost_irq(OMAP_DSS_CHANNEL_DIGIT);

 r = omap_dispc_register_isr(dispc_digit_out_enable_isr, &vsync_compl,
   irq_mask);
 if (r) {
  DSSERR("failed to register %x isr\n", irq_mask);
  return;
 }

 dispc_mgr_enable(OMAP_DSS_CHANNEL_DIGIT, 1);


 if (!wait_for_completion_timeout(&vsync_compl, msecs_to_jiffies(100)))
  DSSERR("timeout waiting for digit out to start\n");

 r = omap_dispc_unregister_isr(dispc_digit_out_enable_isr, &vsync_compl,
   irq_mask);
 if (r)
  DSSERR("failed to unregister %x isr\n", irq_mask);
}
