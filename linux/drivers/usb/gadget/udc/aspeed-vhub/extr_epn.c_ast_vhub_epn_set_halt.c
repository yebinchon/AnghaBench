
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;


 int ast_vhub_set_halt_and_wedge (struct usb_ep*,int,int) ;

__attribute__((used)) static int ast_vhub_epn_set_halt(struct usb_ep *u_ep, int value)
{
 return ast_vhub_set_halt_and_wedge(u_ep, value != 0, 0);
}
