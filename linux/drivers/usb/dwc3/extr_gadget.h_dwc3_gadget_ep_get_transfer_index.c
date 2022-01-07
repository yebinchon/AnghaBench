
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_ep {int resource_index; int regs; } ;


 int DWC3_DEPCMD ;
 int DWC3_DEPCMD_GET_RSC_IDX (int ) ;
 int dwc3_readl (int ,int ) ;

__attribute__((used)) static inline void dwc3_gadget_ep_get_transfer_index(struct dwc3_ep *dep)
{
 u32 res_id;

 res_id = dwc3_readl(dep->regs, DWC3_DEPCMD);
 dep->resource_index = DWC3_DEPCMD_GET_RSC_IDX(res_id);
}
