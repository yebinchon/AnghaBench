
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_charger {int vbus_detected; int detect_usb_type_work; int charger_wq; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_dbg (int ,char*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static irqreturn_t ab8500_charger_vbusdetf_handler(int irq, void *_di)
{
 struct ab8500_charger *di = _di;

 di->vbus_detected = 0;
 dev_dbg(di->dev, "VBUS falling detected\n");
 queue_work(di->charger_wq, &di->detect_usb_type_work);

 return IRQ_HANDLED;
}
