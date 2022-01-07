
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int hwparams1; } ;
struct dwc3 {scalar_t__ revision; int link_state; int u1u2; int speed; int regs; TYPE_1__ hwparams; } ;
typedef enum dwc3_link_state { ____Placeholder_dwc3_link_state } dwc3_link_state ;


 int DWC3_DCTL ;
 int DWC3_DCTL_ACCEPTU1ENA ;
 int DWC3_DCTL_ACCEPTU2ENA ;
 int DWC3_DCTL_INITU1ENA ;
 int DWC3_DCTL_INITU2ENA ;
 unsigned int DWC3_GHWPARAMS1_EN_PWROPT (int ) ;
 unsigned int DWC3_GHWPARAMS1_EN_PWROPT_HIB ;
 unsigned int DWC3_LINK_STATE_MASK ;

 int DWC3_LINK_STATE_U0 ;



 scalar_t__ DWC3_REVISION_183A ;
 scalar_t__ DWC3_REVISION_250A ;
 int USB_SPEED_SUPER ;
 int dwc3_readl (int ,int ) ;
 int dwc3_resume_gadget (struct dwc3*) ;
 int dwc3_suspend_gadget (struct dwc3*) ;
 int dwc3_writel (int ,int ,int) ;

__attribute__((used)) static void dwc3_gadget_linksts_change_interrupt(struct dwc3 *dwc,
  unsigned int evtinfo)
{
 enum dwc3_link_state next = evtinfo & DWC3_LINK_STATE_MASK;
 unsigned int pwropt;
 pwropt = DWC3_GHWPARAMS1_EN_PWROPT(dwc->hwparams.hwparams1);
 if ((dwc->revision < DWC3_REVISION_250A) &&
   (pwropt != DWC3_GHWPARAMS1_EN_PWROPT_HIB)) {
  if ((dwc->link_state == 128) &&
    (next == 131)) {
   return;
  }
 }
 if (dwc->revision < DWC3_REVISION_183A) {
  if (next == DWC3_LINK_STATE_U0) {
   u32 u1u2;
   u32 reg;

   switch (dwc->link_state) {
   case 130:
   case 129:
    reg = dwc3_readl(dwc->regs, DWC3_DCTL);
    u1u2 = reg & (DWC3_DCTL_INITU2ENA
      | DWC3_DCTL_ACCEPTU2ENA
      | DWC3_DCTL_INITU1ENA
      | DWC3_DCTL_ACCEPTU1ENA);

    if (!dwc->u1u2)
     dwc->u1u2 = reg & u1u2;

    reg &= ~u1u2;

    dwc3_writel(dwc->regs, DWC3_DCTL, reg);
    break;
   default:

    break;
   }
  }
 }

 switch (next) {
 case 130:
  if (dwc->speed == USB_SPEED_SUPER)
   dwc3_suspend_gadget(dwc);
  break;
 case 129:
 case 128:
  dwc3_suspend_gadget(dwc);
  break;
 case 131:
  dwc3_resume_gadget(dwc);
  break;
 default:

  break;
 }

 dwc->link_state = next;
}
