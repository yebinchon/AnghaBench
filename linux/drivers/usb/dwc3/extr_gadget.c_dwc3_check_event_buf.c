
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_event_buffer {int flags; scalar_t__ buf; scalar_t__ cache; scalar_t__ lpos; scalar_t__ length; int count; struct dwc3* dwc; } ;
struct dwc3 {int pending_events; int regs; int irq_gadget; int dev; } ;
typedef int irqreturn_t ;


 int DWC3_EVENT_PENDING ;
 int DWC3_GEVNTCOUNT (int ) ;
 int DWC3_GEVNTCOUNT_MASK ;
 int DWC3_GEVNTSIZ (int ) ;
 int DWC3_GEVNTSIZ_INTMASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int disable_irq_nosync (int ) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int ) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 int min (int ,scalar_t__) ;
 int pm_runtime_get (int ) ;
 scalar_t__ pm_runtime_suspended (int ) ;

__attribute__((used)) static irqreturn_t dwc3_check_event_buf(struct dwc3_event_buffer *evt)
{
 struct dwc3 *dwc = evt->dwc;
 u32 amount;
 u32 count;
 u32 reg;

 if (pm_runtime_suspended(dwc->dev)) {
  pm_runtime_get(dwc->dev);
  disable_irq_nosync(dwc->irq_gadget);
  dwc->pending_events = 1;
  return IRQ_HANDLED;
 }







 if (evt->flags & DWC3_EVENT_PENDING)
  return IRQ_HANDLED;

 count = dwc3_readl(dwc->regs, DWC3_GEVNTCOUNT(0));
 count &= DWC3_GEVNTCOUNT_MASK;
 if (!count)
  return IRQ_NONE;

 evt->count = count;
 evt->flags |= DWC3_EVENT_PENDING;


 reg = dwc3_readl(dwc->regs, DWC3_GEVNTSIZ(0));
 reg |= DWC3_GEVNTSIZ_INTMASK;
 dwc3_writel(dwc->regs, DWC3_GEVNTSIZ(0), reg);

 amount = min(count, evt->length - evt->lpos);
 memcpy(evt->cache + evt->lpos, evt->buf + evt->lpos, amount);

 if (amount < count)
  memcpy(evt->cache, evt->buf, count - amount);

 dwc3_writel(dwc->regs, DWC3_GEVNTCOUNT(0), count);

 return IRQ_WAKE_THREAD;
}
