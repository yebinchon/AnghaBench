
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* root_hub; } ;
struct usb_hcd {TYPE_2__ self; } ;
struct TYPE_3__ {int dev; } ;


 int dev_err_ratelimited (int *,char*) ;

__attribute__((used)) static int vhci_get_frame_number(struct usb_hcd *hcd)
{
 dev_err_ratelimited(&hcd->self.root_hub->dev, "Not yet implemented\n");
 return 0;
}
