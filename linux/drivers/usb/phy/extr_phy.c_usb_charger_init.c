
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int chg_work; int chg_state; int chg_type; } ;


 int INIT_WORK (int *,int ) ;
 int UNKNOWN_TYPE ;
 int USB_CHARGER_DEFAULT ;
 int usb_phy_notify_charger_work ;
 int usb_phy_set_default_current (struct usb_phy*) ;

__attribute__((used)) static void usb_charger_init(struct usb_phy *usb_phy)
{
 usb_phy->chg_type = UNKNOWN_TYPE;
 usb_phy->chg_state = USB_CHARGER_DEFAULT;
 usb_phy_set_default_current(usb_phy);
 INIT_WORK(&usb_phy->chg_work, usb_phy_notify_charger_work);
}
