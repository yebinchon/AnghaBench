
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {unsigned long last_event; } ;



void usb_phy_set_event(struct usb_phy *x, unsigned long event)
{
 x->last_event = event;
}
