
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_hcd {int dummy; } ;
struct fotg210_hcd {int resuming_ports; int lock; scalar_t__* reset_done; int port_c_suspend; TYPE_1__* regs; } ;
struct TYPE_2__ {int port_status; } ;


 int PORT_CSC ;
 int PORT_PEC ;
 int STS_PCD ;
 int fotg210_readl (struct fotg210_hcd*,int *) ;
 struct fotg210_hcd* hcd_to_fotg210 (struct usb_hcd*) ;
 int jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_after_eq (int ,scalar_t__) ;

__attribute__((used)) static int fotg210_hub_status_data(struct usb_hcd *hcd, char *buf)
{
 struct fotg210_hcd *fotg210 = hcd_to_fotg210(hcd);
 u32 temp, status;
 u32 mask;
 int retval = 1;
 unsigned long flags;


 buf[0] = 0;




 status = fotg210->resuming_ports;

 mask = PORT_CSC | PORT_PEC;





 spin_lock_irqsave(&fotg210->lock, flags);

 temp = fotg210_readl(fotg210, &fotg210->regs->port_status);
 if ((temp & mask) != 0 || test_bit(0, &fotg210->port_c_suspend) ||
   (fotg210->reset_done[0] &&
   time_after_eq(jiffies, fotg210->reset_done[0]))) {
  buf[0] |= 1 << 1;
  status = STS_PCD;
 }

 spin_unlock_irqrestore(&fotg210->lock, flags);
 return status ? retval : 0;
}
