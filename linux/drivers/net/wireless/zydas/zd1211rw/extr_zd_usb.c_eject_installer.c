
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct usb_interface {struct usb_host_interface* altsetting; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_device {int dev; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int usb_bulk_msg (struct usb_device*,int ,unsigned char*,int,int *,int) ;
 scalar_t__ usb_endpoint_dir_out (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_xfer_bulk (struct usb_endpoint_descriptor*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int usb_sndbulkpipe (struct usb_device*,int ) ;

__attribute__((used)) static int eject_installer(struct usb_interface *intf)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 struct usb_host_interface *iface_desc = &intf->altsetting[0];
 struct usb_endpoint_descriptor *endpoint;
 unsigned char *cmd;
 u8 bulk_out_ep;
 int r;

 if (iface_desc->desc.bNumEndpoints < 2)
  return -ENODEV;


 for (r = 1; r >= 0; r--) {
  endpoint = &iface_desc->endpoint[r].desc;
  if (usb_endpoint_dir_out(endpoint) &&
      usb_endpoint_xfer_bulk(endpoint)) {
   bulk_out_ep = endpoint->bEndpointAddress;
   break;
  }
 }
 if (r == -1) {
  dev_err(&udev->dev,
   "zd1211rw: Could not find bulk out endpoint\n");
  return -ENODEV;
 }

 cmd = kzalloc(31, GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENODEV;


 cmd[0] = 0x55;
 cmd[1] = 0x53;
 cmd[2] = 0x42;
 cmd[3] = 0x43;
 cmd[14] = 6;

 cmd[15] = 0x1b;
 cmd[19] = 0x2;

 dev_info(&udev->dev, "Ejecting virtual installer media...\n");
 r = usb_bulk_msg(udev, usb_sndbulkpipe(udev, bulk_out_ep),
  cmd, 31, ((void*)0), 2000);
 kfree(cmd);
 if (r)
  return r;




 usb_set_intfdata(intf, ((void*)0));
 return 0;
}
