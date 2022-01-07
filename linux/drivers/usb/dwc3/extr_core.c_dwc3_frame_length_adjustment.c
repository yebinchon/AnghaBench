
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {scalar_t__ revision; int fladj; int regs; } ;


 int DWC3_GFLADJ ;
 int DWC3_GFLADJ_30MHZ_MASK ;
 int DWC3_GFLADJ_30MHZ_SDBND_SEL ;
 scalar_t__ DWC3_REVISION_250A ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;

__attribute__((used)) static void dwc3_frame_length_adjustment(struct dwc3 *dwc)
{
 u32 reg;
 u32 dft;

 if (dwc->revision < DWC3_REVISION_250A)
  return;

 if (dwc->fladj == 0)
  return;

 reg = dwc3_readl(dwc->regs, DWC3_GFLADJ);
 dft = reg & DWC3_GFLADJ_30MHZ_MASK;
 if (dft != dwc->fladj) {
  reg &= ~DWC3_GFLADJ_30MHZ_MASK;
  reg |= DWC3_GFLADJ_30MHZ_SDBND_SEL | dwc->fladj;
  dwc3_writel(dwc->regs, DWC3_GFLADJ, reg);
 }
}
