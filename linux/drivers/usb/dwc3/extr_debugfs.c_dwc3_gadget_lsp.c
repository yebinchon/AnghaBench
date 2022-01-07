
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {struct dwc3* private; } ;
struct dwc3 {int regs; } ;


 int DWC3_GDBGLSP ;
 int DWC3_GDBGLSPMUX ;
 int DWC3_GDBGLSPMUX_DEVSELECT (int) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int ) ;
 int seq_printf (struct seq_file*,char*,int,int ) ;

__attribute__((used)) static void dwc3_gadget_lsp(struct seq_file *s)
{
 struct dwc3 *dwc = s->private;
 int i;
 u32 reg;

 for (i = 0; i < 16; i++) {
  reg = DWC3_GDBGLSPMUX_DEVSELECT(i);
  dwc3_writel(dwc->regs, DWC3_GDBGLSPMUX, reg);
  reg = dwc3_readl(dwc->regs, DWC3_GDBGLSP);
  seq_printf(s, "GDBGLSP[%d] = 0x%08x\n", i, reg);
 }
}
