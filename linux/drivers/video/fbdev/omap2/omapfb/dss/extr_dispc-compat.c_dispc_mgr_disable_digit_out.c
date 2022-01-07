
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int DSSERR (char*,...) ;
 int OMAP_DSS_CHANNEL_DIGIT ;
 int dispc_mgr_disable_isr ;
 int dispc_mgr_enable (int ,int) ;
 scalar_t__ dispc_mgr_get_framedone_irq (int ) ;
 scalar_t__ dispc_mgr_get_vsync_irq (int ) ;
 int dispc_mgr_is_enabled (int ) ;
 int framedone_compl ;
 int msecs_to_jiffies (int) ;
 int msleep (int) ;
 int omap_dispc_register_isr (int ,int *,scalar_t__) ;
 int omap_dispc_unregister_isr (int ,int *,scalar_t__) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void dispc_mgr_disable_digit_out(void)
{
 DECLARE_COMPLETION_ONSTACK(framedone_compl);
 int r, i;
 u32 irq_mask;
 int num_irqs;

 if (!dispc_mgr_is_enabled(OMAP_DSS_CHANNEL_DIGIT))
  return;






 irq_mask = dispc_mgr_get_framedone_irq(OMAP_DSS_CHANNEL_DIGIT);
 num_irqs = 1;

 if (!irq_mask) {





  irq_mask = dispc_mgr_get_vsync_irq(OMAP_DSS_CHANNEL_DIGIT);






  num_irqs = 2;
 }

 r = omap_dispc_register_isr(dispc_mgr_disable_isr, &framedone_compl,
   irq_mask);
 if (r)
  DSSERR("failed to register %x isr\n", irq_mask);

 dispc_mgr_enable(OMAP_DSS_CHANNEL_DIGIT, 0);


 if (r) {
  msleep(100);
  return;
 }

 for (i = 0; i < num_irqs; ++i) {
  if (!wait_for_completion_timeout(&framedone_compl,
     msecs_to_jiffies(100)))
   DSSERR("timeout waiting for digit out to stop\n");
 }

 r = omap_dispc_unregister_isr(dispc_mgr_disable_isr, &framedone_compl,
   irq_mask);
 if (r)
  DSSERR("failed to unregister %x isr\n", irq_mask);
}
