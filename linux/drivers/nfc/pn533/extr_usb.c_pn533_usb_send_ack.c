
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pn533_usb_phy {TYPE_1__* ack_urb; scalar_t__ ack_buffer; } ;
struct pn533 {struct pn533_usb_phy* phy; } ;
typedef int gfp_t ;
typedef int ack ;
struct TYPE_2__ {int transfer_buffer_length; scalar_t__ transfer_buffer; } ;


 int ENOMEM ;
 scalar_t__ kmemdup (int const*,int,int ) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int pn533_usb_send_ack(struct pn533 *dev, gfp_t flags)
{
 struct pn533_usb_phy *phy = dev->phy;
 static const u8 ack[6] = {0x00, 0x00, 0xff, 0x00, 0xff, 0x00};


 if (!phy->ack_buffer) {
  phy->ack_buffer = kmemdup(ack, sizeof(ack), flags);
  if (!phy->ack_buffer)
   return -ENOMEM;
 }

 phy->ack_urb->transfer_buffer = phy->ack_buffer;
 phy->ack_urb->transfer_buffer_length = sizeof(ack);
 return usb_submit_urb(phy->ack_urb, flags);
}
