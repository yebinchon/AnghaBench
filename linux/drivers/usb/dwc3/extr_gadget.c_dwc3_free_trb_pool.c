
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_trb {int dummy; } ;
struct dwc3_ep {scalar_t__ trb_pool_dma; int * trb_pool; struct dwc3* dwc; } ;
struct dwc3 {int sysdev; } ;


 int DWC3_TRB_NUM ;
 int dma_free_coherent (int ,int,int *,scalar_t__) ;

__attribute__((used)) static void dwc3_free_trb_pool(struct dwc3_ep *dep)
{
 struct dwc3 *dwc = dep->dwc;

 dma_free_coherent(dwc->sysdev, sizeof(struct dwc3_trb) * DWC3_TRB_NUM,
   dep->trb_pool, dep->trb_pool_dma);

 dep->trb_pool = ((void*)0);
 dep->trb_pool_dma = 0;
}
