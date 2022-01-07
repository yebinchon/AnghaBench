
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int chg_work; void* chg_state; int chg_type; int edev; } ;


 int ACA_TYPE ;
 int CDP_TYPE ;
 int DCP_TYPE ;
 int EXTCON_CHG_USB_ACA ;
 int EXTCON_CHG_USB_CDP ;
 int EXTCON_CHG_USB_DCP ;
 int EXTCON_CHG_USB_SDP ;
 int SDP_TYPE ;
 int UNKNOWN_TYPE ;
 void* USB_CHARGER_ABSENT ;
 void* USB_CHARGER_PRESENT ;
 scalar_t__ extcon_get_state (int ,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void __usb_phy_get_charger_type(struct usb_phy *usb_phy)
{
 if (extcon_get_state(usb_phy->edev, EXTCON_CHG_USB_SDP) > 0) {
  usb_phy->chg_type = SDP_TYPE;
  usb_phy->chg_state = USB_CHARGER_PRESENT;
 } else if (extcon_get_state(usb_phy->edev, EXTCON_CHG_USB_CDP) > 0) {
  usb_phy->chg_type = CDP_TYPE;
  usb_phy->chg_state = USB_CHARGER_PRESENT;
 } else if (extcon_get_state(usb_phy->edev, EXTCON_CHG_USB_DCP) > 0) {
  usb_phy->chg_type = DCP_TYPE;
  usb_phy->chg_state = USB_CHARGER_PRESENT;
 } else if (extcon_get_state(usb_phy->edev, EXTCON_CHG_USB_ACA) > 0) {
  usb_phy->chg_type = ACA_TYPE;
  usb_phy->chg_state = USB_CHARGER_PRESENT;
 } else {
  usb_phy->chg_type = UNKNOWN_TYPE;
  usb_phy->chg_state = USB_CHARGER_ABSENT;
 }

 schedule_work(&usb_phy->chg_work);
}
