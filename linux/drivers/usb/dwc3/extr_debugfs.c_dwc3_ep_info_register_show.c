
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct seq_file {struct dwc3_ep* private; } ;
struct dwc3_ep {int number; struct dwc3* dwc; } ;
struct dwc3 {int lock; int regs; } ;


 int DWC3_GDBGEPINFO0 ;
 int DWC3_GDBGEPINFO1 ;
 int DWC3_GDBGLSPMUX ;
 int DWC3_GDBGLSPMUX_EPSELECT (int ) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;
 int seq_printf (struct seq_file*,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dwc3_ep_info_register_show(struct seq_file *s, void *unused)
{
 struct dwc3_ep *dep = s->private;
 struct dwc3 *dwc = dep->dwc;
 unsigned long flags;
 u64 ep_info;
 u32 lower_32_bits;
 u32 upper_32_bits;
 u32 reg;

 spin_lock_irqsave(&dwc->lock, flags);
 reg = DWC3_GDBGLSPMUX_EPSELECT(dep->number);
 dwc3_writel(dwc->regs, DWC3_GDBGLSPMUX, reg);

 lower_32_bits = dwc3_readl(dwc->regs, DWC3_GDBGEPINFO0);
 upper_32_bits = dwc3_readl(dwc->regs, DWC3_GDBGEPINFO1);

 ep_info = ((u64)upper_32_bits << 32) | lower_32_bits;
 seq_printf(s, "0x%016llx\n", ep_info);
 spin_unlock_irqrestore(&dwc->lock, flags);

 return 0;
}
