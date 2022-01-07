
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {struct dwc3* private; } ;
struct dwc3 {int lock; int regs; } ;


 int DWC3_GSTS ;
 unsigned int DWC3_GSTS_CURMOD (int ) ;


 int dwc3_gadget_lsp (struct seq_file*) ;
 int dwc3_host_lsp (struct seq_file*) ;
 int dwc3_readl (int ,int ) ;
 int seq_puts (struct seq_file*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dwc3_lsp_show(struct seq_file *s, void *unused)
{
 struct dwc3 *dwc = s->private;
 unsigned int current_mode;
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(&dwc->lock, flags);
 reg = dwc3_readl(dwc->regs, DWC3_GSTS);
 current_mode = DWC3_GSTS_CURMOD(reg);

 switch (current_mode) {
 case 128:
  dwc3_host_lsp(s);
  break;
 case 129:
  dwc3_gadget_lsp(s);
  break;
 default:
  seq_puts(s, "Mode is unknown, no LSP register printed\n");
  break;
 }
 spin_unlock_irqrestore(&dwc->lock, flags);

 return 0;
}
