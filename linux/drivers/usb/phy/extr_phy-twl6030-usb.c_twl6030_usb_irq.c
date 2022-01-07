
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct twl6030_usb {int asleep; int linkstat; TYPE_1__* dev; int usb3v3; } ;
typedef int irqreturn_t ;
typedef enum musb_vbus_id_status { ____Placeholder_musb_vbus_id_status } musb_vbus_id_status ;
struct TYPE_2__ {int kobj; } ;


 int CONTROLLER_STAT1 ;
 int IRQ_HANDLED ;
 scalar_t__ MUSB_UNKNOWN ;
 int MUSB_VBUS_OFF ;
 int MUSB_VBUS_VALID ;
 int STS_HW_CONDITIONS ;
 int STS_USB_ID ;
 int TWL6030_MODULE_ID0 ;
 int TWL_MODULE_MAIN_CHARGE ;
 int VBUS_DET ;
 int dev_err (TYPE_1__*,char*) ;
 int musb_mailbox (int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int sysfs_notify (int *,int *,char*) ;
 int twl6030_readb (struct twl6030_usb*,int ,int ) ;

__attribute__((used)) static irqreturn_t twl6030_usb_irq(int irq, void *_twl)
{
 struct twl6030_usb *twl = _twl;
 enum musb_vbus_id_status status = MUSB_UNKNOWN;
 u8 vbus_state, hw_state;
 int ret;

 hw_state = twl6030_readb(twl, TWL6030_MODULE_ID0, STS_HW_CONDITIONS);

 vbus_state = twl6030_readb(twl, TWL_MODULE_MAIN_CHARGE,
      CONTROLLER_STAT1);
 if (!(hw_state & STS_USB_ID)) {
  if (vbus_state & VBUS_DET) {
   ret = regulator_enable(twl->usb3v3);
   if (ret)
    dev_err(twl->dev, "Failed to enable usb3v3\n");

   twl->asleep = 1;
   status = MUSB_VBUS_VALID;
   twl->linkstat = status;
   ret = musb_mailbox(status);
   if (ret)
    twl->linkstat = MUSB_UNKNOWN;
  } else {
   if (twl->linkstat != MUSB_UNKNOWN) {
    status = MUSB_VBUS_OFF;
    twl->linkstat = status;
    ret = musb_mailbox(status);
    if (ret)
     twl->linkstat = MUSB_UNKNOWN;
    if (twl->asleep) {
     regulator_disable(twl->usb3v3);
     twl->asleep = 0;
    }
   }
  }
 }
 sysfs_notify(&twl->dev->kobj, ((void*)0), "vbus");

 return IRQ_HANDLED;
}
