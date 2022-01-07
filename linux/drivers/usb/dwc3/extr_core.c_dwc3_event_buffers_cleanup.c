
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_event_buffer {scalar_t__ lpos; } ;
struct dwc3 {int regs; struct dwc3_event_buffer* ev_buf; } ;


 int DWC3_GEVNTADRHI (int ) ;
 int DWC3_GEVNTADRLO (int ) ;
 int DWC3_GEVNTCOUNT (int ) ;
 int DWC3_GEVNTSIZ (int ) ;
 int DWC3_GEVNTSIZ_INTMASK ;
 int DWC3_GEVNTSIZ_SIZE (int ) ;
 int dwc3_writel (int ,int ,int) ;

void dwc3_event_buffers_cleanup(struct dwc3 *dwc)
{
 struct dwc3_event_buffer *evt;

 evt = dwc->ev_buf;

 evt->lpos = 0;

 dwc3_writel(dwc->regs, DWC3_GEVNTADRLO(0), 0);
 dwc3_writel(dwc->regs, DWC3_GEVNTADRHI(0), 0);
 dwc3_writel(dwc->regs, DWC3_GEVNTSIZ(0), DWC3_GEVNTSIZ_INTMASK
   | DWC3_GEVNTSIZ_SIZE(0));
 dwc3_writel(dwc->regs, DWC3_GEVNTCOUNT(0), 0);
}
