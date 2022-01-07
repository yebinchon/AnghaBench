
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct cdns_pcie_ep {int pcie; } ;


 int EINVAL ;
 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int cdns_pcie_ep_assert_intx (struct cdns_pcie_ep*,int ,int ,int) ;
 int cdns_pcie_ep_fn_readw (int *,int ,int ) ;
 int mdelay (int) ;

__attribute__((used)) static int cdns_pcie_ep_send_legacy_irq(struct cdns_pcie_ep *ep, u8 fn, u8 intx)
{
 u16 cmd;

 cmd = cdns_pcie_ep_fn_readw(&ep->pcie, fn, PCI_COMMAND);
 if (cmd & PCI_COMMAND_INTX_DISABLE)
  return -EINVAL;

 cdns_pcie_ep_assert_intx(ep, fn, intx, 1);




 mdelay(1);
 cdns_pcie_ep_assert_intx(ep, fn, intx, 0);
 return 0;
}
