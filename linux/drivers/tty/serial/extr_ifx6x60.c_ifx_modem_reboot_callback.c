
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 int ifx_modem_power_off (scalar_t__) ;
 int pr_warn (char*) ;
 scalar_t__ saved_ifx_dev ;

__attribute__((used)) static int ifx_modem_reboot_callback(struct notifier_block *nfb,
     unsigned long event, void *data)
{
 if (saved_ifx_dev)
  ifx_modem_power_off(saved_ifx_dev);
 else
  pr_warn("no ifx modem active;\n");

 return NOTIFY_OK;
}
