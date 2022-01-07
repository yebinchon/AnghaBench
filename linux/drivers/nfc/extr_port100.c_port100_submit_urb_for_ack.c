
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port100 {TYPE_1__* in_urb; } ;
typedef int gfp_t ;
struct TYPE_2__ {int complete; } ;


 int port100_recv_ack ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int port100_submit_urb_for_ack(struct port100 *dev, gfp_t flags)
{
 dev->in_urb->complete = port100_recv_ack;

 return usb_submit_urb(dev->in_urb, flags);
}
