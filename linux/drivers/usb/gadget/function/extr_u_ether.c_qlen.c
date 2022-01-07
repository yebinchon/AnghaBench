
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {scalar_t__ speed; } ;


 unsigned int DEFAULT_QLEN ;
 scalar_t__ USB_SPEED_HIGH ;
 scalar_t__ USB_SPEED_SUPER ;
 scalar_t__ gadget_is_dualspeed (struct usb_gadget*) ;

__attribute__((used)) static inline int qlen(struct usb_gadget *gadget, unsigned qmult)
{
 if (gadget_is_dualspeed(gadget) && (gadget->speed == USB_SPEED_HIGH ||
         gadget->speed == USB_SPEED_SUPER))
  return qmult * DEFAULT_QLEN;
 else
  return DEFAULT_QLEN;
}
