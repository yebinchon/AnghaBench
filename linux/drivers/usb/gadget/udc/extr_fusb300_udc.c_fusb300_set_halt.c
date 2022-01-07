
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;


 int fusb300_set_halt_and_wedge (struct usb_ep*,int,int ) ;

__attribute__((used)) static int fusb300_set_halt(struct usb_ep *_ep, int value)
{
 return fusb300_set_halt_and_wedge(_ep, value, 0);
}
