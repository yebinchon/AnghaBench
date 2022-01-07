
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_charger {int usb_link_status_work; int charger_wq; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_dbg (int ,char*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static irqreturn_t ab8500_charger_usblinkstatus_handler(int irq, void *_di)
{
 struct ab8500_charger *di = _di;

 dev_dbg(di->dev, "USB link status changed\n");

 queue_work(di->charger_wq, &di->usb_link_status_work);

 return IRQ_HANDLED;
}
