
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* otg; int notifier; } ;
struct ab8500_usb {scalar_t__ mode; int dev; int ab8500; scalar_t__ vbus_draw; TYPE_2__ phy; } ;
typedef int irqreturn_t ;
typedef enum usb_phy_events { ____Placeholder_usb_phy_events } usb_phy_events ;
struct TYPE_3__ {int default_a; } ;


 int AB8500_BIT_PHY_CTRL_DEVICE_EN ;
 int AB8500_USB ;
 int AB8500_USB_PHY_CTRL_REG ;
 int IRQ_HANDLED ;
 scalar_t__ USB_DEDICATED_CHG ;
 int USB_EVENT_NONE ;
 scalar_t__ USB_HOST ;
 void* USB_IDLE ;
 scalar_t__ USB_PERIPHERAL ;
 int UX500_MUSB_CLEAN ;
 int ab8500_usb_host_phy_dis (struct ab8500_usb*) ;
 int ab8500_usb_peri_phy_dis (struct ab8500_usb*) ;
 int ab8500_usb_wd_linkstatus (struct ab8500_usb*,int ) ;
 int abx500_mask_and_set_register_interruptible (int ,int ,int ,int ,int ) ;
 int atomic_notifier_call_chain (int *,int,scalar_t__*) ;
 scalar_t__ is_ab8500_2p0 (int ) ;

__attribute__((used)) static irqreturn_t ab8500_usb_disconnect_irq(int irq, void *data)
{
 struct ab8500_usb *ab = (struct ab8500_usb *) data;
 enum usb_phy_events event = USB_EVENT_NONE;


 if (ab->mode == USB_HOST) {
  ab->phy.otg->default_a = 0;
  ab->vbus_draw = 0;
  atomic_notifier_call_chain(&ab->phy.notifier,
    event, &ab->vbus_draw);
  ab8500_usb_host_phy_dis(ab);
  ab->mode = USB_IDLE;
 }

 if (ab->mode == USB_PERIPHERAL) {
  atomic_notifier_call_chain(&ab->phy.notifier,
    event, &ab->vbus_draw);
  ab8500_usb_peri_phy_dis(ab);
  atomic_notifier_call_chain(&ab->phy.notifier,
    UX500_MUSB_CLEAN, &ab->vbus_draw);
  ab->mode = USB_IDLE;
  ab->phy.otg->default_a = 0;
  ab->vbus_draw = 0;
 }

 if (is_ab8500_2p0(ab->ab8500)) {
  if (ab->mode == USB_DEDICATED_CHG) {
   ab8500_usb_wd_linkstatus(ab,
     AB8500_BIT_PHY_CTRL_DEVICE_EN);
   abx500_mask_and_set_register_interruptible(ab->dev,
     AB8500_USB, AB8500_USB_PHY_CTRL_REG,
     AB8500_BIT_PHY_CTRL_DEVICE_EN, 0);
  }
 }

 return IRQ_HANDLED;
}
