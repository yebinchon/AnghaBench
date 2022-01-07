
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union dwc3_event {int raw; } ;
typedef int u32 ;
struct dwc3_event_buffer {int count; int flags; int lpos; int length; scalar_t__ cache; struct dwc3* dwc; } ;
struct dwc3 {int imod_interval; int regs; } ;
typedef int irqreturn_t ;


 int DWC3_DEV_IMOD (int ) ;
 int DWC3_EVENT_PENDING ;
 int DWC3_GEVNTCOUNT (int ) ;
 int DWC3_GEVNTCOUNT_EHB ;
 int DWC3_GEVNTSIZ (int ) ;
 int DWC3_GEVNTSIZ_INTMASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dwc3_process_event_entry (struct dwc3*,union dwc3_event*) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;

__attribute__((used)) static irqreturn_t dwc3_process_event_buf(struct dwc3_event_buffer *evt)
{
 struct dwc3 *dwc = evt->dwc;
 irqreturn_t ret = IRQ_NONE;
 int left;
 u32 reg;

 left = evt->count;

 if (!(evt->flags & DWC3_EVENT_PENDING))
  return IRQ_NONE;

 while (left > 0) {
  union dwc3_event event;

  event.raw = *(u32 *) (evt->cache + evt->lpos);

  dwc3_process_event_entry(dwc, &event);
  evt->lpos = (evt->lpos + 4) % evt->length;
  left -= 4;
 }

 evt->count = 0;
 evt->flags &= ~DWC3_EVENT_PENDING;
 ret = IRQ_HANDLED;


 reg = dwc3_readl(dwc->regs, DWC3_GEVNTSIZ(0));
 reg &= ~DWC3_GEVNTSIZ_INTMASK;
 dwc3_writel(dwc->regs, DWC3_GEVNTSIZ(0), reg);

 if (dwc->imod_interval) {
  dwc3_writel(dwc->regs, DWC3_GEVNTCOUNT(0), DWC3_GEVNTCOUNT_EHB);
  dwc3_writel(dwc->regs, DWC3_DEV_IMOD(0), dwc->imod_interval);
 }

 return ret;
}
