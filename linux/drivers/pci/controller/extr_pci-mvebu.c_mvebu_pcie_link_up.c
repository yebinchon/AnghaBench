
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_pcie_port {int dummy; } ;


 int PCIE_STAT_LINK_DOWN ;
 int PCIE_STAT_OFF ;
 int mvebu_readl (struct mvebu_pcie_port*,int ) ;

__attribute__((used)) static bool mvebu_pcie_link_up(struct mvebu_pcie_port *port)
{
 return !(mvebu_readl(port, PCIE_STAT_OFF) & PCIE_STAT_LINK_DOWN);
}
