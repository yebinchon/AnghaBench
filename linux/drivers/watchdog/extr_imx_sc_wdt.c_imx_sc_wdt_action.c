
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int SC_IRQ_GROUP_WDOG ;
 int SC_IRQ_WDOG ;
 int imx_scu_irq_group_enable (int ,int ,int) ;
 int imx_scu_irq_unregister_notifier (struct notifier_block*) ;

__attribute__((used)) static void imx_sc_wdt_action(void *data)
{
 struct notifier_block *wdt_notifier = data;

 imx_scu_irq_unregister_notifier(wdt_notifier);
 imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
     SC_IRQ_WDOG,
     0);
}
