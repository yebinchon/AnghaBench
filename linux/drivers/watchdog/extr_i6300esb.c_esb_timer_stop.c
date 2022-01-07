
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct watchdog_device {int dummy; } ;
struct esb_dev {int pdev; } ;


 int ESB_LOCK_REG ;
 int ESB_RELOAD_REG (struct esb_dev*) ;
 int ESB_WDT_ENABLE ;
 int ESB_WDT_RELOAD ;
 int esb_unlock_registers (struct esb_dev*) ;
 int pci_read_config_byte (int ,int ,int*) ;
 int pci_write_config_byte (int ,int ,int) ;
 struct esb_dev* to_esb_dev (struct watchdog_device*) ;
 int writew (int ,int ) ;

__attribute__((used)) static int esb_timer_stop(struct watchdog_device *wdd)
{
 struct esb_dev *edev = to_esb_dev(wdd);
 u8 val;


 esb_unlock_registers(edev);
 writew(ESB_WDT_RELOAD, ESB_RELOAD_REG(edev));

 pci_write_config_byte(edev->pdev, ESB_LOCK_REG, 0x0);
 pci_read_config_byte(edev->pdev, ESB_LOCK_REG, &val);


 return val & ESB_WDT_ENABLE;
}
