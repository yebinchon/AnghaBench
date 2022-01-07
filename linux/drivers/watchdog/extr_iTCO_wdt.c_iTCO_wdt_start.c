
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct iTCO_wdt_private {int iTCO_version; int io_lock; int no_reboot_priv; scalar_t__ (* update_no_reboot_bit ) (int ,int) ;int smi_res; } ;


 int EIO ;
 int TCO1_CNT (struct iTCO_wdt_private*) ;
 int TCO_RLD (struct iTCO_wdt_private*) ;
 int iTCO_vendor_pre_start (int ,int ) ;
 unsigned int inw (int ) ;
 int outb (int,int ) ;
 int outw (unsigned int,int ) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (int ,int) ;
 struct iTCO_wdt_private* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int iTCO_wdt_start(struct watchdog_device *wd_dev)
{
 struct iTCO_wdt_private *p = watchdog_get_drvdata(wd_dev);
 unsigned int val;

 spin_lock(&p->io_lock);

 iTCO_vendor_pre_start(p->smi_res, wd_dev->timeout);


 if (p->update_no_reboot_bit(p->no_reboot_priv, 0)) {
  spin_unlock(&p->io_lock);
  pr_err("failed to reset NO_REBOOT flag, reboot disabled by hardware/BIOS\n");
  return -EIO;
 }



 if (p->iTCO_version >= 2)
  outw(0x01, TCO_RLD(p));
 else if (p->iTCO_version == 1)
  outb(0x01, TCO_RLD(p));


 val = inw(TCO1_CNT(p));
 val &= 0xf7ff;
 outw(val, TCO1_CNT(p));
 val = inw(TCO1_CNT(p));
 spin_unlock(&p->io_lock);

 if (val & 0x0800)
  return -1;
 return 0;
}
