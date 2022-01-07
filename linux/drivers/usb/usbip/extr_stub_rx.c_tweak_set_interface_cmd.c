
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ctrlrequest {int wIndex; int wValue; } ;
struct urb {TYPE_1__* dev; scalar_t__ setup_packet; } ;
typedef int __u16 ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int ,int ,int) ;
 int dev_info (int *,char*,int ,int ) ;
 int le16_to_cpu (int ) ;
 int usb_set_interface (TYPE_1__*,int ,int ) ;
 int usbip_dbg_stub_rx (char*,int ,int ) ;

__attribute__((used)) static int tweak_set_interface_cmd(struct urb *urb)
{
 struct usb_ctrlrequest *req;
 __u16 alternate;
 __u16 interface;
 int ret;

 req = (struct usb_ctrlrequest *) urb->setup_packet;
 alternate = le16_to_cpu(req->wValue);
 interface = le16_to_cpu(req->wIndex);

 usbip_dbg_stub_rx("set_interface: inf %u alt %u\n",
     interface, alternate);

 ret = usb_set_interface(urb->dev, interface, alternate);
 if (ret < 0)
  dev_err(&urb->dev->dev,
   "usb_set_interface error: inf %u alt %u ret %d\n",
   interface, alternate, ret);
 else
  dev_info(&urb->dev->dev,
   "usb_set_interface done: inf %u alt %u\n",
   interface, alternate);

 return ret;
}
