
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_6__ {int timeout; int bootstatus; } ;
struct esb_dev {TYPE_4__ wdd; TYPE_1__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 int ESB_CONFIG_REG ;
 int ESB_LOCK_REG ;
 int ESB_RELOAD_REG (struct esb_dev*) ;
 int ESB_WDT_LOCK ;
 int ESB_WDT_RELOAD ;
 int ESB_WDT_TIMEOUT ;
 int WDIOF_CARDRESET ;
 int dev_warn (int *,char*) ;
 int esb_timer_set_heartbeat (TYPE_4__*,int ) ;
 int esb_unlock_registers (struct esb_dev*) ;
 int pci_read_config_byte (TYPE_1__*,int ,int*) ;
 int pci_write_config_byte (TYPE_1__*,int ,int) ;
 int pci_write_config_word (TYPE_1__*,int ,int) ;
 int readw (int ) ;
 int writew (int,int ) ;

__attribute__((used)) static void esb_initdevice(struct esb_dev *edev)
{
 u8 val1;
 u16 val2;
 pci_write_config_word(edev->pdev, ESB_CONFIG_REG, 0x0003);


 pci_read_config_byte(edev->pdev, ESB_LOCK_REG, &val1);
 if (val1 & ESB_WDT_LOCK)
  dev_warn(&edev->pdev->dev, "nowayout already set\n");


 pci_write_config_byte(edev->pdev, ESB_LOCK_REG, 0x00);


 esb_unlock_registers(edev);
 val2 = readw(ESB_RELOAD_REG(edev));
 if (val2 & ESB_WDT_TIMEOUT)
  edev->wdd.bootstatus = WDIOF_CARDRESET;


 esb_unlock_registers(edev);
 writew((ESB_WDT_TIMEOUT | ESB_WDT_RELOAD), ESB_RELOAD_REG(edev));


 esb_timer_set_heartbeat(&edev->wdd, edev->wdd.timeout);
}
