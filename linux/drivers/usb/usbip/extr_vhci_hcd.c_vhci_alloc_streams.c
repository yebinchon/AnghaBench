
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_host_endpoint {int dummy; } ;
struct TYPE_4__ {TYPE_1__* root_hub; } ;
struct usb_hcd {TYPE_2__ self; } ;
struct usb_device {int dummy; } ;
typedef int gfp_t ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*) ;

__attribute__((used)) static int vhci_alloc_streams(struct usb_hcd *hcd, struct usb_device *udev,
 struct usb_host_endpoint **eps, unsigned int num_eps,
 unsigned int num_streams, gfp_t mem_flags)
{
 dev_dbg(&hcd->self.root_hub->dev, "vhci_alloc_streams not implemented\n");
 return 0;
}
