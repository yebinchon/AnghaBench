
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int regs; } ;


 int DWC3_GUSB2PHYACC (int ) ;
 int DWC3_GUSB2PHYACC_BUSY ;
 int ETIMEDOUT ;
 int cpu_relax () ;
 int dwc3_readl (int ,int ) ;

__attribute__((used)) static int dwc3_ulpi_busyloop(struct dwc3 *dwc)
{
 unsigned count = 1000;
 u32 reg;

 while (count--) {
  reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYACC(0));
  if (!(reg & DWC3_GUSB2PHYACC_BUSY))
   return 0;
  cpu_relax();
 }

 return -ETIMEDOUT;
}
