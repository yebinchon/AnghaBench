
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pn533_usb_phy {TYPE_1__* in_urb; } ;
typedef int gfp_t ;
struct TYPE_2__ {int complete; } ;


 int pn533_recv_ack ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int pn533_submit_urb_for_ack(struct pn533_usb_phy *phy, gfp_t flags)
{
 phy->in_urb->complete = pn533_recv_ack;

 return usb_submit_urb(phy->in_urb, flags);
}
