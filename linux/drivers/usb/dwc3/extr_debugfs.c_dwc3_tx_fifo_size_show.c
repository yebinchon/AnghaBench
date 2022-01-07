
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct seq_file {struct dwc3_ep* private; } ;
struct dwc3_ep {struct dwc3* dwc; } ;
struct TYPE_2__ {int hwparams0; } ;
struct dwc3 {int lock; TYPE_1__ hwparams; } ;


 int DWC3_MDWIDTH (int ) ;
 int DWC3_TXFIFO ;
 int dwc3_core_fifo_space (struct dwc3_ep*,int ) ;
 int seq_printf (struct seq_file*,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dwc3_tx_fifo_size_show(struct seq_file *s, void *unused)
{
 struct dwc3_ep *dep = s->private;
 struct dwc3 *dwc = dep->dwc;
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&dwc->lock, flags);
 val = dwc3_core_fifo_space(dep, DWC3_TXFIFO);


 val *= DWC3_MDWIDTH(dwc->hwparams.hwparams0);
 val >>= 3;
 seq_printf(s, "%u\n", val);
 spin_unlock_irqrestore(&dwc->lock, flags);

 return 0;
}
