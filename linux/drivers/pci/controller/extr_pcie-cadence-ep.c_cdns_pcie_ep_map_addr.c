
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct pci_epc {int dev; } ;
struct cdns_pcie {int dummy; } ;
struct cdns_pcie_ep {int max_regions; int * ob_addr; int ob_region_map; struct cdns_pcie pcie; } ;
typedef int phys_addr_t ;


 int BITS_PER_LONG ;
 int EINVAL ;
 int cdns_pcie_set_outbound_region (struct cdns_pcie*,int ,int,int,int ,int ,size_t) ;
 int dev_err (int *,char*) ;
 struct cdns_pcie_ep* epc_get_drvdata (struct pci_epc*) ;
 int find_first_zero_bit (int *,int) ;
 int set_bit (int,int *) ;

__attribute__((used)) static int cdns_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, phys_addr_t addr,
     u64 pci_addr, size_t size)
{
 struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
 struct cdns_pcie *pcie = &ep->pcie;
 u32 r;

 r = find_first_zero_bit(&ep->ob_region_map,
    sizeof(ep->ob_region_map) * BITS_PER_LONG);
 if (r >= ep->max_regions - 1) {
  dev_err(&epc->dev, "no free outbound region\n");
  return -EINVAL;
 }

 cdns_pcie_set_outbound_region(pcie, fn, r, 0, addr, pci_addr, size);

 set_bit(r, &ep->ob_region_map);
 ep->ob_addr[r] = addr;

 return 0;
}
