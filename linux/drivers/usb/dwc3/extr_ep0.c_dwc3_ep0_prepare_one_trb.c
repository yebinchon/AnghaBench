
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct dwc3_trb {int ctrl; void* size; int bph; int bpl; } ;
struct dwc3_ep {size_t trb_enqueue; struct dwc3* dwc; } ;
struct dwc3 {struct dwc3_trb* ep0_trb; } ;
typedef int dma_addr_t ;


 int DWC3_TRB_CTRL_CHN ;
 int DWC3_TRB_CTRL_HWO ;
 int DWC3_TRB_CTRL_IOC ;
 int DWC3_TRB_CTRL_ISP_IMI ;
 int DWC3_TRB_CTRL_LST ;
 int lower_32_bits (int ) ;
 int trace_dwc3_prepare_trb (struct dwc3_ep*,struct dwc3_trb*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void dwc3_ep0_prepare_one_trb(struct dwc3_ep *dep,
  dma_addr_t buf_dma, u32 len, u32 type, bool chain)
{
 struct dwc3_trb *trb;
 struct dwc3 *dwc;

 dwc = dep->dwc;
 trb = &dwc->ep0_trb[dep->trb_enqueue];

 if (chain)
  dep->trb_enqueue++;

 trb->bpl = lower_32_bits(buf_dma);
 trb->bph = upper_32_bits(buf_dma);
 trb->size = len;
 trb->ctrl = type;

 trb->ctrl |= (DWC3_TRB_CTRL_HWO
   | DWC3_TRB_CTRL_ISP_IMI);

 if (chain)
  trb->ctrl |= DWC3_TRB_CTRL_CHN;
 else
  trb->ctrl |= (DWC3_TRB_CTRL_IOC
    | DWC3_TRB_CTRL_LST);

 trace_dwc3_prepare_trb(dep, trb);
}
