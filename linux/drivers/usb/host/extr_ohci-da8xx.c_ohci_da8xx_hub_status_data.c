
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;


 int dev_dbg (int ,char*) ;
 int ocic_mask ;
 int orig_ohci_hub_status_data (struct usb_hcd*,char*) ;

__attribute__((used)) static int ohci_da8xx_hub_status_data(struct usb_hcd *hcd, char *buf)
{
 int length = orig_ohci_hub_status_data(hcd, buf);


 if (ocic_mask & (1 << 1)) {
  dev_dbg(hcd->self.controller, "over-current indicator change "
   "on port 1\n");

  if (!length)
   length = 1;

  buf[0] |= 1 << 1;
 }
 return length;
}
