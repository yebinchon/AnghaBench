
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl6030_usb {int asleep; int linkstat; int dev; int usb3v3; } ;
typedef int irqreturn_t ;
typedef enum musb_vbus_id_status { ____Placeholder_musb_vbus_id_status } musb_vbus_id_status ;


 int IRQ_HANDLED ;
 int MUSB_ID_GROUND ;
 void* MUSB_UNKNOWN ;
 int STS_HW_CONDITIONS ;
 int STS_USB_ID ;
 int TWL6030_MODULE_ID0 ;
 int TWL_MODULE_USB ;
 int USB_ID_INT_EN_HI_CLR ;
 int USB_ID_INT_EN_HI_SET ;
 int USB_ID_INT_LATCH_CLR ;
 int dev_err (int ,char*) ;
 int musb_mailbox (int) ;
 int regulator_enable (int ) ;
 int twl6030_readb (struct twl6030_usb*,int ,int ) ;
 int twl6030_writeb (struct twl6030_usb*,int ,int,int ) ;

__attribute__((used)) static irqreturn_t twl6030_usbotg_irq(int irq, void *_twl)
{
 struct twl6030_usb *twl = _twl;
 enum musb_vbus_id_status status = MUSB_UNKNOWN;
 u8 hw_state;
 int ret;

 hw_state = twl6030_readb(twl, TWL6030_MODULE_ID0, STS_HW_CONDITIONS);

 if (hw_state & STS_USB_ID) {
  ret = regulator_enable(twl->usb3v3);
  if (ret)
   dev_err(twl->dev, "Failed to enable usb3v3\n");

  twl->asleep = 1;
  twl6030_writeb(twl, TWL_MODULE_USB, 0x1, USB_ID_INT_EN_HI_CLR);
  twl6030_writeb(twl, TWL_MODULE_USB, 0x10, USB_ID_INT_EN_HI_SET);
  status = MUSB_ID_GROUND;
  twl->linkstat = status;
  ret = musb_mailbox(status);
  if (ret)
   twl->linkstat = MUSB_UNKNOWN;
 } else {
  twl6030_writeb(twl, TWL_MODULE_USB, 0x10, USB_ID_INT_EN_HI_CLR);
  twl6030_writeb(twl, TWL_MODULE_USB, 0x1, USB_ID_INT_EN_HI_SET);
 }
 twl6030_writeb(twl, TWL_MODULE_USB, status, USB_ID_INT_LATCH_CLR);

 return IRQ_HANDLED;
}
