
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_hwparams {void* hwparams8; void* hwparams7; void* hwparams6; void* hwparams5; void* hwparams4; void* hwparams3; void* hwparams2; void* hwparams1; void* hwparams0; } ;
struct dwc3 {int regs; struct dwc3_hwparams hwparams; } ;


 int DWC3_GHWPARAMS0 ;
 int DWC3_GHWPARAMS1 ;
 int DWC3_GHWPARAMS2 ;
 int DWC3_GHWPARAMS3 ;
 int DWC3_GHWPARAMS4 ;
 int DWC3_GHWPARAMS5 ;
 int DWC3_GHWPARAMS6 ;
 int DWC3_GHWPARAMS7 ;
 int DWC3_GHWPARAMS8 ;
 void* dwc3_readl (int ,int ) ;

__attribute__((used)) static void dwc3_cache_hwparams(struct dwc3 *dwc)
{
 struct dwc3_hwparams *parms = &dwc->hwparams;

 parms->hwparams0 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS0);
 parms->hwparams1 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS1);
 parms->hwparams2 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS2);
 parms->hwparams3 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS3);
 parms->hwparams4 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS4);
 parms->hwparams5 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS5);
 parms->hwparams6 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS6);
 parms->hwparams7 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS7);
 parms->hwparams8 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS8);
}
