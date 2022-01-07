
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct max3421_hcd {int port_status; scalar_t__ rh_state; int lock; } ;


 int HCD_HW_ACCESSIBLE (struct usb_hcd*) ;
 scalar_t__ MAX3421_RH_SUSPENDED ;
 int PORT_C_MASK ;
 int dev_dbg (int ,char*,int) ;
 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_resume_root_hub (struct usb_hcd*) ;

__attribute__((used)) static int
max3421_hub_status_data(struct usb_hcd *hcd, char *buf)
{
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);
 unsigned long flags;
 int retval = 0;

 spin_lock_irqsave(&max3421_hcd->lock, flags);
 if (!HCD_HW_ACCESSIBLE(hcd))
  goto done;

 *buf = 0;
 if ((max3421_hcd->port_status & PORT_C_MASK) != 0) {
  *buf = (1 << 1);
  dev_dbg(hcd->self.controller,
   "port status 0x%08x has changes\n",
   max3421_hcd->port_status);
  retval = 1;
  if (max3421_hcd->rh_state == MAX3421_RH_SUSPENDED)
   usb_hcd_resume_root_hub(hcd);
 }
done:
 spin_unlock_irqrestore(&max3421_hcd->lock, flags);
 return retval;
}
