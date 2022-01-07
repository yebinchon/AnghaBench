
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int revision; int regs; void* version_type; } ;


 int DWC3_GSNPSID ;
 int DWC3_GSNPSID_MASK ;
 int DWC3_REVISION_IS_DWC31 ;
 int DWC3_VER_NUMBER ;
 int DWC3_VER_TYPE ;
 void* dwc3_readl (int ,int ) ;

__attribute__((used)) static bool dwc3_core_is_valid(struct dwc3 *dwc)
{
 u32 reg;

 reg = dwc3_readl(dwc->regs, DWC3_GSNPSID);


 if ((reg & DWC3_GSNPSID_MASK) == 0x55330000) {

  dwc->revision = reg;
 } else if ((reg & DWC3_GSNPSID_MASK) == 0x33310000) {

  dwc->revision = dwc3_readl(dwc->regs, DWC3_VER_NUMBER);
  dwc->revision |= DWC3_REVISION_IS_DWC31;
  dwc->version_type = dwc3_readl(dwc->regs, DWC3_VER_TYPE);
 } else {
  return 0;
 }

 return 1;
}
