
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int claimed; int * driver_data; } ;



void usb_ep_autoconfig_release(struct usb_ep *ep)
{
 ep->claimed = 0;
 ep->driver_data = ((void*)0);
}
