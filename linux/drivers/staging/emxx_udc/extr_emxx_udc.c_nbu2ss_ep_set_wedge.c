
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;


 int nbu2ss_ep_set_halt (struct usb_ep*,int) ;

__attribute__((used)) static int nbu2ss_ep_set_wedge(struct usb_ep *_ep)
{
 return nbu2ss_ep_set_halt(_ep, 1);
}
