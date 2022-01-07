
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int DSSERR (char*) ;
 int dispc_mgr_disable_isr ;
 int dispc_mgr_enable (int,int) ;
 int dispc_mgr_get_framedone_irq (int) ;
 int dispc_mgr_is_enabled (int) ;
 int framedone_compl ;
 int msecs_to_jiffies (int) ;
 int msleep (int) ;
 int omap_dispc_register_isr (int ,int *,int ) ;
 int omap_dispc_unregister_isr (int ,int *,int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void dispc_mgr_disable_lcd_out(enum omap_channel channel)
{
 DECLARE_COMPLETION_ONSTACK(framedone_compl);
 int r;
 u32 irq;

 if (!dispc_mgr_is_enabled(channel))
  return;






 irq = dispc_mgr_get_framedone_irq(channel);

 r = omap_dispc_register_isr(dispc_mgr_disable_isr, &framedone_compl,
   irq);
 if (r)
  DSSERR("failed to register FRAMEDONE isr\n");

 dispc_mgr_enable(channel, 0);


 if (r) {
  msleep(100);
  return;
 }

 if (!wait_for_completion_timeout(&framedone_compl,
    msecs_to_jiffies(100)))
  DSSERR("timeout waiting for FRAME DONE\n");

 r = omap_dispc_unregister_isr(dispc_mgr_disable_isr, &framedone_compl,
   irq);
 if (r)
  DSSERR("failed to unregister FRAMEDONE isr\n");
}
