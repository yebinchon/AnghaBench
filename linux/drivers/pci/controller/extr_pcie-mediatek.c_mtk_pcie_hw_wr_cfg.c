
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_pcie_port {scalar_t__ base; } ;


 int APP_CFG_REQ ;
 int CFG_HEADER_DW0 (int ,int ) ;
 int CFG_HEADER_DW1 (int,int) ;
 int CFG_HEADER_DW2 (int,int ,int ,int) ;
 int CFG_WRRD_TYPE_0 ;
 int CFG_WR_FMT ;
 scalar_t__ PCIE_APP_TLP_REQ ;
 scalar_t__ PCIE_CFG_HEADER0 ;
 scalar_t__ PCIE_CFG_HEADER1 ;
 scalar_t__ PCIE_CFG_HEADER2 ;
 scalar_t__ PCIE_CFG_WDATA ;
 int PCI_FUNC (int) ;
 int PCI_SLOT (int) ;
 int mtk_pcie_check_cfg_cpld (struct mtk_pcie_port*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mtk_pcie_hw_wr_cfg(struct mtk_pcie_port *port, u32 bus, u32 devfn,
         int where, int size, u32 val)
{

 writel(CFG_HEADER_DW0(CFG_WRRD_TYPE_0, CFG_WR_FMT),
        port->base + PCIE_CFG_HEADER0);
 writel(CFG_HEADER_DW1(where, size), port->base + PCIE_CFG_HEADER1);
 writel(CFG_HEADER_DW2(where, PCI_FUNC(devfn), PCI_SLOT(devfn), bus),
        port->base + PCIE_CFG_HEADER2);


 val = val << 8 * (where & 3);
 writel(val, port->base + PCIE_CFG_WDATA);


 val = readl(port->base + PCIE_APP_TLP_REQ);
 val |= APP_CFG_REQ;
 writel(val, port->base + PCIE_APP_TLP_REQ);


 return mtk_pcie_check_cfg_cpld(port);
}
