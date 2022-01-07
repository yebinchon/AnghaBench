
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct iTCO_wdt_private {int io_lock; int no_reboot_priv; int (* update_no_reboot_bit ) (int ,int) ;int smi_res; } ;


 int TCO1_CNT (struct iTCO_wdt_private*) ;
 int iTCO_vendor_pre_stop (int ) ;
 unsigned int inw (int ) ;
 int outw (unsigned int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ,int) ;
 struct iTCO_wdt_private* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int iTCO_wdt_stop(struct watchdog_device *wd_dev)
{
 struct iTCO_wdt_private *p = watchdog_get_drvdata(wd_dev);
 unsigned int val;

 spin_lock(&p->io_lock);

 iTCO_vendor_pre_stop(p->smi_res);


 val = inw(TCO1_CNT(p));
 val |= 0x0800;
 outw(val, TCO1_CNT(p));
 val = inw(TCO1_CNT(p));


 p->update_no_reboot_bit(p->no_reboot_priv, 1);

 spin_unlock(&p->io_lock);

 if ((val & 0x0800) == 0)
  return -1;
 return 0;
}
