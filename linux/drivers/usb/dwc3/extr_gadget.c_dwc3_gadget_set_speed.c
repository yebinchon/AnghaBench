
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_gadget {int dummy; } ;
struct dwc3 {scalar_t__ revision; int lock; int regs; int dev; int dis_metastability_quirk; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;


 int DWC3_DCFG ;
 int DWC3_DCFG_FULLSPEED ;
 int DWC3_DCFG_HIGHSPEED ;
 int DWC3_DCFG_LOWSPEED ;
 int DWC3_DCFG_SPEED_MASK ;
 int DWC3_DCFG_SUPERSPEED ;
 int DWC3_DCFG_SUPERSPEED_PLUS ;
 scalar_t__ DWC3_REVISION_220A ;
 int DWC3_REVISION_IS_DWC31 ;





 int dev_err (int ,char*,int) ;
 int dwc3_is_usb31 (struct dwc3*) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int ) ;
 struct dwc3* gadget_to_dwc (struct usb_gadget*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dwc3_gadget_set_speed(struct usb_gadget *g,
      enum usb_device_speed speed)
{
 struct dwc3 *dwc = gadget_to_dwc(g);
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(&dwc->lock, flags);
 reg = dwc3_readl(dwc->regs, DWC3_DCFG);
 reg &= ~(DWC3_DCFG_SPEED_MASK);
 if (dwc->revision < DWC3_REVISION_220A &&
     !dwc->dis_metastability_quirk) {
  reg |= DWC3_DCFG_SUPERSPEED;
 } else {
  switch (speed) {
  case 130:
   reg |= DWC3_DCFG_LOWSPEED;
   break;
  case 132:
   reg |= DWC3_DCFG_FULLSPEED;
   break;
  case 131:
   reg |= DWC3_DCFG_HIGHSPEED;
   break;
  case 129:
   reg |= DWC3_DCFG_SUPERSPEED;
   break;
  case 128:
   if (dwc3_is_usb31(dwc))
    reg |= DWC3_DCFG_SUPERSPEED_PLUS;
   else
    reg |= DWC3_DCFG_SUPERSPEED;
   break;
  default:
   dev_err(dwc->dev, "invalid speed (%d)\n", speed);

   if (dwc->revision & DWC3_REVISION_IS_DWC31)
    reg |= DWC3_DCFG_SUPERSPEED_PLUS;
   else
    reg |= DWC3_DCFG_SUPERSPEED;
  }
 }
 dwc3_writel(dwc->regs, DWC3_DCFG, reg);

 spin_unlock_irqrestore(&dwc->lock, flags);
}
