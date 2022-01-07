
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {struct dwc3* private; } ;
struct dwc3 {int lock; int regs; } ;


 int DWC3_DCTL ;
 int DWC3_DCTL_TSTCTRL_MASK ;





 int dwc3_readl (int ,int ) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dwc3_testmode_show(struct seq_file *s, void *unused)
{
 struct dwc3 *dwc = s->private;
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(&dwc->lock, flags);
 reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 reg &= DWC3_DCTL_TSTCTRL_MASK;
 reg >>= 1;
 spin_unlock_irqrestore(&dwc->lock, flags);

 switch (reg) {
 case 0:
  seq_printf(s, "no test\n");
  break;
 case 131:
  seq_printf(s, "test_j\n");
  break;
 case 130:
  seq_printf(s, "test_k\n");
  break;
 case 128:
  seq_printf(s, "test_se0_nak\n");
  break;
 case 129:
  seq_printf(s, "test_packet\n");
  break;
 case 132:
  seq_printf(s, "test_force_enable\n");
  break;
 default:
  seq_printf(s, "UNKNOWN %d\n", reg);
 }

 return 0;
}
