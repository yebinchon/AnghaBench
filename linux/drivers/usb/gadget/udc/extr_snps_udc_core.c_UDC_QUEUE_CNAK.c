
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udc_ep {int naking; int dev; TYPE_1__* regs; } ;
struct TYPE_2__ {int ctl; } ;


 int AMD_BIT (int ) ;
 int DBG (int ,char*,unsigned int) ;
 int UDC_EPCTL_NAK ;
 int cnak_pending ;
 int readl (int *) ;

__attribute__((used)) static void UDC_QUEUE_CNAK(struct udc_ep *ep, unsigned num)
{
 if (readl(&ep->regs->ctl) & AMD_BIT(UDC_EPCTL_NAK)) {
  DBG(ep->dev, "NAK could not be cleared for ep%d\n", num);
  cnak_pending |= 1 << (num);
  ep->naking = 1;
 } else
  cnak_pending = cnak_pending & (~(1 << (num)));
}
