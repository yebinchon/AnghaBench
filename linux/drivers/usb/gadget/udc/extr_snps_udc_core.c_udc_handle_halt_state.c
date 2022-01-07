
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct udc_ep {int halted; int num; TYPE_1__* regs; } ;
struct TYPE_2__ {int ctl; } ;


 int AMD_BIT (int ) ;
 int UDC_EPCTL_CNAK ;
 int UDC_EPCTL_S ;
 int UDC_QUEUE_CNAK (struct udc_ep*,int ) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void udc_handle_halt_state(struct udc_ep *ep)
{
 u32 tmp;

 if (ep->halted == 1) {
  tmp = readl(&ep->regs->ctl);

  if (!(tmp & AMD_BIT(UDC_EPCTL_S))) {
   tmp |= AMD_BIT(UDC_EPCTL_CNAK);
   writel(tmp, &ep->regs->ctl);
   ep->halted = 0;
   UDC_QUEUE_CNAK(ep, ep->num);
  }
 }
}
