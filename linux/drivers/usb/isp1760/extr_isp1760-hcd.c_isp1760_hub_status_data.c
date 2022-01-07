
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {int regs; int state; } ;
struct isp1760_hcd {int lock; int reset_done; } ;


 int HC_IS_RUNNING (int ) ;
 int HC_PORTSC1 ;
 int PORT_CSC ;
 int PORT_OWNER ;
 int PORT_RESUME ;
 int STS_PCD ;
 struct isp1760_hcd* hcd_to_priv (struct usb_hcd*) ;
 int jiffies ;
 int reg_read32 (int ,int ) ;
 int reg_write32 (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after_eq (int ,int ) ;

__attribute__((used)) static int isp1760_hub_status_data(struct usb_hcd *hcd, char *buf)
{
 struct isp1760_hcd *priv = hcd_to_priv(hcd);
 u32 temp, status = 0;
 u32 mask;
 int retval = 1;
 unsigned long flags;


 if (!HC_IS_RUNNING(hcd->state))
  return 0;


 buf[0] = 0;
 mask = PORT_CSC;

 spin_lock_irqsave(&priv->lock, flags);
 temp = reg_read32(hcd->regs, HC_PORTSC1);

 if (temp & PORT_OWNER) {
  if (temp & PORT_CSC) {
   temp &= ~PORT_CSC;
   reg_write32(hcd->regs, HC_PORTSC1, temp);
   goto done;
  }
 }
 if ((temp & mask) != 0
   || ((temp & PORT_RESUME) != 0
    && time_after_eq(jiffies,
     priv->reset_done))) {
  buf [0] |= 1 << (0 + 1);
  status = STS_PCD;
 }

done:
 spin_unlock_irqrestore(&priv->lock, flags);
 return status ? retval : 0;
}
