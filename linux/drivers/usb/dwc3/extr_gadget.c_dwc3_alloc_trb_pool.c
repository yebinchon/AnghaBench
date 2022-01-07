
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_trb {int dummy; } ;
struct dwc3_ep {int name; struct dwc3* dwc; scalar_t__ trb_pool; int trb_pool_dma; } ;
struct dwc3 {int dev; int sysdev; } ;


 int DWC3_TRB_NUM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,int ) ;
 scalar_t__ dma_alloc_coherent (int ,int,int *,int ) ;

__attribute__((used)) static int dwc3_alloc_trb_pool(struct dwc3_ep *dep)
{
 struct dwc3 *dwc = dep->dwc;

 if (dep->trb_pool)
  return 0;

 dep->trb_pool = dma_alloc_coherent(dwc->sysdev,
   sizeof(struct dwc3_trb) * DWC3_TRB_NUM,
   &dep->trb_pool_dma, GFP_KERNEL);
 if (!dep->trb_pool) {
  dev_err(dep->dwc->dev, "failed to allocate trb pool for %s\n",
    dep->name);
  return -ENOMEM;
 }

 return 0;
}
