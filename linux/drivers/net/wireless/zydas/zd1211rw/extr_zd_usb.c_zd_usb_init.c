
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {int submitted_cmds; int intf; } ;
struct usb_interface {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int init_usb_anchor (int *) ;
 int init_usb_interrupt (struct zd_usb*) ;
 int init_usb_rx (struct zd_usb*) ;
 int init_usb_tx (struct zd_usb*) ;
 int memset (struct zd_usb*,int ,int) ;
 int usb_get_intf (struct usb_interface*) ;
 int usb_set_intfdata (int ,struct ieee80211_hw*) ;

void zd_usb_init(struct zd_usb *usb, struct ieee80211_hw *hw,
          struct usb_interface *intf)
{
 memset(usb, 0, sizeof(*usb));
 usb->intf = usb_get_intf(intf);
 usb_set_intfdata(usb->intf, hw);
 init_usb_anchor(&usb->submitted_cmds);
 init_usb_interrupt(usb);
 init_usb_tx(usb);
 init_usb_rx(usb);
}
