
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct dwc3_ep* private; } ;
struct TYPE_2__ {int desc; } ;
struct dwc3_ep {int flags; TYPE_1__ endpoint; struct dwc3* dwc; } ;
struct dwc3 {int lock; } ;


 int DWC3_EP_ENABLED ;




 int seq_printf (struct seq_file*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_endpoint_type (int ) ;

__attribute__((used)) static int dwc3_transfer_type_show(struct seq_file *s, void *unused)
{
 struct dwc3_ep *dep = s->private;
 struct dwc3 *dwc = dep->dwc;
 unsigned long flags;

 spin_lock_irqsave(&dwc->lock, flags);
 if (!(dep->flags & DWC3_EP_ENABLED) ||
   !dep->endpoint.desc) {
  seq_printf(s, "--\n");
  goto out;
 }

 switch (usb_endpoint_type(dep->endpoint.desc)) {
 case 130:
  seq_printf(s, "control\n");
  break;
 case 128:
  seq_printf(s, "isochronous\n");
  break;
 case 131:
  seq_printf(s, "bulk\n");
  break;
 case 129:
  seq_printf(s, "interrupt\n");
  break;
 default:
  seq_printf(s, "--\n");
 }

out:
 spin_unlock_irqrestore(&dwc->lock, flags);

 return 0;
}
