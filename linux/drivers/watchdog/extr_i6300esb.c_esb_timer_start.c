
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct watchdog_device {int status; } ;
struct esb_dev {int pdev; } ;


 int ESB_LOCK_REG ;
 int ESB_RELOAD_REG (struct esb_dev*) ;
 int ESB_WDT_ENABLE ;
 int ESB_WDT_LOCK ;
 int ESB_WDT_RELOAD ;
 int WDOG_NO_WAY_OUT ;
 int esb_unlock_registers (struct esb_dev*) ;
 int pci_write_config_byte (int ,int ,int) ;
 int test_bit (int ,int *) ;
 struct esb_dev* to_esb_dev (struct watchdog_device*) ;
 int writew (int ,int ) ;

__attribute__((used)) static int esb_timer_start(struct watchdog_device *wdd)
{
 struct esb_dev *edev = to_esb_dev(wdd);
 int _wdd_nowayout = test_bit(WDOG_NO_WAY_OUT, &wdd->status);
 u8 val;

 esb_unlock_registers(edev);
 writew(ESB_WDT_RELOAD, ESB_RELOAD_REG(edev));

 val = ESB_WDT_ENABLE | (_wdd_nowayout ? ESB_WDT_LOCK : 0x00);
 pci_write_config_byte(edev->pdev, ESB_LOCK_REG, val);
 return 0;
}
