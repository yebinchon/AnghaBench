
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {struct dwc3* private; } ;
struct dwc3 {int lock; int regs; } ;


 int DWC3_GCTL ;
 int DWC3_GCTL_PRTCAP (int ) ;



 int dwc3_readl (int ,int ) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dwc3_mode_show(struct seq_file *s, void *unused)
{
 struct dwc3 *dwc = s->private;
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(&dwc->lock, flags);
 reg = dwc3_readl(dwc->regs, DWC3_GCTL);
 spin_unlock_irqrestore(&dwc->lock, flags);

 switch (DWC3_GCTL_PRTCAP(reg)) {
 case 129:
  seq_printf(s, "host\n");
  break;
 case 130:
  seq_printf(s, "device\n");
  break;
 case 128:
  seq_printf(s, "otg\n");
  break;
 default:
  seq_printf(s, "UNKNOWN %08x\n", DWC3_GCTL_PRTCAP(reg));
 }

 return 0;
}
