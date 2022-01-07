
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct rockchip_pcie {int dummy; } ;
struct rockchip_pcie_ep {int max_regions; int * ob_addr; int ob_region_map; struct rockchip_pcie rockchip; } ;
struct pci_epc {int dev; } ;
typedef int phys_addr_t ;


 int AXI_WRAPPER_MEM_WRITE ;
 int BITS_PER_LONG ;
 int EINVAL ;
 int dev_err (int *,char*) ;
 struct rockchip_pcie_ep* epc_get_drvdata (struct pci_epc*) ;
 int find_first_zero_bit (int *,int) ;
 int rockchip_pcie_prog_ep_ob_atu (struct rockchip_pcie*,int ,int,int ,int ,int ,size_t) ;
 int set_bit (int,int *) ;

__attribute__((used)) static int rockchip_pcie_ep_map_addr(struct pci_epc *epc, u8 fn,
         phys_addr_t addr, u64 pci_addr,
         size_t size)
{
 struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
 struct rockchip_pcie *pcie = &ep->rockchip;
 u32 r;

 r = find_first_zero_bit(&ep->ob_region_map,
    sizeof(ep->ob_region_map) * BITS_PER_LONG);




 if (r >= ep->max_regions - 1) {
  dev_err(&epc->dev, "no free outbound region\n");
  return -EINVAL;
 }

 rockchip_pcie_prog_ep_ob_atu(pcie, fn, r, AXI_WRAPPER_MEM_WRITE, addr,
         pci_addr, size);

 set_bit(r, &ep->ob_region_map);
 ep->ob_addr[r] = addr;

 return 0;
}
