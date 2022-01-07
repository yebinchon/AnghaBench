
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct dw_pcie_ep {size_t num_ob_windows; scalar_t__* outbound_addr; } ;
typedef scalar_t__ phys_addr_t ;


 int EINVAL ;

__attribute__((used)) static int dw_pcie_find_index(struct dw_pcie_ep *ep, phys_addr_t addr,
         u32 *atu_index)
{
 u32 index;

 for (index = 0; index < ep->num_ob_windows; index++) {
  if (ep->outbound_addr[index] != addr)
   continue;
  *atu_index = index;
  return 0;
 }

 return -EINVAL;
}
