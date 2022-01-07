
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue; int running; int timer; int lock; int base_reg; int sb_pdev; } ;


 int RDC_CLS_TMR ;
 int RDC_WDT_CNT ;
 int RDC_WDT_EN ;
 scalar_t__ RDC_WDT_INTERVAL ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pci_write_config_dword (int ,int ,int) ;
 TYPE_1__ rdc321x_wdt_device ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rdc321x_wdt_start(void)
{
 unsigned long flags;

 if (!rdc321x_wdt_device.queue) {
  rdc321x_wdt_device.queue = 1;


  spin_lock_irqsave(&rdc321x_wdt_device.lock, flags);
  pci_write_config_dword(rdc321x_wdt_device.sb_pdev,
    rdc321x_wdt_device.base_reg, RDC_CLS_TMR);


  pci_write_config_dword(rdc321x_wdt_device.sb_pdev,
     rdc321x_wdt_device.base_reg,
     RDC_WDT_EN | RDC_WDT_CNT);
  spin_unlock_irqrestore(&rdc321x_wdt_device.lock, flags);

  mod_timer(&rdc321x_wdt_device.timer,
    jiffies + RDC_WDT_INTERVAL);
 }


 rdc321x_wdt_device.running++;
}
