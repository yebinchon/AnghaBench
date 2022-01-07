
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rockchip_pcie_ep {int rockchip; } ;


 int EINVAL ;
 int PCI_COMMAND_INTX_DISABLE ;
 scalar_t__ ROCKCHIP_PCIE_EP_CMD_STATUS ;
 scalar_t__ ROCKCHIP_PCIE_EP_FUNC_BASE (int ) ;
 int mdelay (int) ;
 int rockchip_pcie_ep_assert_intx (struct rockchip_pcie_ep*,int ,int ,int) ;
 int rockchip_pcie_read (int *,scalar_t__) ;

__attribute__((used)) static int rockchip_pcie_ep_send_legacy_irq(struct rockchip_pcie_ep *ep, u8 fn,
         u8 intx)
{
 u16 cmd;

 cmd = rockchip_pcie_read(&ep->rockchip,
     ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
     ROCKCHIP_PCIE_EP_CMD_STATUS);

 if (cmd & PCI_COMMAND_INTX_DISABLE)
  return -EINVAL;






 rockchip_pcie_ep_assert_intx(ep, fn, intx, 1);
 mdelay(1);
 rockchip_pcie_ep_assert_intx(ep, fn, intx, 0);
 return 0;
}
