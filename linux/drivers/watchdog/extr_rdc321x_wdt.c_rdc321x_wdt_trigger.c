
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {int stop; int timer; scalar_t__ queue; int lock; int base_reg; int sb_pdev; scalar_t__ running; } ;


 int RDC_WDT_EN ;
 scalar_t__ RDC_WDT_INTERVAL ;
 int complete (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pci_read_config_dword (int ,int ,int *) ;
 int pci_write_config_dword (int ,int ,int ) ;
 TYPE_1__ rdc321x_wdt_device ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ ticks ;

__attribute__((used)) static void rdc321x_wdt_trigger(struct timer_list *unused)
{
 unsigned long flags;
 u32 val;

 if (rdc321x_wdt_device.running)
  ticks--;


 spin_lock_irqsave(&rdc321x_wdt_device.lock, flags);
 pci_read_config_dword(rdc321x_wdt_device.sb_pdev,
     rdc321x_wdt_device.base_reg, &val);
 val |= RDC_WDT_EN;
 pci_write_config_dword(rdc321x_wdt_device.sb_pdev,
     rdc321x_wdt_device.base_reg, val);
 spin_unlock_irqrestore(&rdc321x_wdt_device.lock, flags);


 if (rdc321x_wdt_device.queue && ticks)
  mod_timer(&rdc321x_wdt_device.timer,
    jiffies + RDC_WDT_INTERVAL);
 else {

  complete(&rdc321x_wdt_device.stop);
 }

}
