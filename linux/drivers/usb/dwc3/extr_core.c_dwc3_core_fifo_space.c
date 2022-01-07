
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dwc3_ep {int number; struct dwc3* dwc; } ;
struct dwc3 {int regs; } ;


 int DWC3_GDBGFIFOSPACE ;
 int DWC3_GDBGFIFOSPACE_NUM (int ) ;
 int DWC3_GDBGFIFOSPACE_SPACE_AVAILABLE (int ) ;
 int DWC3_GDBGFIFOSPACE_TYPE (int ) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;

u32 dwc3_core_fifo_space(struct dwc3_ep *dep, u8 type)
{
 struct dwc3 *dwc = dep->dwc;
 u32 reg;

 dwc3_writel(dwc->regs, DWC3_GDBGFIFOSPACE,
   DWC3_GDBGFIFOSPACE_NUM(dep->number) |
   DWC3_GDBGFIFOSPACE_TYPE(type));

 reg = dwc3_readl(dwc->regs, DWC3_GDBGFIFOSPACE);

 return DWC3_GDBGFIFOSPACE_SPACE_AVAILABLE(reg);
}
