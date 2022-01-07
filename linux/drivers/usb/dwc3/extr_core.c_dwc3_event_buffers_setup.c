
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_event_buffer {int length; int dma; scalar_t__ lpos; } ;
struct dwc3 {int regs; struct dwc3_event_buffer* ev_buf; } ;


 int DWC3_GEVNTADRHI (int ) ;
 int DWC3_GEVNTADRLO (int ) ;
 int DWC3_GEVNTCOUNT (int ) ;
 int DWC3_GEVNTSIZ (int ) ;
 int DWC3_GEVNTSIZ_SIZE (int ) ;
 int dwc3_writel (int ,int ,int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

int dwc3_event_buffers_setup(struct dwc3 *dwc)
{
 struct dwc3_event_buffer *evt;

 evt = dwc->ev_buf;
 evt->lpos = 0;
 dwc3_writel(dwc->regs, DWC3_GEVNTADRLO(0),
   lower_32_bits(evt->dma));
 dwc3_writel(dwc->regs, DWC3_GEVNTADRHI(0),
   upper_32_bits(evt->dma));
 dwc3_writel(dwc->regs, DWC3_GEVNTSIZ(0),
   DWC3_GEVNTSIZ_SIZE(evt->length));
 dwc3_writel(dwc->regs, DWC3_GEVNTCOUNT(0), 0);

 return 0;
}
