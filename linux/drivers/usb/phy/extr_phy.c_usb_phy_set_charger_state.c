
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int chg_state; int chg_work; int chg_type; int (* charger_detect ) (struct usb_phy*) ;} ;
typedef enum usb_charger_state { ____Placeholder_usb_charger_state } usb_charger_state ;


 int UNKNOWN_TYPE ;
 scalar_t__ USB_CHARGER_PRESENT ;
 int schedule_work (int *) ;
 int stub1 (struct usb_phy*) ;

void usb_phy_set_charger_state(struct usb_phy *usb_phy,
          enum usb_charger_state state)
{
 if (usb_phy->chg_state == state || !usb_phy->charger_detect)
  return;

 usb_phy->chg_state = state;
 if (usb_phy->chg_state == USB_CHARGER_PRESENT)
  usb_phy->chg_type = usb_phy->charger_detect(usb_phy);
 else
  usb_phy->chg_type = UNKNOWN_TYPE;

 schedule_work(&usb_phy->chg_work);
}
